unit ProDispatchProOrderRfPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RBasePS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, dxSkinsdxBarPainter, cxDropDownEdit,
  cxLabel, ADODB, dxBar, cxBarEditItem, cxClasses, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxMaskEdit, cxCalendar, cxTextEdit, StdCtrls, ExtCtrls,
  dxSkinOffice2010Blue, cxButtonEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, Vcl.Menus,
  cxGroupBox, cxRadioGroup, dxSkinOffice2007Silver, dxSkinSevenClassic,
  dxSkinSilver, dxSkinWhiteprint;

type
  TProDispatchProOrderRfFM = class(TRBaseFM)
    cxgrdtbvbSelect: TcxGridDBColumn;
    cxgrdtbvReqNO: TcxGridDBColumn;
    cxgrdtbvProOrderNo: TcxGridDBColumn;
    cxgrdtbvItemCode: TcxGridDBColumn;
    cxgrdtbvItemName: TcxGridDBColumn;
    cxgrdtbvItemSpc: TcxGridDBColumn;
    cxgrdtbvReqNum: TcxGridDBColumn;
    cxgrdtbvRemark: TcxGridDBColumn;
    cxgrdtbvNoOrderNum: TcxGridDBColumn;
    cxlbl1: TcxLabel;
    cxCompactNo: TcxTextEdit;
    cxgrdtbvColumn3: TcxGridDBColumn;
    cxgrdtbvColumn4: TcxGridDBColumn;
    btnItem: TcxButtonEdit;
    cxlbl7: TcxLabel;
    cxLabel1: TcxLabel;
    cxTechName: TcxButtonEdit;
    cxgrdtbvColumn1: TcxGridDBColumn;
    cxgrdtbvColumn2: TcxGridDBColumn;
    cxgrdtbvColumn5: TcxGridDBColumn;
    cxgrdtbvColumn6: TcxGridDBColumn;
    cxgrdtbvColumn7: TcxGridDBColumn;
    procedure btFindClick(Sender: TObject);
    procedure btAllSelectClick(Sender: TObject);
    procedure btUnSelectClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxTechNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxgrdtbvDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sObjectId: string;
  end;

var
  ProDispatchProOrderRfFM: TProDispatchProOrderRfFM;

implementation

uses DataPS, PublicPS, BaseTechQPS;
{$R *.dfm}

procedure TProDispatchProOrderRfFM.btAllSelectClick(Sender: TObject);
begin
  inherited;
  FindSelect(qyFind, 'bSelect', True, 1);
end;

procedure TProDispatchProOrderRfFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and a.MrpDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and a.MrpDate<=' + QuotedStr(trim(cxdtE.Text));
  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and a.ProOrderNo like ''%' + trim(cxEdtBillNo.text) + '%''';
  if cxCompactNo.Text <> '' then
    sWhere := sWhere + ' and b.ComPactNo like ''%' + trim(cxCompactNo.text) + '%''';

  if cxTechName.Text <> '' then
    sWhere := sWhere + ' and (b.TechName like ''%' + trim(cxTechName.text) + '%'' or dbo.fnGetPY(TechName) like ''%' + trim(cxTechName.text) + '%'' )';

  if btnItem.Text <> '' then
    sWhere := sWhere + ' and (c.ItemCode like ''%' + trim(btnItem.Text) + '%'' or c.ItemName like ''%' + trim(btnItem.Text) + '%'' or c.ItemSpc like ''%' + trim(btnItem.Text) + '%'' or c.ItemPYCode like ''%' + trim(btnItem.Text) + '%'' )';
  if (btnItem.Properties.LookupItems.Text <> '') and (btnItem.Text <> '') then
    sWhere := sWhere + ' and b.ItemId =' + QuotedStr(trim(btnItem.Properties.LookupItems.Text));

  with qyFind do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('exec PrProDispatchProOrderRf ' + QuotedStr(sWhere));
    Open;
  end;
end;

procedure TProDispatchProOrderRfFM.btnItemPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItem2(btnItem);
end;

procedure TProDispatchProOrderRfFM.btUnSelectClick(Sender: TObject);
begin
  inherited;
  FindSelect(qyFind, 'bSelect', False, 1);
end;

procedure TProDispatchProOrderRfFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  if qyFind.State = dsBrowse then qyFind.Edit;
  qyFind.FieldByName('bSelect').AsBoolean := true;
  btOkClick(Self);
end;

procedure TProDispatchProOrderRfFM.cxTechNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  try
    BaseTechQFM := TBaseTechQFM.Create(nil);
    BaseTechQFM.iSelectKind := 2;
    BaseTechQFM.ShowModal;
    if BaseTechQFM.sName <> '' then
    begin
      cxTechName.Text := BaseTechQFM.sName;
    end;
  finally
    BaseTechQFM.Free;
    BaseTechQFM := nil;
  end;
end;

procedure TProDispatchProOrderRfFM.FormDestroy(Sender: TObject);
begin
  inherited;
  ProDispatchProOrderRfFM := nil;
end;

end.

