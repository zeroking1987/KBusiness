unit CNAccNamePS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Base1PS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, cxGridCustomPopupMenu,
  cxGridPopupMenu, Menus, ADODB, dxBar, cxClasses, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls, ExtCtrls,
  cxButtonEdit, cxTextEdit, dxSkinOffice2010Blue, dxSkinDevExpressStyle,
  dxSkinSpringTime, dxSkinValentine, cxDropDownEdit, cxContainer, cxNavigator,
  cxLabel;

type
  TCNAccNameFM = class(TBase1FM)
    qyHedAutoID: TAutoIncField;
    qyHedbSelect: TBooleanField;
    qyHedAccName: TStringField;
    qyHedAccKind: TStringField;
    qyHedBankName: TStringField;
    qyHedCurName: TStringField;
    qyHedAccSubjectId: TStringField;
    qyHedRemark: TStringField;
    qyHedMakeDate: TDateTimeField;
    qyHedMakeMan: TStringField;
    qyHedMakeManName: TStringField;
    cxgrdtbvAccName: TcxGridDBColumn;
    cxgrdtbvAccKind: TcxGridDBColumn;
    cxgrdtbvBankName: TcxGridDBColumn;
    cxgrdtbvBankNo: TcxGridDBColumn;
    cxgrdtbvCurName: TcxGridDBColumn;
    cxgrdtbvAccSubjectId: TcxGridDBColumn;
    cxgrdtbvRemark: TcxGridDBColumn;
    cxgrdtbvMakeDate: TcxGridDBColumn;
    cxgrdtbvMakeManName: TcxGridDBColumn;
    qyHedBankId: TStringField;
    procedure btAddClick(Sender: TObject);
    procedure btAddLClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qyHedAfterInsert(DataSet: TDataSet);
    procedure btExitClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDelClick(Sender: TObject);
    procedure qyHedBankNameChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CNAccNameFM: TCNAccNameFM;

implementation

uses DataPS, PublicPS;

{$R *.dfm}



procedure TCNAccNameFM.btAddClick(Sender: TObject);
var
  i: Integer;
begin
  try
    TextReadOnly(Self, false);
    CxGridStyleReadOnly(cxgrdtbv);
    inherited;
    qyHed.Append;
  except
    on E: Exception do
      ShowError(E.Message);
  end;
end;

procedure TCNAccNameFM.btAddLClick(Sender: TObject);
begin
  try
    inherited;
    qyHed.Append;
  except
  end;
end;

procedure TCNAccNameFM.btCancelClick(Sender: TObject);
begin
  qyHed.CancelBatch();
  TextReadOnly(Self, True);
  CxGridStyleReadOnly(cxgrdtbv);
  inherited;
end;

procedure TCNAccNameFM.btDelClick(Sender: TObject);
begin
  inherited;
  try
   if ShowDlg('确定要删除吗？') then
   begin
     qyHed.Delete;
     qyHed.UpdateBatch();
     ShowBox('删除成功！');
   end;
  except
    ShowError('删除失败！');
  end;
end;

procedure TCNAccNameFM.btEditClick(Sender: TObject);
var
  i: Integer;
begin
  TextReadOnly(Self, false);
  CxGridStyleReadOnly(cxgrdtbv);
  inherited;
  qyHed.Edit;
end;

procedure TCNAccNameFM.btExitClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TCNAccNameFM.btSaveClick(Sender: TObject);
begin
  try
    qyHed.UpdateBatch;
    TextReadOnly(Self, True);
    CxGridStyleReadOnly(cxgrdtbv);
    inherited;
    ShowBox('保存成功!');
  except
    on E: Exception do
    begin
      if pos('不能将值', E.Message) > 0 then
        ShowError('请将必填项填写完整!')
      else if pos('插入重复键', e.Message) > 0 then
        ShowError('有数据重复!');
    end;
  end;
end;

procedure TCNAccNameFM.FormCreate(Sender: TObject);
begin
  sFMId := 'CNAccNameFM';
  sFMName := Self.Caption;
  sTableId := 'CNAccNameTB';
  inherited;
  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('select * from CNAccNameTB');
    Open;
  end;
end;

procedure TCNAccNameFM.FormDestroy(Sender: TObject);
begin
  inherited;
  CNAccNameFM := nil;
end;

procedure TCNAccNameFM.FormShow(Sender: TObject);
begin
  inherited;
  TextReadOnly(Self, True);
  CxGridStyleReadOnly(cxgrdtbv);
  cxgrdtbv.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
  InitCbb('select CurrName from CurrencyTB', cxgrdtbvCurName);
  InitCbb('select BankName from BankTB', cxgrdtbvBankName);
end;

procedure TCNAccNameFM.qyHedAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyHed.FieldByName('CurName').AsString := '人民币';
  qyHed.FieldByName('MakeMan').AsString := LoginEmpId;
  qyHed.FieldByName('MakeManName').AsString := LoginEmpName;
  qyHed.FieldByName('MakeDate').AsDateTime := SysDateTime;
end;

procedure TCNAccNameFM.qyHedBankNameChange(Sender: TField);
begin
  inherited;
  CalcField(qyHed, DataFM.qyBank, ['BankName', 'BankId'], ['BankName', 'BankId']);
end;

end.

