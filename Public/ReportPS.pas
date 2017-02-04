unit ReportPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxDesgn, frxClass, frxDBSet, DB, ADODB,ADOInt, frxExportXLS, frxExportPDF,
  frxExportText, frxExportDBF, frxRich, frxOLE, frxExportHTML, frxExportXML,
  frxExportCSV, frxExportImage, frxExportRTF, frxDMPExport, frxCross,
  frxGradient, frxDCtrl, frxChBox, frxChart, frxADOComponents, frxBarcode,
  frxGZip, frxCrypt;

type
  TReportFM = class(TForm)
    frxReport1: TfrxReport;
    frxSysParam: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    dsTemp: TDataSource;
    frxXLSExport1: TfrxXLSExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxPDFExport1: TfrxPDFExport;
    qySysParam: TADOQuery;
    dsSysParam: TDataSource;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxADOComponents1: TfrxADOComponents;
    frxChartObject1: TfrxChartObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxDialogControls1: TfrxDialogControls;
    frxGradientObject1: TfrxGradientObject;
    frxCrossObject1: TfrxCrossObject;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxRTFExport1: TfrxRTFExport;
    frxBMPExport1: TfrxBMPExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxGIFExport1: TfrxGIFExport;
    frxCSVExport1: TfrxCSVExport;
    frxXMLExport1: TfrxXMLExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxOLEObject1: TfrxOLEObject;
    frxRichObject1: TfrxRichObject;
    frxCrypt1: TfrxCrypt;
    frxGZipCompressor1: TfrxGZipCompressor;
    procedure frxReport1PrintReport(Sender: TObject);
    function frxReport1UserFunction(const MethodName: string;
      var Params: Variant): Variant;
    procedure FormCreate(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
  //数字转换为中文大写
    function MoneyToCh(Money: real): string;
    { Public declarations }
  end;

var
  ReportFM: TReportFM;

implementation

uses BasePS, PublicPS, DataPS;
{$R *.dfm}

function TReportFM.MoneyToCh(Money: real): string; //数字转换为中文大写
var
  temp: string;
  resu: string;
  i, j: integer;
  len: integer;
  Num: array[0..9] of string;
  A: array[0..13] of string;
begin
  Num[0] := '零';
  num[1] := '壹';
  Num[2] := '贰';
  num[3] := '叁';
  Num[4] := '肆';
  num[5] := '伍';
  Num[6] := '陆';
  num[7] := '柒';
  Num[8] := '捌';
  num[9] := '玖';
  a[0] := '分';
  a[1] := '角';
  a[2] := '元';
  a[3] := '拾';
  a[4] := '佰';
  a[5] := '仟';
  a[6] := '万';
  a[7] := '拾';
  a[8] := '佰';
  a[9] := '仟';
  a[10] := '亿';
  a[11] := '拾';
  a[12] := '佰';
  a[13] := '仟';

  temp := trim(inttostr(round(money * 100)));
  len := length(temp);
  resu := '';
  if (len > 13) or (len = 0) then
  begin
    exit;
  end;
  for i := 1 to len do
  begin
    j := strtoint(copy(temp, i, 1));
    resu := resu + num[j] + a[len - i];
  end;
  result := resu;
end;

procedure TReportFM.FormCreate(Sender: TObject);
begin
  qySysParam.Open;
  //为FasrReport添加自定义函数
  frxReport1.AddFunction('function MoneyToCh(Money: real): string;', '恒创函数', '金额转化为大写');
end;

procedure TReportFM.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = '开始日期' then
  begin
    Value := FRDtS;
  end;
  if VarName = '结束日期' then
  begin
    Value := FRDtE;
  end;
end;

procedure TReportFM.frxReport1PrintReport(Sender: TObject);
begin
  if dsTemp.DataSet.FindField('PrintNum') <> nil then
  begin
    //先刷新数据 否则可能出现无法更新定位行
    TADOQuery(dsTemp.DataSet).UpdateCursorPos;
    TADOQuery(dsTemp.DataSet).Recordset.Resync(AdAffectcurrent, AdResyncAllValues);
    TADOQuery(dsTemp.DataSet).Resync([]);

    dsTemp.DataSet.Edit;
    dsTemp.DataSet.FieldByName('PrintNum').AsInteger := dsTemp.DataSet.FieldByName('PrintNum').AsInteger + 1;
    TADOQuery(dsTemp.DataSet).UpdateBatch();
  end;
end;

function TReportFM.frxReport1UserFunction(const MethodName: string;
  var Params: Variant): Variant;
begin
  if CompareText(MethodName, 'MoneyToCh') = 0 then
    Result := MoneyToCh(Params[0]);
end;

end.
