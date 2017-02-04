unit CustQPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SBasePS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, dxSkinsdxBarPainter, ADODB, dxBar,
  cxClasses, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, StrUtils,
  cxGridDBTableView, cxGrid, ComCtrls, dxtree, dxdbtree, cxTextEdit, StdCtrls, ExtCtrls, cxGroupBox,
  cxCheckGroup, cxMaskEdit, cxDropDownEdit, cxCheckComboBox, cxCheckBox,
  dxSkinOffice2010Blue, cxLabel, dxSkinDevExpressStyle, dxSkinSpringTime,
  dxSkinValentine, cxGridCustomPopupMenu, cxGridPopupMenu, Vcl.Menus,
  cxNavigator;

type
  TCustQFM = class(TSBaseFM)
    intgrfldHedAutoId: TIntegerField;
    blnfldHedbSelect: TBooleanField;
    qyHedParentId: TStringField;
    qyHedRemark: TStringField;
    cxgrdbclmnSelect: TcxGridDBColumn;
    cxgrdbclmnCustCode: TcxGridDBColumn;
    cxgrdbclmnCustName: TcxGridDBColumn;
    cxgrdbclmnTel: TcxGridDBColumn;
    cxgrdbclmnFax: TcxGridDBColumn;
    cxgrdbclmnPrvAddress: TcxGridDBColumn;
    cxgrdbclmnRemark: TcxGridDBColumn;
    qyHedCustKindId: TStringField;
    qyHedCustKindCode: TStringField;
    qyHedCustKindName: TStringField;
    qyHedCustParam: TStringField;
    qyFindAutoId: TAutoIncField;
    qyFindbSelect: TBooleanField;
    qyFindCustId: TStringField;
    qyFindCustCode: TStringField;
    qyFindCustName: TStringField;
    qyFindCustShort: TStringField;
    qyFindCustAddress: TStringField;
    qyFindSaler: TStringField;
    qyFindPrincipal: TStringField;
    qyFindLinkMan: TStringField;
    qyFindMobile: TStringField;
    qyFindTel: TStringField;
    qyFindFax: TStringField;
    qyFindBank: TStringField;
    qyFindCreditMoney: TFMTBCDField;
    qyFindTaxRate: TFMTBCDField;
    qyFindBankAcc: TStringField;
    qyFindPosCode: TStringField;
    qyFindTaxCode: TStringField;
    qyFindPayMode: TStringField;
    qyFindTrafficMode: TStringField;
    qyFindE_Mail: TStringField;
    qyFindWWW: TStringField;
    qyFindbStop: TBooleanField;
    qyFindRemark: TStringField;
    qyFindMakeManName: TStringField;
    qyFindMakeDate: TDateTimeField;
    qyFindEditManName: TStringField;
    qyFindEditDate: TDateTimeField;
    cxgrdtbvColumn1: TcxGridDBColumn;
    cxgrdtbvColumn2: TcxGridDBColumn;
    procedure btAllSelectClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btUnSelectClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxgrdbclmnSelectPropertiesChange(Sender: TObject);
    procedure cxgrdtbvDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    bFindAll: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustQFM: TCustQFM;

implementation

uses PublicPS, DataPS;
{$R *.dfm}

procedure TCustQFM.btAllSelectClick(Sender: TObject);
var
  i: Integer;
  sId: string;
begin
  if iSelectKind = 2 then
  begin
    ShowBox('请单选！');
    Exit;
  end;
  sId := qyFind.FieldByName('CustId').AsString;
  qyFind.First;
  for I := 0 to qyFind.FieldCount - 1 do
  begin
    if qyFind.State = dsBrowse then qyFind.Edit;
    qyFind.FieldByName('bSelect').AsBoolean := true;
    qyFind.Next
  end;
  qyFind.Locate('CustId', sId, []);
end;

procedure TCustQFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxEdtValue.text <> '' then
    sWhere := sWhere + ' and (a.CustCode like ''%' + trim(cxEdtValue.text) + '%'' or dbo.fnGetPY(a.CustName) like ''%' + trim(cxEdtValue.text) + '%'' or a.CustName like ''%' + trim(cxEdtValue.text) + '%'' )';

  with qyFind do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from CustTB a');
    sql.Add('where  1=1  ');
    if not bFindAll then
      SQL.Add('and ( a.MakeManName=' + QuotedStr(LoginName) + ' or a.Saler=' + QuotedStr(LoginName) + ') ');
    sql.Add(sWhere);
    Open;
  end;
end;

procedure TCustQFM.btOkClick(Sender: TObject);
var
  i: Integer;
begin
  try
    inherited;
    sId := '';
    sName := '';
    sAllId := '';
    sAllName := '';
    if iSelectKind = 2 then //单选
    begin
      sId := qyFind.FieldByName('CustId').AsString; //单选取最后一个打勾的
      sName := qyFind.FieldByName('CustName').AsString;
    end
    else
    begin
      qyFind.First;
      for I := 0 to qyFind.RecordCount - 1 do
      begin
        if qyFind.FieldByName('bSelect').AsBoolean then
        begin

          sAllId := sAllId + qyFind.FieldByName('CustId').AsString + ','; //多选取所以打勾的并+','
          sAllName := sAllName + qyFind.FieldByName('CustName').AsString + ',';
        end;
        qyFind.Next;
      end;
      if sAllId <> '' then
        sAllId := LeftStr(sAllId, Length(sAllId) - 1); //去除最后一个','
      if sAllName <> '' then
        sAllName := LeftStr(sAllName, Length(sAllName) - 1);
    end;
    Close;
  except
  end;
end;

procedure TCustQFM.btUnSelectClick(Sender: TObject);
var
  i: Integer;
  sId: string;
begin
  sId := qyFind.FieldByName('CustId').AsString;
  qyFind.First;
  for I := 0 to qyFind.FieldCount - 1 do
  begin
    if qyFind.State = dsBrowse then qyFind.Edit;
    qyFind.FieldByName('bSelect').AsBoolean := False;
    qyFind.Next
  end;
  qyFind.Locate('CustId', sId, []);
end;

procedure TCustQFM.cxgrdbclmnSelectPropertiesChange(Sender: TObject);
var
  i: Integer;
  sId: string;
begin
  if iSelectKind = 2 then
  begin
    sId := '';
    sId := qyFind.FieldByName('CustId').AsString;
    qyFind.First;
    for i := 0 to qyFind.RecordCount - 1 do
    begin
      if qyFind.FieldByName('CustId').AsString <> sId then
      begin
        if qyFind.State = dsBrowse then qyFind.Edit;
        qyFind.FieldByName('bSelect').AsBoolean := False;
      end;
      qyFind.Next;
    end;
    qyFind.Locate('CustId', sId, []);
  end;
end;

procedure TCustQFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  if iSelectKind = 2 then
  begin
    if qyFind.State = dsBrowse then qyFind.Edit;
    qyFind.FieldByName('bSelect').AsBoolean := true;
    btOkClick(Self);
  end;
end;

procedure TCustQFM.FormCreate(Sender: TObject);
begin
  inherited;
  bFindAll := False;

  with DataFM.qyTemp do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('select bFindAll from UserRightTB where TableId=''CustTB'' and UserId=' + QuotedStr(LoginId));
    Open;
    if not Eof then
      bFindAll := Fields[0].AsBoolean;
  end;
end;

procedure TCustQFM.FormShow(Sender: TObject);
begin
  inherited;
  if iSelectKind = 1 then
  begin
    cxgrdbclmnSelect.Visible := true;
  end
  else
  begin
    cxgrdbclmnSelect.Visible :=False;
  end;
  btFindClick(Self);
end;

end.
