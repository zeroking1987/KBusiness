unit EmpWorkRecordFindPS;

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
  dxSkinValentine, dxSkinOffice2007Silver, dxSkinSevenClassic, dxSkinSilver,
  dxSkinWhiteprint;

type
  TEmpWorkRecordFindFM = class(TFBaseFM)
    cxgrdbclmnSelect: TcxGridDBColumn;
    cxgrdbclmnStockOrderNO: TcxGridDBColumn;
    cxgrdbclmnOrderDate: TcxGridDBColumn;
    cxgrdbclmnPayMode: TcxGridDBColumn;
    cxgrdbclmnPrvName: TcxGridDBColumn;
    cxgrdbclmnPrvAddress: TcxGridDBColumn;
    Label3: TLabel;
    cxCompactNo: TcxTextEdit;
    Label4: TLabel;
    Label5: TLabel;
    btnEmpName: TcxButtonEdit;
    btnDept: TcxButtonEdit;
    procedure btOkClick(Sender: TObject);
    procedure dxbrcmbPageIndexChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure cxgrdtbvDblClick(Sender: TObject);
    procedure btnEmpNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnDeptPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EmpWorkRecordFindFM: TEmpWorkRecordFindFM;

implementation

uses EmpWorkRecordPS, PublicPS, DeptQps;
{$R *.dfm}

procedure TEmpWorkRecordFindFM.btFindClick(Sender: TObject);
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

  if cxCompactNo.Text <> '' then
    sWhere := sWhere + ' and Exists( select BillNo from EmpWorkRecordDTTB m where EmpWorkRecordHDTB.BillNo=m.BillNo and  m.CompactNo like ''%' + trim(cxCompactNo.Text) + '%'')';


  if btnEmpName.Text <> '' then
    sWhere := sWhere + ' and Exists( select BillNo from EmpWorkRecordDTTB m where EmpWorkRecordHDTB.BillNo=m.BillNo and  m.EmpName like ''%' + trim(btnEmpName.Text) + '%'')';

  if btnDept.Text <> '' then
    sWhere := sWhere + ' and Exists( select BillNo from EmpWorkRecordDTTB a left join EmployeeTB b on a.EmpId=b.EmpId left join DeptTB c on b.DeptId=c.DeptId where EmpWorkRecordHDTB.BillNo=a.BillNo and  c.DeptName like ''%' + trim(btnDept.Text) + '%'')';




  with EmpWorkRecordFM.qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('select * from EmpWorkRecordHDTB where 1=1 ');
    SQL.Add(sWhere);
    sql.Add('order by BillNo');
  end;
  SplitPage(EmpWorkRecordFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
end;

procedure TEmpWorkRecordFindFM.btnDeptPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  try
    DeptQFM := TDeptQFM.Create(nil);
    DeptQFM.iSelectKind := 2;
    DeptQFM.ShowModal;
    if DeptQfm.sId <> '' then
    begin
      btnDept.Properties.LookupItems.Text := DeptQfm.sId;
      btnDept.Text := DeptQfm.sname;
    end;
  finally
    DeptQFM.Free;
    DeptQFM := nil;
  end;
end;

procedure TEmpWorkRecordFindFM.btnEmpNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectEmp2(btnEmpName);
end;

procedure TEmpWorkRecordFindFM.btOkClick(Sender: TObject);
var
  i: Integer;
begin
  try
    Close;
  except
  end;
end;

procedure TEmpWorkRecordFindFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  btOkClick(Sender);
end;

procedure TEmpWorkRecordFindFM.dxbrcmbPageIndexChange(Sender: TObject);
begin
  inherited;
  SplitPage(EmpWorkRecordFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, false);
end;

procedure TEmpWorkRecordFindFM.FormDestroy(Sender: TObject);
begin
  EmpWorkRecordFindFM := nil;
end;

end.
