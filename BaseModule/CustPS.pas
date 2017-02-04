unit CustPS;

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
  cxPCdxBarPopupMenu, dxSkinOffice2010Blue, cxLabel, cxHyperLinkEdit, cxCheckBox,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, cxNavigator,
  dxBarBuiltInMenu;

type
  TCustFM = class(TBase1FM)
    pnlEdit: TPanel;
    cxPgc1: TcxPageControl;
    cxtbsht1: TcxTabSheet;
    lbl1: TLabel;
    cxCustId: TcxDBTextEdit;
    lbl2: TLabel;
    cxdbEdt1: TcxDBTextEdit;
    lbl3: TLabel;
    cxEdtCustName: TcxDBTextEdit;
    lbl5: TLabel;
    cxdbEdt4: TcxDBTextEdit;
    lbl6: TLabel;
    cxdbEdt5: TcxDBTextEdit;
    lbl10: TLabel;
    cxdbEdt6: TcxDBTextEdit;
    lbl11: TLabel;
    cxdbEdt7: TcxDBTextEdit;
    lbl13: TLabel;
    lbl14: TLabel;
    cxdbEdt9: TcxDBTextEdit;
    lbl15: TLabel;
    cxdbEdt10: TcxDBTextEdit;
    lbl16: TLabel;
    cxdbEdt11: TcxDBTextEdit;
    lbl17: TLabel;
    cxdbEdt12: TcxDBTextEdit;
    lbl18: TLabel;
    pnl2: TPanel;
    cxCust: TcxTextEdit;
    frxHed: TfrxDBDataset;
    Label2: TLabel;
    Label3: TLabel;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    cbbBank: TcxDBComboBox;
    cxlbl1: TcxLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    Label11: TLabel;
    cxBtReqMan: TcxDBButtonEdit;
    cxDBMemo1: TcxDBMemo;
    qyHedAutoId: TAutoIncField;
    qyHedbSelect: TBooleanField;
    qyHedCustId: TStringField;
    qyHedCustCode: TStringField;
    qyHedCustName: TStringField;
    qyHedCustShort: TStringField;
    qyHedCustAddress: TStringField;
    qyHedSaler: TStringField;
    qyHedPrincipal: TStringField;
    qyHedLinkMan: TStringField;
    qyHedMobile: TStringField;
    qyHedTel: TStringField;
    qyHedFax: TStringField;
    qyHedBank: TStringField;
    qyHedCreditMoney: TFMTBCDField;
    qyHedTaxRate: TFMTBCDField;
    qyHedBankAcc: TStringField;
    qyHedPosCode: TStringField;
    qyHedTaxCode: TStringField;
    qyHedPayMode: TStringField;
    qyHedTrafficMode: TStringField;
    qyHedE_Mail: TStringField;
    qyHedWWW: TStringField;
    qyHedbStop: TBooleanField;
    qyHedRemark: TStringField;
    qyHedMakeManName: TStringField;
    qyHedMakeDate: TDateTimeField;
    qyHedEditManName: TStringField;
    qyHedEditDate: TDateTimeField;
    cxgrdtbvCustCode: TcxGridDBColumn;
    cxgrdtbvCustName: TcxGridDBColumn;
    cxgrdtbvCustAddress: TcxGridDBColumn;
    cxgrdtbvSaler: TcxGridDBColumn;
    cxgrdtbvPrincipal: TcxGridDBColumn;
    cxgrdtbvLinkMan: TcxGridDBColumn;
    cxgrdtbvMobile: TcxGridDBColumn;
    cxgrdtbvFax: TcxGridDBColumn;
    cxgrdtbvBank: TcxGridDBColumn;
    cxgrdtbvBankAcc: TcxGridDBColumn;
    cxgrdtbvE_Mail: TcxGridDBColumn;
    cxgrdtbvWWW: TcxGridDBColumn;
    cxgrdtbvbStop: TcxGridDBColumn;
    cxgrdtbvRemark: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure tvCustomDraw(Sender: TObject; TreeNode: TTreeNode; AFont: TFont; var AColor, ABkColor: TColor);
    procedure btSaveClick(Sender: TObject);
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btAddLClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure cxCustPropertiesChange(Sender: TObject);
    procedure qyHedAfterScroll(DataSet: TDataSet);
    procedure cxBtReqManPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure qyHedAfterInsert(DataSet: TDataSet);
    procedure cxgrdtbvDblClick(Sender: TObject);
    procedure btDelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustFM: TCustFM;

implementation

uses DataPS, PublicPS, CustKindQPS, AreaQPS, IMCode, EmpQPS;
{$R *.dfm}

procedure TCustFM.btAddClick(Sender: TObject);
begin
  try
    inherited;
    pnlEdit.Visible := true;
    TextReadOnly(Self, False);
    cxgrd.Enabled := False;
    cxCustId.Properties.ReadOnly := true;
    qyHed.Append;
    cxEdtCustName.SetFocus;
    qyHed.FieldByName('CustId').AsString := GetFiveNo(sTableId, 'CustId');
    qyHed.FieldByName('CustCode').AsString := GetFiveNo('CustTB', 'CustId');
  except
  end;
end;

procedure TCustFM.btAddLClick(Sender: TObject);
begin
  try
    qyHed.Append;
  except
  end;
end;

procedure TCustFM.btCancelClick(Sender: TObject);
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

procedure TCustFM.btDelClick(Sender: TObject);
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

procedure TCustFM.btEditClick(Sender: TObject);
begin
  try
    inherited;
    pnlEdit.Visible := true;
    TextReadOnly(Self, False);
    cxCustId.Properties.ReadOnly := true;
    qyHed.Edit;
  except
  end;
end;

procedure TCustFM.btSaveClick(Sender: TObject);
begin
  try
    if cxEdtCustName.text = '' then
    begin
      ShowHintMsg(cxEdtCustName, '请填写客户名称！');
      Exit;
    end;
    with DataFM.qyTemp do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add('select CustId from CustTB where  IsNull(CustName,'''')=' + QuotedStr(Trim(cxEdtCustName.Text)) + '  and CustId<>' + QuotedStr(Trim(cxCustId.Text)));
      Open;
      if not eof then
      begin
        ShowWarn('该客户名称已经存在,客户编号为：' + FieldByName('CustId').AsString);
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

procedure TCustFM.cxDBButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  try
    if btSave.Enabled = False then Exit;
    try
      AreaQFM := TAreaQFM.Create(nil);
      AreaQFM.ShowModal;
      if qyHed.State = dsBrowse then qyHed.Edit;
      qyHed.FieldByName('AreaId').AsString := AreaQFM.sAreaId;
    finally
      AreaQFM.Free;
      AreaQFM := nil;
    end;
  except
  end;
end;

procedure TCustFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  pnlEdit.Visible := not (pnlEdit.Visible);
end;

procedure TCustFM.dxBarButton1Click(Sender: TObject);
begin
  inherited;
  CxExport(cxgrd, cxlabTitle.Caption);
end;

procedure TCustFM.dxBarButton2Click(Sender: TObject);
begin
  inherited;
  ImportFromExcel('客户资料', DataFM.DlgOpen1);
  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    sql.Add('select * from CustTB where 1=1');
    if not bFindAll then
      SQL.Add('and ( MakeManName=' + QuotedStr(LoginName) + ' or Saler=' + QuotedStr(LoginName) + ') ');
    Open;
  end;
end;

procedure TCustFM.cxBtReqManPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  try
    if btSave.Enabled = False then Exit;
    try
      EmpQFM := TEmpQFM.Create(nil);
      EmpQFM.iSelectKind := 2; //单选
      EmpQFM.ShowModal;
      if EmpQFM.sName <> '' then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('Saler').AsString := EmpQFM.sName;
      end;
    finally
      EmpQFM.Free;
      EmpQFM := nil;
    end;
  except
  end;
end;

procedure TCustFM.cxCustPropertiesChange(Sender: TObject);
begin
  try
    inherited;
    with qyHed do
    begin
      if Active then Close;
      SQL.Clear;
      sql.Add('select * from CustTB where 1=1');
      if not bFindAll then
        SQL.Add('and ( MakeManName=' + QuotedStr(LoginName) + ' or Saler=' + QuotedStr(LoginName) + ') ');
      sql.Add(' and (dbo.fnGetPY(CustName) like ''%' + trim(cxCust.Text) + '%'' or CustCode like ''%' + trim(cxCust.Text) + '%'' or CustName like ''%' + trim(cxCust.Text) + '%'')');
      Open;
    end;
  except
  end;
end;

procedure TCustFM.FormCreate(Sender: TObject);
begin
  sFMId := 'CustFM';
  sFMName := Self.Caption;
  sTableId := 'CustTB';
  inherited;
  InitCbb('select BankName from BankTB', cbbBank);
end;

procedure TCustFM.FormDestroy(Sender: TObject);
begin
  inherited;
  CustFM := nil;
end;

procedure TCustFM.FormShow(Sender: TObject);
begin
  inherited;
  cxCustPropertiesChange(Sender);
end;

procedure TCustFM.qyHedAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyHed.FieldByName('MakeManName').AsString := LoginName;
  qyHed.FieldByName('MakeDate').AsDateTime := SysDateTime;
end;

procedure TCustFM.qyHedAfterScroll(DataSet: TDataSet);
begin
  inherited;
  ShowRecordCount(DataSet);
end;

procedure TCustFM.tvCustomDraw(Sender: TObject; TreeNode: TTreeNode; AFont: TFont; var AColor, ABkColor: TColor);
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

