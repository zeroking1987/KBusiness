unit PrvQPS;

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
  dxSkinOffice2013LightGray, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  cxNavigator;

type
  TPrvQFM = class(TSBaseFM)
    intgrfldHedAutoId: TIntegerField;
    blnfldHedbSelect: TBooleanField;
    qyHedParentId: TStringField;
    qyHedRemark: TStringField;
    qyHedPrvKindId: TStringField;
    qyHedPrvKindCode: TStringField;
    qyHedPrvKindName: TStringField;
    qyHedPrvParam: TStringField;
    blnfldFindbSelect: TBooleanField;
    qyFindPrvId: TStringField;
    qyFindPrvCode: TStringField;
    qyFindPrvName: TStringField;
    qyFindPrvShort: TStringField;
    qyFindPrincipal: TStringField;
    qyFindLinkMan: TStringField;
    qyFindMobile: TStringField;
    qyFindTel: TStringField;
    qyFindFax: TStringField;
    qyFindBank: TStringField;
    qyFindBankAcc: TStringField;
    qyFindPosCode: TStringField;
    qyFindTaxCode: TStringField;
    qyFindTrafficMode: TStringField;
    qyFindE_Mail: TStringField;
    qyFindWWW: TStringField;
    qyFindPrvAddress: TStringField;
    qyFindRemark: TStringField;
    cxgrdbclmnPrvCode: TcxGridDBColumn;
    cxgrdbclmnPrvName: TcxGridDBColumn;
    cxgrdbclmnPrincipal: TcxGridDBColumn;
    cxgrdbclmnTel: TcxGridDBColumn;
    cxgrdbclmnFax: TcxGridDBColumn;
    cxgrdbclmnPrvAddress: TcxGridDBColumn;
    cxgrdbclmnRemark: TcxGridDBColumn;
    cxgrdbclmnPrvPYCode: TcxGridDBColumn;
    dsDet: TDataSource;
    cxgrdbclmnSelect: TcxGridDBColumn;
    cxchgParam: TcxCheckGroup;
    procedure btAllSelectClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btUnSelectClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tvClick(Sender: TObject);
    procedure cxgrdbclmnSelectPropertiesChange(Sender: TObject);
    procedure cxEdtValueKeyPress(Sender: TObject; var Key: Char);
    procedure cxgrdtbvDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sParam: string;
  end;

var
  PrvQFM: TPrvQFM;

implementation

uses PublicPS, DataPS;
{$R *.dfm}

procedure TPrvQFM.btAllSelectClick(Sender: TObject);
var
  i: Integer;
  sId: string;
begin
  if iSelectKind = 2 then
  begin
    ShowBox('请单选！');
    Exit;
  end;
  sId := qyFind.FieldByName('PrvId').AsString;
  qyFind.First;
  for I := 0 to qyFind.FieldCount - 1 do
  begin
    if qyFind.State = dsBrowse then qyFind.Edit;
    qyFind.FieldByName('bSelect').AsBoolean := true;
    qyFind.Next
  end;
  qyFind.Locate('PrvId', sId, []);
end;

procedure TPrvQFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxEdtValue.text <> '' then
    sWhere := sWhere + ' and (a.PrvCode like ''%' + trim(cxEdtValue.text) + '%'' or a.PrvPYCode like ''%' + trim(cxEdtValue.text) + '%'' or a.PrvName like ''%' + trim(cxEdtValue.text) + '%'' )';
 { if cxchgParam.States[0] = cbsUnchecked then
    sWhere := sWhere + ' and a.PrvKindId not in(select PrvKindId from PrvKindTB where PrvParam=''供应商'')';
  if cxchgParam.States[1] = cbsUnchecked then
    sWhere := sWhere + ' and a.PrvKindId not in(select PrvKindId from PrvKindTB where PrvParam=''外协商'')';
  if cxchgParam.States[2] = cbsUnchecked then
    sWhere := sWhere + ' and a.PrvKindId not in(select PrvKindId from PrvKindTB where PrvParam=''承运商'')'; }

  with qyFind do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from ProviderTB a');
    sql.Add('where  IsNull(a.bStop,0)=0 ');
    sql.Add(sWhere);
    Open;
  end;
end;

procedure TPrvQFM.btOkClick(Sender: TObject);
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
      sId := qyFind.FieldByName('PrvId').AsString; //单选取最后一个打勾的
      sName := qyFind.FieldByName('PrvName').AsString;
    end
    else
    begin
      qyFind.First;
      for I := 0 to qyFind.RecordCount - 1 do
      begin
        if qyFind.FieldByName('bSelect').AsBoolean then
        begin

          sAllId := sAllId + qyFind.FieldByName('PrvId').AsString + ','; //多选取所以打勾的并+','
          sAllName := sAllName + qyFind.FieldByName('PrvName').AsString + ',';
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

procedure TPrvQFM.btUnSelectClick(Sender: TObject);
var
  i: Integer;
  sId: string;
begin
  sId := qyFind.FieldByName('PrvId').AsString;
  qyFind.First;
  for I := 0 to qyFind.FieldCount - 1 do
  begin
    if qyFind.State = dsBrowse then qyFind.Edit;
    qyFind.FieldByName('bSelect').AsBoolean := False;
    qyFind.Next
  end;
  qyFind.Locate('PrvId', sId, []);
end;

procedure TPrvQFM.cxEdtValueKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    btFindClick(Self);
end;

procedure TPrvQFM.cxgrdbclmnSelectPropertiesChange(Sender: TObject);
var
  i: Integer;
  sId: string;
begin
  if iSelectKind = 2 then
  begin
    sId := '';
    sId := qyFind.FieldByName('PrvId').AsString;
    qyFind.First;
    for i := 0 to qyFind.RecordCount - 1 do
    begin
      if qyFind.FieldByName('PrvId').AsString <> sId then
      begin
        if qyFind.State = dsBrowse then qyFind.Edit;
        qyFind.FieldByName('bSelect').AsBoolean := False;
      end;
      qyFind.Next;
    end;
    qyFind.Locate('PrvId', sId, []);
  end;
end;

procedure TPrvQFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  if iSelectKind = 2 then
  begin
    if qyFind.State = dsBrowse then qyFind.Edit;
    qyFind.FieldByName('bSelect').AsBoolean := true;
    btOkClick(Self);
  end;
end;

procedure TPrvQFM.FormCreate(Sender: TObject);
begin
  inherited;
  sParam := '所有';
  tvExpand(tv, dsHed, 'PrvKindId', 'PrvKindName', 'ParentId');
end;

procedure TPrvQFM.FormShow(Sender: TObject);
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
  if Pos('供应商', sParam) > 0 then
    cxchgParam.States[0] := (cbsChecked);
  if Pos('外协商', sParam) > 0 then
    cxchgParam.States[1] := (cbsChecked);
  if Pos('承运商', sParam) > 0 then
    cxchgParam.States[2] := (cbsChecked);
  if Pos('所有', sParam) > 0 then
  begin
    cxchgParam.States[0] := (cbsChecked);
    cxchgParam.States[1] := (cbsChecked);
    cxchgParam.States[2] := (cbsChecked);
  end;
  btFindClick(Self);
end;

procedure TPrvQFM.tvClick(Sender: TObject);
begin
  try
    if tv.Selected.IsFirstNode then
      qyFind.Filter := ''
    else
    begin
      qyFind.Filter := 'PrvKindId like ''' + qyHed.FieldByName('PrvKindId').AsString + '%''';
      qyFind.Filtered := true;
    end;
  except
  end;
end;

end.
