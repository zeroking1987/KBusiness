unit gesturetracker;

{ 简体中文:
  GestureTracker是一个在屏幕上跟踪鼠标手势的实现代码，Delphi/C++ Builder 2010开始支持
  手势，可以方便的设置相关的属性和方法，但是却未提供对终端用户可视化的组件或方法，
  本模块就是试图弥补这一问题的一个简单的解决方法。
  要使用手势跟踪，只需要简单的将本单元加入你的Delphi/C++ Builder项目即可。你可以通过
  全局变量GlobalGestureTracker来调整相关参数。
  本单元作者王胜波(swish)，来处中国，如有问题，请发送邮件到chinawsb@sina.com
  本单元可以用于任何用途，如果你想用它拿来做原子弹，那也可以:) 当然前提是你有那本事。
  你可以随意修改本代码以用于你自己的目的，但希望你在发现问题或有什么新的创意时，能够
  告知我一声，另外，可能的情况下，保留相应的版权信息（反正我也没有精神头去查你是不是
  用了我的代码）。
  2009.9.2  修正了在Windows7下不能正确绘制轨迹的问题（临时性解决方案)
  2009.8.30 修正了Application.MainFormOnTask为True时，任务栏显示错误
  English:
  GestureTracker is a path track helper implementation,From Delphi/C++ Builder 2010,
  The gesture support added.Use the property and method,it make support gesture is
  very easy.But no simple way to draw the gesture path in the screen,this unit is
  just used to do this.
  To use this unit,just add this unit to your project,and you can use the global
  variant GlobalGestureTracker to adjust the path parameters.
  This unit author is swish,from china.If have any problem,send mail to chinawsb@sina.com.
  This unit can be used and distribute by any method,If you want use it to make a
  atom bomb,YES,you can:)
  You can modify the source when you needed,I hope you can share your mind to me.
  The last,if possible,keep the copy right information.(In fact,I'll never search
  your code to find this).
  2009.9.2  Fixed bug under Windows 7(Template solution only)
  2009.8.30 Fixed when Application.MainFormOnTask=true,The task bar display error
}
interface

uses
  Classes,
  Controls,
  Messages,
  Graphics,
  Forms,
  AppEvnts;

type
  // TGestureTracker
  TGestureTracker = class(TComponent)
  private
    FTrackWidth: Cardinal; // 绘制轨迹时的画笔宽度(Pen Width on draw the path)
    FForm, FLastActive: TForm; // 轨迹绘制窗口(The form to draw path)
    FEvents: TApplicationEvents; // 应用程序事件对象，用来加入Application.OnIdle事件响应(Application Events used to Handle Application.OnIdle)
    FLastWndProc: TWndMethod; // 重定向的原窗口过程，用来截获并处理一些消息(The origin form WindowProc,used to process some message)
    FTrackColor: TColor; // 轨迹颜色(Track pen color)
    FHided: Boolean; // 内部记录当前处于隐藏状态标志(Hide flags,Internal use only)
    FActive: Boolean; // 是否激活轨迹绘制标志，默认为True(Track flags,Default is true)
    FXRes: Double;
    FYRes: Double;
    procedure SetTrackColor(const Value: TColor); // 属性TrackColor的写函数(The TrackColor property write method
    procedure WndProc(var Msg: TMessage); // 重定向后的窗口(The new form WindowProc)
    procedure DoAppIdle(Sender: TObject; var Done: Boolean); // 系统空闲响应函数，我们在此处理绘制操作(Application.OnIdle handler,we draw the path in here)
    procedure Hide; // 内部函数，用来隐藏当前窗体(Internal function to hide the form)
    procedure AdjustSize; // 内部函数，用来调整窗体大小（如分辨率发生变更）(Internal function to adjust form size when display changed)
    procedure DrawTracks;
    procedure CalcRes;
  published
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    // 轨迹颜色，默认红色O
    property TrackColor
      : TColor read FTrackColor write SetTrackColor default clRed;
    // 轨迹宽度，默认5px
    property TrackWidth: Cardinal read FTrackWidth write FTrackWidth default 5;
    property Active: Boolean read FActive write FActive; // 是否激活
  end;

var
  GlobalGestureTracker: TGestureTracker; // 全局变量

implementation

uses
  Types,
  Windows, Sysutils,
  Gestures;

type
  THackGestureEngine = class(TGestureEngine)
  end;

  THackFormVisible = class(TControl)
  end;

  { TGestureTracker }
procedure TGestureTracker.AdjustSize;
begin
  FForm.SetBounds(Screen.DesktopLeft, Screen.DesktopTop, Screen.DesktopWidth,
    Screen.DesktopWidth);
end;

// 计算分辨率
procedure TGestureTracker.CalcRes;
begin
  if FXRes < 0 then
  begin
    if (Win32MajorVersion >= 6) then
    begin // 未找到合适的方法计算，直接取固定值
      FXRes := 26.5;
      FYRes := 26.5;
    end
    else
    begin
      FXRes := 1;
      FYRes := 1;
    end;
  end;
end;

constructor TGestureTracker.Create(AOwner: TComponent);
begin
  inherited;
  FTrackColor := clRed;
  FTrackWidth := 5;
  FForm := TForm.Create(Self);
  FForm.TransparentColor := True;
  FForm.TransparentColorValue := clBlack;
  FForm.BorderStyle := bsNone;
  FForm.FormStyle := fsStayOnTop;
  FForm.DoubleBuffered := True;
  FForm.Color := clBlack;
  FLastWndProc := FForm.WindowProc;
  FForm.WindowProc := WndProc;
  AdjustSize;
  Hide;
  FEvents := TApplicationEvents.Create(Self);
  FEvents.OnIdle := DoAppIdle;
  FHided := True;
  FForm.Canvas.Brush.Color := FForm.TransparentColorValue;
  FForm.Canvas.FillRect(FForm.ClientRect);
  ShowWindow(FForm.Handle, SW_SHOWNOACTIVATE);
  FActive := True;
  FLastActive := nil;
  FXRes := -1;
  FYRes := -1;
end;

destructor TGestureTracker.Destroy;
begin
  inherited;
end;

procedure TGestureTracker.DoAppIdle(Sender: TObject; var Done: Boolean);
begin
  DrawTracks;
end;

procedure TGestureTracker.DrawTracks;
var
  ACtrl: TControl;
  AEngine: THackGestureEngine;
  APos, AClientPos: TPoint;
  AOffset: TSize;
  I: Integer;
begin
  if (Win32MajorVersion >= 6) and (FLastActive <> Screen.ActiveForm) then
  // 修正Windows7初始不刷新的问题
  begin
    FLastActive := Screen.ActiveForm;
    ShowWindow(FForm.Handle, SW_HIDE);
    ShowWindow(FForm.Handle, SW_SHOWNOACTIVATE);
  end;
  if Active then
  begin
    ACtrl := GetCaptureControl();
    AEngine := nil;
    if Assigned(ACtrl) then
      AEngine := THackGestureEngine(ACtrl.Touch.GestureEngine);
    if Assigned(AEngine) and AEngine.Active then
    begin
      if (AEngine.PointCount > 0) and (not AEngine.TimerExpired) then
      begin
        FHided := False;
        CalcRes;
        APos := ACtrl.ClientToScreen(Point(0, 0));
        AOffset.cx := APos.X;
        AOffset.cy := APos.Y;
        // Draw the points
        APos := AEngine.Points[0];
        AClientPos := ACtrl.ScreenToClient(AEngine.InitialPoint);
        APos.X := AClientPos.X;
        APos.Y := AClientPos.Y;
        Inc(APos.X, AOffset.cx);
        Inc(APos.Y, AOffset.cy);
        FForm.Canvas.MoveTo(APos.X, APos.Y);
        FForm.Canvas.Pen.Color := FTrackColor;
        FForm.Canvas.Pen.Width := FTrackWidth;
        for I := 1 to AEngine.PointCount - 1 do
        begin
          APos := AEngine.Points[I];
          APos.X := Trunc(APos.X / FXRes);
          APos.Y := Trunc(APos.Y / FYRes);
          Inc(APos.X, AOffset.cx);
          Inc(APos.Y, AOffset.cy);
          FForm.Canvas.LineTo(APos.X, APos.Y);
        end;
      end
      else
        Hide;
    end
    else
      Hide;
  end;
end;

procedure TGestureTracker.Hide;
begin
  if not FHided then
  begin
    FForm.Canvas.Brush.Color := FForm.TransparentColorValue;
    FForm.Canvas.FillRect(FForm.ClientRect);
    FHided := True;
  end;
end;

procedure TGestureTracker.SetTrackColor(const Value: TColor);
begin
  if FTrackColor <> Value then
  begin
    FTrackColor := Value;
    if FTrackColor = clBlack then
      FForm.Color := clWhite
    else
      FForm.Color := clBlack;
    FForm.TransparentColorValue := FForm.Color;
  end;
end;

procedure TGestureTracker.WndProc(var Msg: TMessage);
begin
  if Msg.Msg = WM_NCHITTEST then
  begin
    Msg.Result := HTTRANSPARENT;
    PostMessage(FForm.Handle, WM_APP + 2, 1, 0)
  end
  else if Msg.Msg = (WM_APP + 1) then
    AdjustSize
  else if Msg.Msg = (WM_APP + 2) then
  begin
    // DrawTracks;
  end
  else
  begin
    FLastWndProc(Msg);
    if Msg.Msg = WM_DISPLAYCHANGE then
      PostMessage(FForm.Handle, WM_APP + 1, 0, 0)
    else if Msg.Msg = WM_WINDOWPOSCHANGED then // 保持窗口在最前，以保证能够覆盖绘制轨迹，
      PostMessage(FForm.Handle, WM_APP + 2, 0, 0);
  end;
end;

initialization

GlobalGestureTracker := TGestureTracker.Create(nil);

finalization

GlobalGestureTracker.Free

end.
