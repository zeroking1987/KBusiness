unit RequireFindPS;

interface

uses
  Windows, Messages, SysUtils, StrUtils, Variants, Classes, Graphics, Controls, Forms, ADODB,
  Dialogs, dxSkinsCore, dxSkinsdxBarPainter, dxSkinsDefaultPainters, cxDropDownEdit,
  dxBar, cxBarEditItem, cxClasses, cxLabel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, StdCtrls, ExtCtrls, dxdbtrel,
  cxButtonEdit, cxMaskEdit, cxCalendar, cxGroupBox, cxRadioGroup, Clipbrd,
  dxSkinOffice2010Blue, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine;

type
  TRequireFindFM = class(TForm)
    dxbrpmnPupBpm: TdxBarPopupMenu;
    dxbrmngrBarManage: TdxBarManager;
    dxbrBarMang: TdxBar;
    btAllSelect: TdxBarLargeButton;
    btUnSelect: TdxBarLargeButton;
    btExit: TdxBarLargeButton;
    btOk: TdxBarLargeButton;
    btLeft: TdxBarLargeButton;
    btRight: TdxBarLargeButton;
    btFirst: TdxBarLargeButton;
    btLast: TdxBarLargeButton;
    btFind: TdxBarLargeButton;
    dxbrbtn1: TdxBarButton;
    btTemp: TdxBarLargeButton;
    cxbrdtmPageIndex: TcxBarEditItem;
    cxbrdtmPage: TcxBarEditItem;
    pnlFind: TPanel;
    Lablbl2: TLabel;
    cxEdtBillNo: TcxTextEdit;
    cxgrd: TcxGrid;
    cxgrdtbv: TcxGridDBTableView;
    cxgrdlev: TcxGridLevel;
    cxgrdbclmnReqNO: TcxGridDBColumn;
    cxgrdbclmnReqDate: TcxGridDBColumn;
    cxgrdbclmnAuditFlag: TcxGridDBColumn;
    cxgrdbclmnDeptName: TcxGridDBColumn;
    cxgrdbclmnTheme: TcxGridDBColumn;
    cxgrdbclmnbSelect: TcxGridDBColumn;
    Label1: TLabel;
    cxdtS: TcxDateEdit;
    Label2: TLabel;
    cxdtE: TcxDateEdit;
    Label3: TLabel;
    cxEdtTheme: TcxTextEdit;
    Label4: TLabel;
    btnDept: TcxButtonEdit;
    cxrdgrpAudit: TcxRadioGroup;
    dxbrcmbPageIndex: TdxBarCombo;
    procedure FormDestroy(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btnDeptPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btAllSelectClick(Sender: TObject);
    procedure btUnSelectClick(Sender: TObject);
    procedure cxgrdtbvCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
      var AHandled: Boolean);
    procedure dxbrcmbPageIndexChange(Sender: TObject);
    procedure btRightClick(Sender: TObject);
    procedure btLeftClick(Sender: TObject);
    procedure btFirstClick(Sender: TObject);
    procedure btLastClick(Sender: TObject);
  private
    sWhere: string;
    procedure SplitPage(var qyFind: TADOQuery; PageSize: Integer; PageObject: TdxBarCombo; PageContent: TcxBarEditItem; bClear: Boolean);
    { Private declarations }
  public
    sBillNo: string;
    bHasSelect: Boolean;
    { Public declarations }
  end;

var
  RequireFindFM: TRequireFindFM;

implementation

uses RequirePS, DataPS, PublicPS, DeptQPS;
{$R *.dfm}

procedure TRequireFindFM.SplitPage(var qyFind: TADOQuery; PageSize: Integer; PageObject: TdxBarCombo; PageContent: TcxBarEditItem; bClear: Boolean);
var
  i, j: integer;
begin
  try
    try
      with DataFM.spTemp do
      begin
        if Active then Close;
        Parameters.Clear;
        Procedurename := 'prSplitPage;1';
        Parameters.AddParameter.Name := '@StrSql';
        Parameters[0].Direction := pdInPut;
        Parameters[0].DataType := ftString;
        Parameters[0].Size := 8000;
        Parameters[0].Value := qyFind.SQL.Text;
        Parameters.AddParameter.Name := '@PageIndex';
        Parameters[1].Direction := pdInPut;
        Parameters[1].DataType := ftInteger;
        if PageObject.Text <> '' then
          Parameters[1].Value := StrToInt(PageObject.Text)
        else
          Parameters[1].Value := 1;
        Parameters.AddParameter.Name := '@PageSize';
        Parameters[2].Direction := pdInPut;
        Parameters[2].DataType := ftInteger;
        Parameters[2].Value := PageSize;
        open;
      end;
      DataFM.qyNullPage.Recordset := DataFM.spTemp.RecordSet;
      DataFM.qyPageContent.Recordset := DataFM.spTemp.NextRecordset(i);
      qyFind.Recordset := DataFM.spTemp.NextRecordset(i);
    finally
      DataFM.spTemp.Close;
    end;
    PageContent.Caption := DataFM.qyPageContent.FieldByName('PageContent').AsString;
    if bClear then
    begin
      PageObject.Items.Clear;
      for j := 1 to DataFM.qyPageContent.FieldByName('AllPageCount').AsInteger do
      begin
        PageObject.Items.Add(IntToStr(j));
      end;
    end;
  except
    on E: Exception do
      ShowBox(E.Message);
  end;
end;

procedure TRequireFindFM.btAllSelectClick(Sender: TObject);
var
  i: Integer;
  sNo: string;
begin
  sNo := RequireFM.qyHed.FieldByName('ReqNo').AsString;
  RequireFM.qyHed.First;
  for I := 0 to RequireFM.qyHed.FieldCount - 1 do
  begin
    if RequireFM.qyHed.State = dsBrowse then RequireFM.qyHed.Edit;
    RequireFM.qyHed.FieldByName('bSelect').AsBoolean := true;
    RequireFM.qyHed.Next;
  end;
  RequireFM.qyHed.Locate('ReqNo', sNo, []);
end;

procedure TRequireFindFM.btExitClick(Sender: TObject);
begin
  Close;
end;

procedure TRequireFindFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxrdgrpAudit.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(bMaxAudit,0)=0'
  else if cxrdgrpAudit.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(bMaxAudit,0)=1';
  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and ReqDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and ReqDate<=' + QuotedStr(trim(cxdtE.Text));
  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and ReqNo like ''%' + trim(cxEdtBillNo.text) + '%''';
  if cxEdtTheme.Text <> '' then
    sWhere := sWhere + ' and Theme like ''%' + trim(cxEdtTheme.text) + '%''';
  if btnDept.Text <> '' then
    sWhere := sWhere + ' and DeptId=' + QuotedStr(trim(btnDept.Properties.LookupItems.Text));
  with RequireFM.qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('select * from RequireHDTB where 1=1');
    SQL.Add(sWhere);
    //Open;
  end;
  SplitPage(RequireFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
end;

procedure TRequireFindFM.btFirstClick(Sender: TObject);
begin
  dxbrcmbPageIndex.ItemIndex := 0;
end;

procedure TRequireFindFM.btLastClick(Sender: TObject);
begin
  dxbrcmbPageIndex.ItemIndex := DataFM.qyPageContent.FieldByName('AllPageCount').AsInteger - 1;
end;

procedure TRequireFindFM.btLeftClick(Sender: TObject);
begin
  if dxbrcmbPageIndex.ItemIndex > 0 then
    dxbrcmbPageIndex.ItemIndex := dxbrcmbPageIndex.ItemIndex - 1;
end;

procedure TRequireFindFM.btnDeptPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  try
    try
      DeptQFM := TDeptQFM.Create(nil);
      DeptQFM.iSelectKind := 2; //ตฅัก
      DeptQFM.ShowModal;
      btnDept.Properties.LookupItems.Text := DeptQFM.sId;
      btnDept.Text := DeptQFM.sName;
    finally
      DeptQFM.Free;
      DeptQFM := nil;
    end;
  except
  end;
end;

procedure TRequireFindFM.btOkClick(Sender: TObject);
begin
  Close;
end;

procedure TRequireFindFM.btRightClick(Sender: TObject);
begin
  if dxbrcmbPageIndex.ItemIndex < DataFM.qyPageContent.FieldByName('AllPageCount').AsInteger - 1 then
    dxbrcmbPageIndex.ItemIndex := dxbrcmbPageIndex.ItemIndex + 1;
end;

procedure TRequireFindFM.btUnSelectClick(Sender: TObject);
var
  i: Integer;
  sNo: string;
begin
  sNo := RequireFM.qyHed.FieldByName('ReqNo').AsString;
  RequireFM.qyHed.First;
  for I := 0 to RequireFM.qyHed.FieldCount - 1 do
  begin
    if RequireFM.qyHed.State = dsBrowse then RequireFM.qyHed.Edit;
    RequireFM.qyHed.FieldByName('bSelect').AsBoolean := false;
    RequireFM.qyHed.Next
  end;
  RequireFM.qyHed.Locate('ReqNo', sNo, []);
end;

procedure TRequireFindFM.cxgrdtbvCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
  var AHandled: Boolean);
begin
  Clipboard.SetTextBuf(PChar(ACellViewInfo.Text));
end;

procedure TRequireFindFM.dxbrcmbPageIndexChange(Sender: TObject);
begin
  SplitPage(RequireFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, false);
end;

procedure TRequireFindFM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TRequireFindFM.FormCreate(Sender: TObject);
begin
  sBillNo := '';
end;

procedure TRequireFindFM.FormDestroy(Sender: TObject);
begin
  RequireFindFM := nil;
end;

end.
