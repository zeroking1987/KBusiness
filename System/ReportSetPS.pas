unit ReportSetPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BasePS, dxSkinsCore, dxSkinsdxBarPainter,
  dxSkinsDefaultPainters, DB, ADODB, dxBar, cxClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, ExtCtrls,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, dxtree, dxdbtree, CategoryButtons,
  CustomizeDlg, cxContainer, cxTextEdit, cxDBEdit, StdCtrls, Menus, cxButtons,
  dxSkinOffice2010Blue;

type
  TReportSetFM = class(TBaseFM)
    tvReport: TdxDBTreeView;
    qyHedAutoId: TAutoIncField;
    strngfldHedFMId: TStringField;
    strngfldHedFMName: TStringField;
    strngfldHedReportName: TStringField;
    strngfldHedReportFile: TStringField;
    qyHedReportKind: TSmallintField;
    strngfldHedTag: TStringField;
    strngfldHedParentTag: TStringField;
    qyTrv: TADOQuery;
    strngfldTrvTag: TStringField;
    strngfldTrvParentTag: TStringField;
    strngfldTrvFMName: TStringField;
    strngfldTrvFMId: TStringField;
    dsTrv: TDataSource;
    pnlTitle: TPanel;
    LabTitle: TLabel;
    pnl1: TPanel;
    pnl2: TPanel;
    Lablbl1: TLabel;
    cxFMName: TcxDBTextEdit;
    Lablbl2: TLabel;
    Lablbl3: TLabel;
    cxReportName: TcxDBTextEdit;
    cxFileName: TcxDBTextEdit;
    cxgrd: TcxGrid;
    cxgrdtbv: TcxGridDBTableView;
    cxgrdtbvFMName: TcxGridDBColumn;
    cxgrdtbvReportName: TcxGridDBColumn;
    cxgrdtbvReportFile: TcxGridDBColumn;
    cxgrdlvl: TcxGridLevel;
    pnl3: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure tvReportCustomDraw(Sender: TObject; TreeNode: TTreeNode; AFont: TFont; var AColor, ABkColor: TColor);
    procedure FormDestroy(Sender: TObject);
    procedure tvReportClick(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btAddLClick(Sender: TObject);
    procedure btDelLClick(Sender: TObject);
    procedure btDelClick(Sender: TObject);
    procedure qyHedAfterInsert(DataSet: TDataSet);
    procedure btExitClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btExportClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxgrdtbvCustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
  private
    sTag, sParentTag, sPFMId, sPFMName: string;
    {Private declarations}
  public
    {Public declarations}
  end;

var
  ReportSetFM: TReportSetFM;

implementation

uses MainPS, PublicPS, DataPS;
{$R *.dfm}

procedure TReportSetFM.btAddClick(Sender: TObject);
begin
  try
    if (sParentTag = '00') or (sParentTag = '') then
    begin
      ShowBox('请选择正确窗体！');
      Exit;
    end;
    inherited;
    cxFMName.Properties.ReadOnly := True;
    qyHed.Append;
    qyHed.FieldByName('Tag').AsString := sTag;
    qyHed.FieldByName('ParentTag').AsString := sParentTag;
    qyHed.FieldByName('FMId').AsString := sPFMId;
    qyHed.FieldByName('FMName').AsString := sPFMName;
  except
  end;
end;

procedure TReportSetFM.btAddLClick(Sender: TObject);
begin
  try
    qyHed.Append;
    qyHed.FieldByName('Tag').AsString := sTag;
    qyHed.FieldByName('ParentTag').AsString := sParentTag;
    qyHed.FieldByName('FMId').AsString := sPFMId;
    qyHed.FieldByName('FMName').AsString := sPFMName;
    inherited;
  except
  end;
end;

procedure TReportSetFM.btCancelClick(Sender: TObject);
begin
  try
    qyHed.CancelBatch();
    inherited;
  except
  end;
end;

procedure TReportSetFM.btDelClick(Sender: TObject);
begin
  try
    if ShowDlg('确定要删除该条记录吗？') then
    begin
      qyHed.Delete;
      qyHed.UpdateBatch();
      ShowBox('删除成功！');
      inherited;
    end;
  except
    ShowBox('删除失败！');
  end;
end;

procedure TReportSetFM.btDelLClick(Sender: TObject);
begin
  try
    if ShowDlg('确定要删除该条记录吗？') then
      qyHed.Delete;
    inherited;
  except
    ShowBox('删除失败！');
  end;
end;

procedure TReportSetFM.btEditClick(Sender: TObject);
begin
  inherited;
  cxFMName.Properties.ReadOnly := True;
  qyHed.Edit;
end;

procedure TReportSetFM.btExitClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TReportSetFM.btExportClick(Sender: TObject);
var
  i, Tag: Integer;
begin
  try
    Tag := qyHed.FieldByName('Tag').AsInteger;
    for i := MainFM.ComponentCount - 1 downto 0 do
    begin
      if (MainFM.Components[i] is TdxBarButton) and (TdxBarButton(MainFM.Components[i]).Tag = Tag) then
      begin
        TdxBarButton(MainFM.Components[i]).Click;
        break;
      end;
    end;
    PrintReport(trim(cxFileName.Text) + '.fr3', 1, 1, dsHed);
  except
  end;
end;

procedure TReportSetFM.btFindClick(Sender: TObject);
var
  i, Tag: Integer;
begin
  try
    Tag := qyHed.FieldByName('Tag').AsInteger;
    for i := MainFM.ComponentCount - 1 downto 0 do
    begin
      if (MainFM.Components[i] is TdxBarButton) and (TdxBarButton(MainFM.Components[i]).Tag = Tag) then //打开对应窗体，获取数据集
      begin
        TdxBarButton(MainFM.Components[i]).Click;
        break;
      end;
    end;
    PrintReport(trim(cxFileName.Text) + '.fr3', 3, 1, dsHed);
  except
  end;
end;

procedure TReportSetFM.btSaveClick(Sender: TObject);
begin
  try
    qyHed.UpdateBatch();
    ShowBox('保存成功！');
    TextReadOnly(Self, True);
    inherited;
  except
    on E: Exception do
    begin
      if Pos('该列不允许空值', E.Message) > 0 then
        ShowBox('请将内容填写完整！')
      else if Pos('插入重复键', E.Message) > 0 then
        ShowBox('插入重复值，请重新填写！');
    end
  end;
end;

procedure TReportSetFM.cxgrdtbvCustomDrawIndicatorCell(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
  var ADone: Boolean);
begin
  inherited;
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TReportSetFM.FormCreate(Sender: TObject);
begin
  sFMId := 'ReportSetFM';
  sFMName := Self.Caption;
  sTableId := 'ReportSetTB';
  inherited;
  sTag := '';
  sParentTag := '';
  qyTrv.Open;
  qyHed.Open;
  tvReport.DisplayField := 'Tag;FMName';
end;

procedure TReportSetFM.FormDestroy(Sender: TObject);
begin
  inherited;
  ReportSetFM := nil;
end;

procedure TReportSetFM.FormShow(Sender: TObject);
begin
  inherited;
  tvReport.FullExpand;
  cxgrdtbv.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
end;

procedure TReportSetFM.qyHedAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyHed.FieldByName('ReportKind').AsInteger := 1;
end;

procedure TReportSetFM.tvReportClick(Sender: TObject);
begin
  try
    sTag := qyTrv.FieldByName('Tag').AsString;
    sParentTag := qyTrv.FieldByName('ParentTag').AsString;
    sPFMId := qyTrv.FieldByName('FMId').AsString;
    sPFMName := qyTrv.FieldByName('FMName').AsString;
    if tvReport.Selected.IsFirstNode then
      qyHed.Filter := '' // 如果选择的是根节点就不过滤
    else
    begin
      qyHed.Filter := 'Tag like ''' + sTag + '%''';
      qyHed.Filtered := True;
    end;
  except
  end;
end;

procedure TReportSetFM.tvReportCustomDraw(Sender: TObject; TreeNode: TTreeNode; AFont: TFont;
  var AColor, ABkColor: TColor);
begin
  inherited;
  if (TreeNode.Index mod 2 = 0) then
    AColor := $00F14552
  else
    AColor := $005158E6;
end;

end.
