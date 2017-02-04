unit SysLogQPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QBasePS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, cxLabel, cxGridCustomPopupMenu,
  cxGridPopupMenu, Menus, frxClass, frxDBSet, ADODB, dxBar, cxBarEditItem, cxClasses, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  ExtCtrls, cxContainer, cxDropDownEdit, cxMaskEdit, cxCalendar, cxTextEdit, StdCtrls,
  cxPCdxBarPopupMenu, dxSkinOffice2010Blue, dxSkinDevExpressStyle,
  dxSkinSpringTime, dxSkinValentine, dxBarBuiltInMenu, cxNavigator,
  Vcl.ComCtrls, dxCore, cxDateUtils;

type
  TSysLogQFM = class(TQBaseFM)
    intgrfldHedAutoId: TIntegerField;
    qyHedBillName: TStringField;
    qyHedBillNo: TStringField;
    qyHedActionEmpId: TStringField;
    qyHedActionEmpName: TStringField;
    qyHedActionKind: TStringField;
    dtmfldHedActionDate: TDateTimeField;
    qyHedIPAddress: TStringField;
    qyHedComputerName: TStringField;
    qyHedRemark: TStringField;
    cxgrdbclmnBillName: TcxGridDBColumn;
    cxgrdbclmnBillNo: TcxGridDBColumn;
    cxgrdbclmnActionEmpId: TcxGridDBColumn;
    cxgrdbclmnActionEmpName: TcxGridDBColumn;
    cxgrdbclmnActionKind: TcxGridDBColumn;
    cxgrdbclmnActionDate: TcxGridDBColumn;
    cxgrdbclmnIPAddress: TcxGridDBColumn;
    cxgrdbclmnComputerName: TcxGridDBColumn;
    Lablbl2: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    cxEdtBillNo: TcxTextEdit;
    cxdtS: TcxDateEdit;
    cxdtE: TcxDateEdit;
    Label3: TLabel;
    cxEdtBillName: TcxTextEdit;
    Label4: TLabel;
    cxEdtActionName: TcxTextEdit;
    Label7: TLabel;
    cbbActionKind: TcxComboBox;
    procedure btFindClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SysLogQFM: TSysLogQFM;

implementation

uses PublicPS;
{$R *.dfm}

procedure TSysLogQFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and ActionDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and ActionDate<=' + QuotedStr(trim(cxdtE.Text));
  if cxEdtBillName.Text <> '' then
    sWhere := sWhere + ' and BillName like ''%' + trim(cxEdtBillName.text) + '%''';
  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and BillNo like ''%' + trim(cxEdtBillNo.text) + '%''';
  if cxEdtActionName.Text <> '' then
    sWhere := sWhere + ' and ActionEmpName like ''%' + trim(cxEdtActionName.text) + '%''';
  if cbbActionKind.Text <> '' then
    sWhere := sWhere + ' and ActionKind like ''%' + trim(cbbActionKind.text) + '%''';

  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    sql.Add('select * from SysLogTB ');
    sql.Add('where 1=1');
    sql.Add(sWhere);
    sql.Add('order by ActionDate Desc');
  end;
  SplitPage(qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
end;

procedure TSysLogQFM.FormCreate(Sender: TObject);
begin
  sFMId := 'SysLogQFM';
  sFMName := Self.Caption;
  sTableId := 'SysLogQFM';
  inherited;
end;

procedure TSysLogQFM.FormDestroy(Sender: TObject);
begin
  inherited;
  SysLogQFM := nil;
end;

end.
