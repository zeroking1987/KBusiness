unit DataBackPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxPC,
  ExtCtrls, cxContainer, cxEdit, cxLabel, Menus, StdCtrls,
  cxButtons, cxMaskEdit, cxButtonEdit, cxTextEdit, ADODB, ComCtrls, Comobj,
  cxPCdxBarPopupMenu, cxGroupBox, dxGDIPlusClasses, dxSkinOffice2010Blue,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine;

type
  TDataBackFM = class(TForm)
    pnl1: TPanel;
    DlgSave1: TSaveDialog;
    Cmd: TADOCommand;
    labTitle: TLabel;
    Panel1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    Image1: TImage;
    cxBaseName: TcxTextEdit;
    cxbtPathName: TcxButtonEdit;
    btnOk: TcxButton;
    cxButton2: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxbtPathNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnOkClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);

  private
    {Private declarations}
  public
    {Public declarations}
    sFMId: string; //窗体编号
    sFMName: string; //窗体名称
  end;

var
  DataBackFM: TDataBackFM;

implementation

uses DataPS, PublicPS, MainPS;
{$R *.dfm}

procedure TDataBackFM.cxbtPathNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  DlgSave1.InitialDir := ExtractFilePath(Application.ExeName) + '\' + 'DataBase';
  DlgSave1.FileName := trim(cxBaseName.Text) + '_' + FormatDateTime('YYYY-MM-DD', Date) + '.bak';
  if DlgSave1.Execute then
    cxbtPathName.Text := DlgSave1.FileName;
end;

procedure TDataBackFM.btnOkClick(Sender: TObject);
begin
  if cxBaseName.Text = '' then
  begin
    ShowBox('数据库名称不能为空！');
    Exit;
  end;
  if cxbtPathName.Text = '' then
  begin
    ShowBox('路径名称不能为空！');
    Exit;
  end;
  try
    Screen.Cursor := crHourGlass;
    Application.ProcessMessages;
    btnOk.Enabled := false;
    Cmd.CommandText := 'BackUp DataBase ' + trim(cxBaseName.Text) + ' to disk =' + QuotedStr(trim(cxbtPathName.Text));
    Cmd.Execute;
    ShowBox('备份完成！');
    btnOk.Enabled := true;
    Screen.Cursor := crDefault;
  except
    on E: Exception do
    begin
      if Pos('sysdatabase', E.Message) > 0 then
        ShowBox('文件名不正确')
      else
        ShowBox(e.Message);
      Screen.Cursor := crDefault;
      btnOk.Enabled := true;
    end;
  end;
end;

procedure TDataBackFM.cxButton2Click(Sender: TObject);
begin
  bCanClose := true;
  self.Close;
end;

procedure TDataBackFM.FormClose(Sender: TObject; var Action: TCloseAction);
var
  iPNo: Integer;
begin
  if not bCanClose then Exit;
  for iPNo := MainFM.cxPgcMain.PageCount - 1 downto 0 do
  begin
    if MainFM.cxPgcMain.Pages[iPNo].Hint = sFMId then
    begin
      MainFM.cxPgcMain.Pages[iPNo].Free;
      break;
    end;
  end;
end;

procedure TDataBackFM.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  try
    if (btnOk.Enabled = false) then
    begin
      if ShowDlg('备份还未完成，要强行退出吗？') then
        CanClose := true;
    end;
  except
  end;
end;

procedure TDataBackFM.FormCreate(Sender: TObject);
begin
  sFMId := 'DataBackFM';
  sFMName := Self.Caption;
  try
    with DataFM.qyTemp do
    begin
      if Active then Close;
      sql.Clear;
      sql.Add('select dbName=db_Name()');
      Open;
      cxBaseName.Text := Fields[0].AsString;
    end;
  finally
    DataFM.qyTemp.Close;
  end;
end;

procedure TDataBackFM.FormDestroy(Sender: TObject);
begin
  DataBackFM := nil;
end;

end.
