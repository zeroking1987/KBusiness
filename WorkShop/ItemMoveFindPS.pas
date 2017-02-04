unit ItemMoveFindPS;

interface

uses
  Windows, Messages, SysUtils, StrUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FBasePS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, dxSkinsdxBarPainter, cxDropDownEdit,
  cxLabel, dxBar, cxBarEditItem, cxClasses, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox, cxRadioGroup, cxMaskEdit, cxCalendar,
  cxTextEdit, StdCtrls, ExtCtrls, cxButtonEdit, cxCheckBox, ADODB,
  dxSkinOffice2010Blue, Vcl.ComCtrls, dxCore, cxDateUtils, cxNavigator,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine;

type
  TItemMoveFindFM = class(TFBaseFM)
    btnSend: TcxButtonEdit;
    cxgrdBillNO: TcxGridDBColumn;
    cxgrdSubJoinNO: TcxGridDBColumn;
    cxgrdObjectName: TcxGridDBColumn;
    cxgrdSellerManName: TcxGridDBColumn;
    btnOutWare: TcxButtonEdit;
    dsFind: TDataSource;
    cxgrdBillDate: TcxGridDBColumn;
    cxgrdRemark: TcxGridDBColumn;
    cxgrdMakeManName: TcxGridDBColumn;
    cxgrdMakeDate: TcxGridDBColumn;
    cxgrdAuditFlag: TcxGridDBColumn;
    cxgrdAuditDate: TcxGridDBColumn;
    cxgrdbclmnSelect: TcxGridDBColumn;
    cxlbl1: TcxLabel;
    cxLabel2: TcxLabel;
    btnAccept: TcxButtonEdit;
    cxLabel1: TcxLabel;
    btnInWare: TcxButtonEdit;
    cxLabel3: TcxLabel;
    cxgrdbclmnColumn1: TcxGridDBColumn;
    procedure FormDestroy(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure dxbrcmbPageIndexChange(Sender: TObject);
    procedure btnSendPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnAcceptPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnOutWarePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnInWarePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    SqlStr: string;
  public
    { Public declarations }
    fBaseForm: TWinControl;
    sMKindID: string;
    BaseqyHed: TADOQuery;

  end;

var
  ItemMoveFindFM: TItemMoveFindFM;

implementation

uses CustQPS, PrvQPS, PublicPS, ItemMovePS, ShopMovePS, ShopMoveInPS, AssistMovePS, AssistMoveInPS, WareQPS, DeptQPS;
{$R *.dfm}

procedure TItemMoveFindFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  SqlStr := '';
  if cxrdgrpAudit.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(bMaxAudit,0)=0'
  else if cxrdgrpAudit.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(bMaxAudit,0)=1';

  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and MoveDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and MoveDate<=' + QuotedStr(trim(cxdtE.Text));
  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and MoveNo like ''%' + trim(cxEdtBillNo.text) + '%''';
  if btnSend.Text <> '' then
    sWhere := sWhere + ' and SendId=' + QuotedStr(trim(btnSend.Properties.LookupItems.Text));
  if btnAccept.Text <> '' then
    sWhere := sWhere + ' and AcceptId=' + QuotedStr(trim(btnAccept.Properties.LookupItems.Text));
  if btnOutWare.Text <> '' then
    sWhere := sWhere + ' and OutWare=' + QuotedStr(trim(btnOutWare.Properties.LookupItems.Text));
  if btnInWare.Text <> '' then
    sWhere := sWhere + ' and InWare=' + QuotedStr(trim(btnInWare.Properties.LookupItems.Text));

  SqlStr := 'select * from ItemMoveHDTB where MKindID=' + QuotedStr(sMKindID) + sWhere;

  if sMKindID = 'ItemMove' then
  begin
    with ItemMoveFM.qyHed do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add(SqlStr);
      Open;
    end;
    SplitPage(ItemMoveFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
  end;
  if sMKindID = 'ShopMove' then
  begin
    with ShopMoveFM.qyHed do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add(SqlStr);
      Open;
    end;
    SplitPage(ShopMoveFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
  end;
  if sMKindID = 'ShopMoveIn' then
  begin
    with ShopMoveInFM.qyHed do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add(SqlStr);
      Open;
    end;
    SplitPage(ShopMoveInFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
  end;
  if sMKindID = 'AssistMove' then
  begin
    with AssistMoveFM.qyHed do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add(SqlStr);
      Open;
    end;
    SplitPage(AssistMoveFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
  end;
  if sMKindID = 'AssistMoveIn' then
  begin
    with AssistMoveInFM.qyHed do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add(SqlStr);
      Open;
    end;
    SplitPage(AssistMoveInFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
  end;

end;

procedure TItemMoveFindFM.btnAcceptPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if (sMKindID = 'AssistMove') then
  begin
    try
      PrvQFM := TPrvQFM.Create(nil);
      PrvQFM.iSelectKind := 2; //单选
      PrvQFM.ShowModal;
      btnAccept.Properties.LookupItems.Text := PrvQFM.sId;
      btnAccept.Text := PrvQFM.sName;
    finally
      PrvQFM.Free;
      PrvQFM := nil;
    end;
  end
  else if (sMKindID = 'AssistMoveIn') then
  begin
    try
      DeptQFM := TDeptQFM.Create(nil);
      DeptQFM.iSelectKind := 2; //单选
      DeptQFM.ShowModal;
      btnAccept.Properties.LookupItems.Text := DeptQFM.sId;
      btnAccept.Text := DeptQFM.sName;
    finally
      DeptQFM.Free;
      DeptQFM := nil;
    end;
  end;
end;

procedure TItemMoveFindFM.btnInWarePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  try
    WareQFM := TWareQFM.Create(nil);
    WareQFM.iSelectKind := 1;
    WareQFM.ShowModal;
    if WareQFM.iFlag <> 3 then
      btnInWare.Properties.LookupItems.Text := WareQFM.sAllId;
    btnInWare.Text := WareQFM.sAllName;
  finally
    WareQFM.Free;
    WareQFM := nil;
  end;
end;

procedure TItemMoveFindFM.btnOutWarePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  try
    WareQFM := TWareQFM.Create(nil);
    WareQFM.iSelectKind := 1;
    WareQFM.ShowModal;
    if WareQFM.iFlag <> 3 then
      btnOutWare.Properties.LookupItems.Text := WareQFM.sAllId;
    btnOutWare.Text := WareQFM.sAllName;
  finally
    WareQFM.Free;
    WareQFM := nil;
  end;
end;

procedure TItemMoveFindFM.btnSendPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  try
    if (sMKindID = 'AssistMove') then
    begin
      try
        DeptQFM := TDeptQFM.Create(nil);
        DeptQFM.iSelectKind := 2; //单选
        DeptQFM.ShowModal;
        btnSend.Properties.LookupItems.Text := DeptQFM.sId;
        btnSend.Text := DeptQFM.sName;
      finally
        DeptQFM.Free;
        DeptQFM := nil;
      end;
    end
    else if (sMKindID = 'AssistMoveIn') then
    begin
      try
        PrvQFM := TPrvQFM.Create(nil);
        PrvQFM.iSelectKind := 2; //单选
        PrvQFM.ShowModal;
        btnSend.Properties.LookupItems.Text := PrvQFM.sId;
        btnSend.Text := PrvQFM.sName;
      finally
        PrvQFM.Free;
        PrvQFM := nil;
      end;
    end;
  except
  end;
end;

procedure TItemMoveFindFM.btOkClick(Sender: TObject);
begin
  Close;
end;

procedure TItemMoveFindFM.dxbrcmbPageIndexChange(Sender: TObject);
begin
  inherited;
  if sMKindID = 'ItemMove' then
    SplitPage(ItemMoveFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, false);
  if sMKindID = 'AssistMove' then
    SplitPage(AssistMoveFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, false);
  if sMKindID = 'AssistMoveIn' then
    SplitPage(AssistMoveInFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, false);
end;

procedure TItemMoveFindFM.FormDestroy(Sender: TObject);
begin
  ItemMoveFindFM := nil;
end;

end.
