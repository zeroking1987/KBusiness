unit RequireQPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BasePS, dxSkinsCore, dxSkinsdxBarPainter, dxSkinsDefaultPainters, DB, ADODB,
  dxBar, cxClasses, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxPC, ExtCtrls, cxBarEditItem, cxContainer, cxButtonEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxTextEdit, StdCtrls, cxGroupBox, cxRadioGroup, Clipbrd, cxLabel, Menus, cxGridCustomPopupMenu,
  cxGridPopupMenu, frxClass, frxDBSet, cxPCdxBarPopupMenu, dxSkinOffice2010Blue,
  Vcl.ComCtrls, dxCore, cxDateUtils;

type
  TRequireQFM = class(TBaseFM)
    pnl1: TPanel;
    pnl2: TPanel;
    cxpgcntrl1: TcxPageControl;
    cxtbsht1: TcxTabSheet;
    dxbrcmbPageIndex: TdxBarCombo;
    cxbrdtmPage: TcxBarEditItem;
    Lablbl2: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    cxEdtBillNo: TcxTextEdit;
    cxdtS: TcxDateEdit;
    cxdtE: TcxDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    cxEdtTheme: TcxTextEdit;
    btnDept: TcxButtonEdit;
    cxrdgrpAudit: TcxRadioGroup;
    Label5: TLabel;
    btnItemName: TcxButtonEdit;
    cxgrdpmn1: TcxGridPopupMenu;
    pmLayout: TPopupMenu;
    mniNCustomGrd: TMenuItem;
    mniNSaveGrd: TMenuItem;
    mniNDelGrd: TMenuItem;
    cxgrd: TcxGrid;
    cxgrdtbv: TcxGridDBTableView;
    cxgrdlev: TcxGridLevel;
    frxHed: TfrxDBDataset;
    labTitle: TLabel;
    cxgrdtbvReqDate: TcxGridDBColumn;
    cxgrdtbvReqNO: TcxGridDBColumn;
    cxgrdtbvDeptName: TcxGridDBColumn;
    cxgrdtbvTheme: TcxGridDBColumn;
    cxgrdtbvItemCode: TcxGridDBColumn;
    cxgrdtbvItemName: TcxGridDBColumn;
    cxgrdtbvItemSpc: TcxGridDBColumn;
    cxgrdtbvItemUnit: TcxGridDBColumn;
    cxgrdtbvSubUnit: TcxGridDBColumn;
    cxgrdtbvExchRate: TcxGridDBColumn;
    cxgrdtbvProType: TcxGridDBColumn;
    cxgrdtbvReqNum: TcxGridDBColumn;
    cxgrdtbvSubNum: TcxGridDBColumn;
    cxgrdtbvRemark: TcxGridDBColumn;
    cxgrdbclmnColumn1: TcxGridDBColumn;
    cxgrdbclmnColumn2: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btFirstClick(Sender: TObject);
    procedure btLastClick(Sender: TObject);
    procedure btLeftClick(Sender: TObject);
    procedure btRightClick(Sender: TObject);
    procedure btnDeptPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxgrdtbvCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
      var AHandled: Boolean);
    procedure dxbrcmbPageIndexChange(Sender: TObject);
    procedure btnItemNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure mniNCustomGrdClick(Sender: TObject);
    procedure mniNDelGrdClick(Sender: TObject);
    procedure mniNSaveGrdClick(Sender: TObject);
    procedure cxgrdtbvDblClick(Sender: TObject);
  private
    sWhere: string;
    procedure SplitPage(var qyFind: TADOQuery; PageSize: Integer; PageObject: TdxBarCombo; PageContent: TcxBarEditItem; bClear: Boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RequireQFM: TRequireQFM;

implementation

uses PublicPS, ControlPublicPS, DataPS, DeptQPS, ItemQPS, RequirePS;
{$R *.dfm}

procedure TRequireQFM.SplitPage(var qyFind: TADOQuery; PageSize: Integer; PageObject: TdxBarCombo; PageContent: TcxBarEditItem; bClear: Boolean);
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
        Parameters[0].Value := qyHed.SQL.Text;
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
      qyHed.Recordset := DataFM.spTemp.NextRecordset(i);
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

procedure TRequireQFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxrdgrpAudit.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(a.bMaxAudit,0)=0'
  else if cxrdgrpAudit.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(a.bMaxAudit,0)=1';
  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and a.ReqDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and a.ReqDate<=' + QuotedStr(trim(cxdtE.Text));
  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and a.ReqNo like ''%' + trim(cxEdtBillNo.text) + '%''';
  if cxEdtTheme.Text <> '' then
    sWhere := sWhere + ' and a.Theme like ''%' + trim(cxEdtTheme.text) + '%''';
  if btnDept.Text <> '' then
    sWhere := sWhere + ' and a.DeptId=' + QuotedStr(trim(btnDept.Properties.LookupItems.Text));
  if btnItemName.Text <> '' then
    sWhere := sWhere + ' and c.ItemName like ''%' + trim(btnItemName.text) + '%''';

  with RequireQFM.qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    sql.Add('select a.ReqDate,a.ReqNO,d.DeptName,a.Theme,b.ItemCode,c.ItemName,c.ItemSpc,b.ItemUnit,b.SubUnit,b.ExchRate,');
    sql.Add('b.ProType,b.sColor,b.ReqNum,b.SubNum,b.NeedDate,a.Remark');
    sql.Add('from RequireHDTB a left join RequireDTTB b on a.ReqNO=b.ReqNO');
    sql.Add('left join ItemTB c on b.ItemID=c.ItemId');
    sql.Add('left join DeptTB d on a.DeptId=d.DeptId');
    sql.Add('where 1=1');
    SQL.Add(sWhere);
  end;
  SplitPage(RequireQFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
end;

procedure TRequireQFM.btFirstClick(Sender: TObject);
begin
  dxbrcmbPageIndex.ItemIndex := 0;
end;

procedure TRequireQFM.btLastClick(Sender: TObject);
begin
  dxbrcmbPageIndex.ItemIndex := DataFM.qyPageContent.FieldByName('AllPageCount').AsInteger - 1;
end;

procedure TRequireQFM.btLeftClick(Sender: TObject);
begin
  if dxbrcmbPageIndex.ItemIndex > 0 then
    dxbrcmbPageIndex.ItemIndex := dxbrcmbPageIndex.ItemIndex - 1;
end;

procedure TRequireQFM.btnDeptPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TRequireQFM.btnItemNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  try
    try
      ItemQFM := TItemQFM.Create(nil);
      ItemQFM.iSelectKind := 2;
      ItemQFM.btFindClick(Sender);
      ItemQFM.ShowModal;

      btnItemName.Properties.LookupItems.Text := ItemQFM.sId;
      btnItemName.Text := ItemQFM.sName;
    finally
      ItemQFM.Free;
      ItemQFM := nil;
    end;
  except
  end;
end;

procedure TRequireQFM.btRightClick(Sender: TObject);
begin
  if dxbrcmbPageIndex.ItemIndex < DataFM.qyPageContent.FieldByName('AllPageCount').AsInteger - 1 then
    dxbrcmbPageIndex.ItemIndex := dxbrcmbPageIndex.ItemIndex + 1;
end;

procedure TRequireQFM.cxgrdtbvCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
  var AHandled: Boolean);
begin
  inherited;
  Clipboard.SetTextBuf(PChar(ACellViewInfo.Text));
end;

procedure TRequireQFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  BillView('RequireHDTB', 'select * from RequireHDTB where ReqNo=' + QuotedStr(qyHed.FieldByName('ReqNo').AsString));
end;

procedure TRequireQFM.dxbrcmbPageIndexChange(Sender: TObject);
begin
  SplitPage(RequireQFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, false);
end;

procedure TRequireQFM.FormCreate(Sender: TObject);
begin
  GetGrd(Self, cxgrdtbv);
  sFMId := 'RequireQFM';
  sFMName := Self.Caption;
  sTableId := 'RequireQFM';
  inherited;
end;

procedure TRequireQFM.FormDestroy(Sender: TObject);
begin
  RequireQFM := nil;
end;

procedure TRequireQFM.mniNCustomGrdClick(Sender: TObject);
begin
  inherited;
  CustomGrd(cxgrd);
end;

procedure TRequireQFM.mniNDelGrdClick(Sender: TObject);
begin
  inherited;
  DelGrd(Self, cxgrdtbv);
end;

procedure TRequireQFM.mniNSaveGrdClick(Sender: TObject);
begin
  inherited;
  SaveGrd(Self, cxgrdtbv);
end;

end.
