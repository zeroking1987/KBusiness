unit SBasePS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsdxBarPainter, dxSkinsDefaultPainters, dxBar, cxClasses,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxMaskEdit,
  cxDropDownEdit, cxTextEdit, StdCtrls, ExtCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomTableView, StrUtils,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, ComCtrls, dxtree, dxdbtree, ADODB,
  cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Menus, cxButtons,
  dxSkinOffice2010Blue, cxLabel, cxNavigator, dxSkinDevExpressStyle,
  dxSkinSpringTime, dxSkinValentine, cxGridCustomPopupMenu, cxGridPopupMenu,
  dxSkinOffice2013LightGray, dxSkinOffice2016Colorful, dxSkinOffice2016Dark;

type
  TSBaseFM = class(TForm)
    PupBpm: TdxBarPopupMenu;
    dxbrmngrBarManage: TdxBarManager;
    dxbrBarMang: TdxBar;
    btAllSelect: TdxBarLargeButton;
    btUnSelect: TdxBarLargeButton;
    btExit: TdxBarLargeButton;
    btOk: TdxBarLargeButton;
    btLeft: TdxBarLargeButton;
    btRight: TdxBarLargeButton;
    btFirst: TdxBarLargeButton;
    btLast: TdxBarLargeButton;
    btFind: TdxBarLargeButton;
    pnlFind: TPanel;
    cxEdtValue: TcxTextEdit;
    tv: TdxDBTreeView;
    cxgrd: TcxGrid;
    cxgrdtbv: TcxGridDBTableView;
    cxgrdlev: TcxGridLevel;
    qyHed: TADOQuery;
    dsHed: TDataSource;
    qyFind: TADOQuery;
    dsFind: TDataSource;
    btTemp: TdxBarLargeButton;
    cxlbl1: TcxLabel;
    btFilter: TdxBarLargeButton;
    pmLayout: TPopupMenu;
    NCustomGrd: TMenuItem;
    NSaveGrd: TMenuItem;
    NDelGrd: TMenuItem;
    cxgrdpmn1: TcxGridPopupMenu;
    procedure btExitClick(Sender: TObject);
    procedure btFirstClick(Sender: TObject);
    procedure btLeftClick(Sender: TObject);
    procedure btRightClick(Sender: TObject);
    procedure btLastClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tvCustomDraw(Sender: TObject; TreeNode: TTreeNode; AFont: TFont; var AColor,
      ABkColor: TColor);
    procedure btOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxgrdtbvCustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure NCustomGrdClick(Sender: TObject);
    procedure NDelGrdClick(Sender: TObject);
    procedure NSaveGrdClick(Sender: TObject);
  private
    { Private declarations }
  public
    sWhere, sId, sName, sAllId, sAllName, sFieldName, sValue: string;
    iSelectKind: Integer;
    bHasSelect: Boolean;
    { Public declarations }
  end;

var
  SBaseFM: TSBaseFM;

implementation

uses PublicPS, DataPS;
{$R *.dfm}

procedure TSBaseFM.btExitClick(Sender: TObject);
begin
  sId := '';
  sName := '';
  sAllId := '';
  sAllName := '';
  bHasSelect := False;
  Close;
end;

procedure TSBaseFM.btFirstClick(Sender: TObject);
begin
  if qyFind.Active then
  begin
    qyFind.First;
    btLeft.Enabled := false;
    btRight.Enabled := true;
    btLast.Enabled := true;
  end;
end;

procedure TSBaseFM.btLastClick(Sender: TObject);
begin
  if qyFind.Active then
  begin
    qyFind.Last;
    btRight.Enabled := false;
    btLeft.Enabled := true;
    btFirst.Enabled := true;
  end;
end;

procedure TSBaseFM.btLeftClick(Sender: TObject);
begin
  if qyFind.Active then
  begin
    qyFind.Prior;
    if qyFind.Bof then
    begin
      btLeft.Enabled := false;
      btRight.Enabled := true;
      btLast.Enabled := true;
    end
    else
    begin
      btRight.Enabled := true;
    end;
  end;
end;

procedure TSBaseFM.btOkClick(Sender: TObject);
begin
  bHasSelect := True;
end;

procedure TSBaseFM.btRightClick(Sender: TObject);
begin
  if qyFind.Active then
  begin
    qyFind.Next;
    if qyFind.Eof then
    begin
      btRight.Enabled := false;
      btLeft.Enabled := true;
      btFirst.Enabled := true;
    end
    else
    begin
      btLeft.Enabled := true;
    end;
  end;
end;

procedure TSBaseFM.cxgrdtbvCustomDrawIndicatorCell(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
  var ADone: Boolean);
begin
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TSBaseFM.FormCreate(Sender: TObject);
begin
  sId := '';
  sName := '';
  sAllId := '';
  sAllName := '';
  iSelectKind := 1; //1表示多选，2表示单选
  bHasSelect := False;
  GetGrd(Self, cxgrdtbv);
end;

procedure TSBaseFM.FormShow(Sender: TObject);
begin
  if iSelectKind = 2 then
  begin
    Self.Caption := Self.Caption + '(单选)';
    btAllSelect.Enabled := False;
  end
  else
  begin
    Self.Caption := Self.Caption + '(可多选)';
    btAllSelect.Enabled := true;
  end;
   //网格空值显示水印
  cxgrdtbv.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
end;

procedure TSBaseFM.NCustomGrdClick(Sender: TObject);
begin
  CustomGrd(cxgrd);
end;

procedure TSBaseFM.NDelGrdClick(Sender: TObject);
begin
  DelGrd(Self, cxgrdtbv);
end;

procedure TSBaseFM.NSaveGrdClick(Sender: TObject);
begin
  SaveGrd(Self, cxgrdtbv);
end;

procedure TSBaseFM.tvCustomDraw(Sender: TObject; TreeNode: TTreeNode; AFont: TFont; var AColor,
  ABkColor: TColor);
begin
  try
    if (TreeNode.Index mod 2 = 0) then
      AColor := $00F14552
    else
      AColor := $005158E6;
  except
  end;
end;

end.
