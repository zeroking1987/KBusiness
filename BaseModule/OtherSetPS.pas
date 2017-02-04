unit OtherSetPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Base1PS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, cxGridCustomPopupMenu,
  cxGridPopupMenu, Menus, ADODB, dxBar, cxClasses, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls, ExtCtrls, cxPC,
  cxDropDownEdit, cxPCdxBarPopupMenu, dxSkinOffice2010Blue,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, cxContainer,
  cxNavigator, dxBarBuiltInMenu, cxLabel;

type
  TOtherSetFM = class(TBase1FM)
    cxpgc: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxgrd1: TcxGrid;
    cxgrdtbv1: TcxGridDBTableView;
    cxgrdlev1: TcxGridLevel;
    cxtbsht1: TcxTabSheet;
    qyHedAutoId: TAutoIncField;
    qyHedUnitId: TStringField;
    qyHedUnitName: TStringField;
    qyHedRemark: TStringField;
    cxgrdtbv1UnitId: TcxGridDBColumn;
    cxgrdtbv1UnitName: TcxGridDBColumn;
    cxgrdtbv1Remark: TcxGridDBColumn;
    cxtbsht2: TcxTabSheet;
    cxgrd2: TcxGrid;
    cxgrdtbv2: TcxGridDBTableView;
    cxgrdlev2: TcxGridLevel;
    cxgrd3: TcxGrid;
    cxgrdtbv3: TcxGridDBTableView;
    cxgrdlev3: TcxGridLevel;
    qy1: TADOQuery;
    AutoIncField1: TAutoIncField;
    ds1: TDataSource;
    qy2: TADOQuery;
    ds2: TDataSource;
    cxtbsht3: TcxTabSheet;
    cxgrd4: TcxGrid;
    cxgrdtbv4: TcxGridDBTableView;
    cxgrdlev4: TcxGridLevel;
    qy1CurrId: TStringField;
    qy1CurrName: TStringField;
    qy1CurrGlyph: TStringField;
    blnfldqy1bLocal: TBooleanField;
    fmtbcdfldqy1ExchangeRate: TFMTBCDField;
    qy1Remark: TStringField;
    qy2AutoId: TAutoIncField;
    qy2BankId: TStringField;
    qy2BankName: TStringField;
    qy2Remark: TStringField;
    qy3: TADOQuery;
    ds3: TDataSource;
    cxgrdbclmncxgrdtbv3CurrId: TcxGridDBColumn;
    cxgrdbclmncxgrdtbv3CurrName: TcxGridDBColumn;
    cxgrdbclmncxgrdtbv3CurrGlyph: TcxGridDBColumn;
    cxgrdbclmncxgrdtbv3bLocal: TcxGridDBColumn;
    cxgrdbclmncxgrdtbv3ExchangeRate: TcxGridDBColumn;
    cxgrdbclmncxgrdtbv3Remark: TcxGridDBColumn;
    cxgrdbclmncxgrdtbv2BankName: TcxGridDBColumn;
    cxgrdbclmncxgrdtbv2Remark: TcxGridDBColumn;
    cxgrdbclmncxgrdtbv4ModeName: TcxGridDBColumn;
    cxgrdbclmncxgrdtbv4Remark: TcxGridDBColumn;
    cxtbsht4: TcxTabSheet;
    qy4: TADOQuery;
    AutoIncField2: TAutoIncField;
    StringField3: TStringField;
    ds4: TDataSource;
    qy4PayModeId: TStringField;
    qy4PayModeName: TStringField;
    qy4PayModeKind: TStringField;
    cxgrd5: TcxGrid;
    cxgrdtbv5: TcxGridDBTableView;
    cxgrdbclmn1: TcxGridDBColumn;
    cxgrdbclmn2: TcxGridDBColumn;
    cxgrdlev5: TcxGridLevel;
    cxgrdbclmncxgrdtbv5Column1: TcxGridDBColumn;
    cxgrdbclmncxgrdtbv5Column2: TcxGridDBColumn;
    cxgrdtbv4Column1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btAddLClick(Sender: TObject);
    procedure btDelLClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btExitClick(Sender: TObject);
    procedure qyHedAfterInsert(DataSet: TDataSet);
    procedure qy1AfterInsert(DataSet: TDataSet);
    procedure qy2AfterInsert(DataSet: TDataSet);
    procedure qy3AfterInsert(DataSet: TDataSet);
    procedure qy4AfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OtherSetFM: TOtherSetFM;

implementation

uses PublicPS, DataPS;
{$R *.dfm}

procedure TOtherSetFM.btAddClick(Sender: TObject);
begin
  if cxpgc.ActivePageIndex = 0 then
    qyHed.Append
  else if cxpgc.ActivePageIndex = 1 then
    qy1.Append
  else if cxpgc.ActivePageIndex = 2 then
    qy2.Append
  else if cxpgc.ActivePageIndex = 3 then
    qy3.Append
  else if cxpgc.ActivePageIndex = 4 then
    qy4.Append;

  TextReadOnly(Self, False);
  inherited;
end;

procedure TOtherSetFM.btAddLClick(Sender: TObject);
begin
  if cxpgc.ActivePageIndex = 0 then
    qyHed.Append
  else if cxpgc.ActivePageIndex = 1 then
    qy1.Append
  else if cxpgc.ActivePageIndex = 2 then
    qy2.Append
  else if cxpgc.ActivePageIndex = 3 then
    qy3.Append
  else if cxpgc.ActivePageIndex = 4 then
    qy4.Append;
  inherited;
end;

procedure TOtherSetFM.btCancelClick(Sender: TObject);
begin
  if cxpgc.ActivePageIndex = 0 then
    qyHed.CancelBatch()
  else if cxpgc.ActivePageIndex = 1 then
    qy1.CancelBatch()
  else if cxpgc.ActivePageIndex = 2 then
    qy2.CancelBatch()
  else if cxpgc.ActivePageIndex = 3 then
    qy3.CancelBatch()
  else if cxpgc.ActivePageIndex = 4 then
    qy4.CancelBatch();
  TextReadOnly(Self, true);
  inherited;
end;

procedure TOtherSetFM.btDelLClick(Sender: TObject);
begin
  if cxpgc.ActivePageIndex = 0 then
    qyHed.Delete
  else if cxpgc.ActivePageIndex = 1 then
    qy1.Delete
  else if cxpgc.ActivePageIndex = 2 then
    qy2.Delete
  else if cxpgc.ActivePageIndex = 3 then
    qy3.Delete
  else if cxpgc.ActivePageIndex = 4 then
    qy4.Delete;
  inherited;
end;

procedure TOtherSetFM.btEditClick(Sender: TObject);
begin
  if cxpgc.ActivePageIndex = 0 then
    qyHed.Edit
  else if cxpgc.ActivePageIndex = 1 then
    qy1.Edit
  else if cxpgc.ActivePageIndex = 2 then
    qy2.Edit
  else if cxpgc.ActivePageIndex = 3 then
    qy3.Edit
  else if cxpgc.ActivePageIndex = 4 then
    qy4.Edit;
  TextReadOnly(Self, False);
  inherited;
end;

procedure TOtherSetFM.btExitClick(Sender: TObject);
begin
  inherited;
  CloseFrom(Self, TOtherSetFM);
end;

procedure TOtherSetFM.btSaveClick(Sender: TObject);
begin
  try
    if cxpgc.ActivePageIndex = 0 then
      qyHed.UpdateBatch()
    else if cxpgc.ActivePageIndex = 1 then
      qy1.UpdateBatch()
    else if cxpgc.ActivePageIndex = 2 then
      qy2.UpdateBatch()
    else if cxpgc.ActivePageIndex = 3 then
      qy3.UpdateBatch()
    else if cxpgc.ActivePageIndex = 4 then
      qy4.UpdateBatch();
    TextReadOnly(Self, true);
    ShowBox('±£´æ³É¹¦!');
    inherited;
  except
  end;
end;

procedure TOtherSetFM.FormCreate(Sender: TObject);
begin
  sFMId := 'OtherSetFM';
  sFMName := Self.Caption;
  inherited;
  qyHed.Open;
  qy1.Open;
  qy2.Open;
  qy3.Open;
  qy4.Open;
end;

procedure TOtherSetFM.FormDestroy(Sender: TObject);
begin
  inherited;
  OtherSetFM := nil;
end;

procedure TOtherSetFM.qy1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  qy1.FieldByName('bLocal').AsBoolean := False;
  qy1.FieldByName('Remark').AsString := '';
end;

procedure TOtherSetFM.qy2AfterInsert(DataSet: TDataSet);
begin
  inherited;
  qy2.FieldByName('Remark').AsString := '';
end;

procedure TOtherSetFM.qy3AfterInsert(DataSet: TDataSet);
begin
  inherited;
  qy3.FieldByName('Remark').AsString := '';
end;

procedure TOtherSetFM.qy4AfterInsert(DataSet: TDataSet);
begin
  inherited;
  qy4.FieldByName('Remark').AsString := '';
end;

procedure TOtherSetFM.qyHedAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyHed.FieldByName('Remark').AsString := '';
end;

end.
