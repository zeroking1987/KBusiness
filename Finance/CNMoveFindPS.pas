unit CNMoveFindPS;

interface

uses
  Windows, Messages, SysUtils, StrUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FBasePS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, dxSkinsdxBarPainter, cxDropDownEdit,
  cxLabel, dxBar, cxBarEditItem, cxClasses, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox, cxRadioGroup, cxMaskEdit, cxCalendar,
  cxTextEdit, StdCtrls, ExtCtrls, cxButtonEdit, dxSkinOffice2010Blue,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinDevExpressStyle, dxSkinSpringTime,
  dxSkinValentine, cxNavigator, cxMRUEdit;

type
  TCNMoveFindFM = class(TFBaseFM)
    cxgrdbclmnSelect: TcxGridDBColumn;
    cxgrdbclmnSaleOrderNo: TcxGridDBColumn;
    cxgrdbclmnOrderDate: TcxGridDBColumn;
    cxgrdbclmnPayMode: TcxGridDBColumn;
    cxgrdbclmnCustName: TcxGridDBColumn;
    cxgrdbclmnSendAdd: TcxGridDBColumn;
    cxgrdbclmnCompactNo: TcxGridDBColumn;
    cxgrdtbvColumn1: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxOutAccName: TcxMRUEdit;
    cxOutCNItemName: TcxMRUEdit;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    cxInAccName: TcxMRUEdit;
    cxInCNItemName: TcxMRUEdit;
    cxgrdtbvColumn2: TcxGridDBColumn;
    cxgrdtbvColumn3: TcxGridDBColumn;
    procedure btOkClick(Sender: TObject);
    procedure dxbrcmbPageIndexChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxOutAccNamePropertiesButtonClick(Sender: TObject);
    procedure cxInAccNamePropertiesButtonClick(Sender: TObject);
    procedure cxOutCNItemNamePropertiesButtonClick(Sender: TObject);
    procedure cxInCNItemNamePropertiesButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CNMoveFindFM: TCNMoveFindFM;

implementation

uses CNMovePS,CNAccNameQPS,CNItemQPS,PublicPS;
{$R *.dfm}

procedure TCNMoveFindFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxrdgrpAudit.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(bMaxAudit,0)=0'
  else if cxrdgrpAudit.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(bMaxAudit,0)=1';
  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and BillDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and BillDate<=' + QuotedStr(trim(cxdtE.Text));
  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and BillNo like ''%' + trim(cxEdtBillNo.text) + '%''';


  with CNMoveFM.qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('select * from CNMoveTB where 1=1');
    if not CNMoveFM.bFindAll then
      SQL.Add('and ( MakeMan=' + QuotedStr(LoginEmpId) + ')');
    SQL.Add(sWhere);
  end;
  SplitPage(CNMoveFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
end;

procedure TCNMoveFindFM.btOkClick(Sender: TObject);
begin
  Close;
end;

procedure TCNMoveFindFM.cxInAccNamePropertiesButtonClick(Sender: TObject);
begin
  try
    inherited;
    CNAccNameQFM := TCNAccNameQFM.Create(nil);
    CNAccNameQFM.iSelectKind := 2;
    CNAccNameQFM.sPubWhere := '';
    CNAccNameQFM.ShowModal;
    if CNAccNameQFM.iFlag <> 3 then
    begin
      cxInAccName.Text := CNAccNameQFM.sName;
    end;
  finally
    CNAccNameQFM.Free;
    CNAccNameQFM := nil;
  end;
end;

procedure TCNMoveFindFM.cxInCNItemNamePropertiesButtonClick(Sender: TObject);
begin
  inherited;
  try
    try
      CNItemQFM := TCNItemQFM.Create(nil);
      CNItemQFM.sPubWhere := ' and (iFlag=-1 or iFlag=0)';
      CNItemQFM.iSelectKind := 2;
      CNItemQFM.ShowModal;
      if CNItemQFM.iFlag <> 3 then
      begin
        cxInCNItemName.Text := CNItemQFM.sName;
      end;
    finally
      CNItemQFM.Free;
      CNItemQFM := nil;
    end;
  except
  end;
end;


procedure TCNMoveFindFM.cxOutAccNamePropertiesButtonClick(Sender: TObject);
begin
  inherited;
  try
    CNAccNameQFM := TCNAccNameQFM.Create(nil);
    CNAccNameQFM.iSelectKind := 2;
    CNAccNameQFM.sPubWhere := '';
    CNAccNameQFM.ShowModal;
    if CNAccNameQFM.iFlag <> 3 then
    begin
      cxOutAccName.Text := CNAccNameQFM.sName;
    end;
  finally
    CNAccNameQFM.Free;
    CNAccNameQFM := nil;
  end;
end;

procedure TCNMoveFindFM.cxOutCNItemNamePropertiesButtonClick(Sender: TObject);
begin
  inherited;
  try
    try
      CNItemQFM := TCNItemQFM.Create(nil);
      CNItemQFM.sPubWhere := ' and (iFlag=-1 or iFlag=0)';
      CNItemQFM.iSelectKind := 2;
      CNItemQFM.ShowModal;
      if CNItemQFM.iFlag <> 3 then
      begin
        cxOutCNItemName.Text := CNItemQFM.sName;
      end;
    finally
      CNItemQFM.Free;
      CNItemQFM := nil;
    end;
  except
  end;
end;

procedure TCNMoveFindFM.dxbrcmbPageIndexChange(Sender: TObject);
begin
  inherited;
  SplitPage(CNMoveFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, false);
end;

procedure TCNMoveFindFM.FormDestroy(Sender: TObject);
begin
  CNMoveFindFM := nil;
end;

procedure TCNMoveFindFM.FormShow(Sender: TObject);
begin
  inherited;
  InItCbb('select AccName from CNAccNameTB  ', cxOutAccName);
  InItCbb('select AccName from CNAccNameTB  ', cxInAccName);
  InItCbb('select CNItemName from CNItemTB where iFlag=-1 and  Not Exists(select AutoID from CNItemTB m where CNItemTB.ID=m.ParentId) order by ID ', cxOutCNItemName);
  InItCbb('select CNItemName from CNItemTB where iFlag=1 and  Not Exists(select AutoID from CNItemTB m where CNItemTB.ID=m.ParentId) order by ID ', cxInCNItemName);

end;

end.

