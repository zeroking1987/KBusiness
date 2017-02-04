unit ProviderPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Base1PS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, ADODB, dxBar,
  cxClasses, ExtCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  cxPC, cxContainer, cxTextEdit, cxDBEdit, cxMemo, cxDropDownEdit, cxMaskEdit,
  cxButtonEdit, Menus, cxButtons, ComCtrls, dxtree, dxdbtree,
  cxGridCustomPopupMenu, cxGridPopupMenu, frxClass, frxDBSet, cxSplitter,
  cxPCdxBarPopupMenu, dxSkinOffice2010Blue, cxLabel, cxCheckBox,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, cxNavigator,
  dxBarBuiltInMenu;

type
  TProviderFM = class(TBase1FM)
    pnlEdit: TPanel;
    cxPgc1: TcxPageControl;
    cxtbsht1: TcxTabSheet;
    pnl2: TPanel;
    cxgrdtbvPrvCode: TcxGridDBColumn;
    cxgrdtbvPrvName: TcxGridDBColumn;
    cxgrdtbvPrincipal: TcxGridDBColumn;
    cxgrdtbvLinkMan: TcxGridDBColumn;
    cxgrdtbvMobile: TcxGridDBColumn;
    cxgrdtbvTel: TcxGridDBColumn;
    cxgrdtbvFax: TcxGridDBColumn;
    cxgrdtbvBank: TcxGridDBColumn;
    cxgrdtbvBankAcc: TcxGridDBColumn;
    cxgrdtbvE_Mail: TcxGridDBColumn;
    cxgrdtbvWWW: TcxGridDBColumn;
    cxgrdtbvPrvAddress: TcxGridDBColumn;
    cxgrdtbvRemark: TcxGridDBColumn;
    lbl19: TLabel;
    cxPrv: TcxTextEdit;
    frxdtHed: TfrxDBDataset;
    Panel1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxdbPrvId: TcxDBTextEdit;
    cxdbEdt1: TcxDBTextEdit;
    cxEdtPrvName: TcxDBTextEdit;
    cxdbEdt4: TcxDBTextEdit;
    cxdbEdt5: TcxDBTextEdit;
    cxdbEdt6: TcxDBTextEdit;
    cxdbEdt7: TcxDBTextEdit;
    cxdbEdt8: TcxDBTextEdit;
    cxdbEdt9: TcxDBTextEdit;
    cbbBank: TcxDBComboBox;
    cxdbEdt10: TcxDBTextEdit;
    cxdbEdt11: TcxDBTextEdit;
    cxdbEdt12: TcxDBTextEdit;
    cxdbMo1: TcxDBMemo;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    cxDBTextEdit1: TcxDBTextEdit;
    cxlbl2: TcxLabel;
    lbl20: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxgrdtbvColumn3: TcxGridDBColumn;
    cxDBCheckBox1: TcxDBCheckBox;
    qyHedAutoId: TAutoIncField;
    qyHedbSelect: TBooleanField;
    qyHedPrvId: TStringField;
    qyHedPrvCode: TStringField;
    qyHedPrvName: TStringField;
    qyHedPrvShort: TStringField;
    qyHedPrvAddress: TStringField;
    qyHedPrincipal: TStringField;
    qyHedLinkMan: TStringField;
    qyHedMobile: TStringField;
    qyHedTel: TStringField;
    qyHedFax: TStringField;
    qyHedCreditMoney: TFMTBCDField;
    qyHedTaxRate: TFMTBCDField;
    qyHedBank: TStringField;
    qyHedBankAcc: TStringField;
    qyHedPosCode: TStringField;
    qyHedTaxCode: TStringField;
    qyHedTrafficMode: TStringField;
    qyHedE_Mail: TStringField;
    qyHedWWW: TStringField;
    qyHedbStop: TBooleanField;
    qyHedRemark: TStringField;
    qyHedMakeManName: TStringField;
    qyHedMakeDate: TDateTimeField;
    qyHedEditManName: TStringField;
    qyHedEditDate: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure cxPrvPropertiesChange(Sender: TObject);
    procedure cxgrdtbvDblClick(Sender: TObject);
    procedure btDelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProviderFM: TProviderFM;

implementation

uses DataPS, PublicPS, PrvKindQPS, AreaQPS, IMCode;
{$R *.dfm}

procedure TProviderFM.btAddClick(Sender: TObject);
begin
  try
    inherited;
    pnlEdit.Visible := true;
    TextReadOnly(Self, False);
    cxgrd.Enabled := False;
    cxdbPrvId.Properties.ReadOnly := true;
    qyHed.Append;
    cxEdtPrvName.SetFocus;
    qyHed.FieldByName('PrvId').AsString := GetFiveNo('ProviderTB', 'PrvId');
    qyHed.FieldByName('PrvCode').AsString := GetFiveNo('ProviderTB', 'PrvId');
  except
  end;
end;

procedure TProviderFM.btCancelClick(Sender: TObject);
begin
  try
    inherited;
    pnlEdit.Visible := False;
    TextReadOnly(Self, true);
    cxgrd.Enabled := true;
    qyHed.CancelBatch();
  except
  end;
end;

procedure TProviderFM.btDelClick(Sender: TObject);
begin
  inherited;
  try
    if qyHed.IsEmpty then Exit;
    if (bRight) and (bDelAll = false) and (qyHed.FieldByName('MakeManName').AsString <> LoginName) then
    begin
      ShowWarn('你只能删除自己做的数据!');
      exit;
    end;
    with DataFM.qyTemp do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add(' exec PrObjectDelCheck ' + Quotedstr(qyHed.FieldByName('CustId').AsString));
      Open;
    end;
    if DataFM.qyTemp.FieldByName('CheckResult').AsString <> '' then
    begin
      if ShowDlg(DataFM.qyTemp.FieldByName('CheckResult').AsString + '  有发生该单位数据,确定要删除吗') then
      begin
        qyHed.Delete;
        qyHed.UpdateBatch();
      end;
    end
    else
    begin
      if ShowDlg('确定要删除该条记录？') then
      begin
        qyHed.Delete;
        qyHed.UpdateBatch();
      end;
    end;
  except
    on E: Exception do
    begin
      ShowWarn(E.Message);
    end;
  end;
end;

procedure TProviderFM.btEditClick(Sender: TObject);
begin
  try
    inherited;
    pnlEdit.Visible := true;
    TextReadOnly(Self, False);
    cxdbPrvId.Properties.ReadOnly := true;
    qyHed.Edit;
  except
  end;
end;

procedure TProviderFM.btSaveClick(Sender: TObject);
begin
  try
    if cxEdtPrvName.text = '' then
    begin
      ShowHintMsg(cxEdtPrvName, '请填写供应商名称！');
      Exit;
    end;
    with DataFM.qyTemp do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add('select PrvId from ProviderTB where  IsNull(PrvName,'''')=' + QuotedStr(Trim(cxEdtPrvName.Text)) + '  and PrvId<>' + QuotedStr(Trim(cxdbPrvId.Text)));
      Open;
      if not eof then
      begin
        ShowWarn('该供应商名称已经存在,编号为：' + FieldByName('PrvId').AsString);
        Exit
      end;
    end;
    qyHed.Filter := '';
    qyHed.Filtered := False;
    qyHed.UpdateBatch();
    ShowBox('保存成功！');
    TextReadOnly(Self, true);
    cxgrd.Enabled := true;
    inherited;
  except
    on E: Exception do
    begin
      if (pos('该列不允许空值', E.Message) > 0) or (pos('不能将值', E.Message) > 0) then
        ShowBox('有内容为必填项')
      else if pos('插入重复键', E.Message) > 0 then
        ShowBox('插入重复值，请重新填写！');
    end
  end;
end;

procedure TProviderFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  pnlEdit.Visible := not (pnlEdit.Visible);
end;

procedure TProviderFM.cxPrvPropertiesChange(Sender: TObject);
begin
  try
    inherited;
    with qyHed do
    begin
      if Active then Close;
      SQL.Clear;
      sql.Add('select * from ProviderTB where 1=1');
      sql.Add(' and (dbo.fnGetPY(PrvName) like ''%' + trim(cxPrv.Text) + '%'' or PrvCode like ''%' + trim(cxPrv.Text) + '%'' or PrvName like ''%' + trim(cxPrv.Text) + '%'')');
      if not bFindAll then
        SQL.Add('and MakeManName=' + QuotedStr(LoginName));
      Open;
    end;
  except
  end;
end;

procedure TProviderFM.dxBarButton1Click(Sender: TObject);
begin
  inherited;
  CxExport(cxgrd, cxlabTitle.Caption);
end;

procedure TProviderFM.dxBarButton2Click(Sender: TObject);
begin
  inherited;
  ImportFromExcel('供应商资料', DataFM.DlgOpen1);
  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('select * from ProviderTB ');
    Open;
  end;
end;

procedure TProviderFM.FormCreate(Sender: TObject);
begin
  sFMId := 'ProviderFM';
  sFMName := Self.Caption;
  sTableId := 'ProviderTB';
  inherited;
  InitCbb('select BankName from BankTB', cbbBank);
  qyHed.Open;
end;

procedure TProviderFM.FormDestroy(Sender: TObject);
begin
  inherited;
  ProviderFM := nil;
end;

end.

