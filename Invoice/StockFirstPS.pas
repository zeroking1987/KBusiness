unit StockFirstPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Base1PS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, cxGridCustomPopupMenu,
  cxGridPopupMenu, Menus, ADODB, dxBar, cxClasses, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls, ExtCtrls,
  cxButtonEdit, cxTextEdit, dxSkinOffice2010Blue, cxContainer,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, cxNavigator, cxLabel;

type
  TStockFirstFM = class(TBase1FM)
    qyHedAutoId: TAutoIncField;
    qyHedAccountNo: TStringField;
    qyHedAccountFlag: TStringField;
    qyHedFirstM: TFMTBCDField;
    qyHedBackM: TFMTBCDField;
    qyHedDebitM: TFMTBCDField;
    qyHedCreditM: TFMTBCDField;
    qyHedLastM: TFMTBCDField;
    qyHedMakeMan: TStringField;
    qyHedMakeManName: TStringField;
    cxgrdtbvAccountNo: TcxGridDBColumn;
    cxgrdtbvAccountFlag: TcxGridDBColumn;
    cxgrdtbvCustId: TcxGridDBColumn;
    cxgrdtbvCustName: TcxGridDBColumn;
    cxgrdtbvFirstM: TcxGridDBColumn;
    cxgrdbclmnMakeDate: TcxGridDBColumn;
    cxgrdtbvMakeManName: TcxGridDBColumn;
    qyHedMakeDate: TDateTimeField;
    strngfldHedPrvId: TStringField;
    qyHedStockM: TFMTBCDField;
    strngfldHedPrvName: TStringField;
    procedure btAddClick(Sender: TObject);
    procedure btAddLClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qyHedAfterInsert(DataSet: TDataSet);
    procedure qyHedCalcFields(DataSet: TDataSet);
    procedure btExitClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDelLClick(Sender: TObject);
    procedure btCheckClick(Sender: TObject);
    procedure btUnCheckClick(Sender: TObject);
    procedure cxgrdtbvCustIdPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    procedure ShowbtCheck;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StockFirstFM: TStockFirstFM;

implementation

uses DataPS, PublicPS, PrvQPS;
{$R *.dfm}

procedure TStockFirstFM.ShowbtCheck;
begin
  if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  StockAccountTB where AccountFlag=''已记账''') <> '' then
  begin
    btCheck.Enabled := False;
    btAdd.Enabled := False;
    btEdit.Enabled := False;
    btDel.Enabled := False;
  end
  else
  begin
    btCheck.Enabled := True;
    btAdd.Enabled := True;
    btEdit.Enabled := True;
    btDel.Enabled := true;
  end;

  if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  StockAccountTB where AccountFlag=''已记账''') = '' then
    btUnCheck.Enabled := False
  else if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  StockAccountTB where AccountNo>' + QuotedStr(sStockStartMon)) <> '' then
    btUnCheck.Enabled := False
  else
  begin
    btUnCheck.Enabled := True;
  end;
end;

procedure TStockFirstFM.btAddClick(Sender: TObject);
var
  i: Integer;
begin
  try
    if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  StockAccountTB where AccountFlag=''已记账''') <> '' then
    begin
      ShowWarn('期初登记已经记过账，不能再修改!');
      exit;
    end;
    if (sStockStartMon = '') then
    begin
      ShowWarn('请先到参数设置中设置应付启用月份！');
      Exit;
    end;
    TextReadOnly(Self, false);
    cxgrdtbv.DataController.GetItemByFieldName('AccountNo').Options.Editing := false;
    cxgrdtbv.DataController.GetItemByFieldName('PrvName').Options.Editing := false;
    cxgrdtbv.DataController.GetItemByFieldName('AccountFlag').Options.Editing := false;
    cxgrdtbv.DataController.GetItemByFieldName('MakeManName').Options.Editing := false;
    cxgrdtbv.DataController.GetItemByFieldName('MakeDate').Options.Editing := false;

    inherited;
    qyHed.Append;
  except
    on E: Exception do
      ShowWarn(E.Message);
  end;
end;

procedure TStockFirstFM.btAddLClick(Sender: TObject);
begin
  try
    inherited;
    qyHed.Append;
  except
  end;
end;

procedure TStockFirstFM.btCancelClick(Sender: TObject);
begin
  qyHed.CancelBatch();
  TextReadOnly(Self, True);
  inherited;
end;

procedure TStockFirstFM.btCheckClick(Sender: TObject);
begin
  try
    //先判断记账月份是否于公司设置的仓库启用月份一致
    if qyHed.RecordCount = 0 then Exit;

    if (sStockStartMon = '') then
    begin
      ShowWarn('请先到参数设置中设置应付启用月份！');
      Exit;
    end;

    if qyHed.FieldByName('AccountNo').AsString <> sStockStartMon then
    begin
      ShowWarn('期初记账月份与公司应付启用月份不一致,不能记账!');
      exit;
    end;

    if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  StockAccountTB where AccountFlag=''已记账''') <> '' then
    begin
      ShowWarn('期初登记已经记过账，无需再次记账!');
      exit;
    end;

    if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  StockAccountTB where AccountNo>' + QuotedStr(sStockStartMon)) <> '' then
    begin
      ShowWarn('已经做过月结，不能记账!');
      exit;
    end;
    //开始记账
    if ShowDlg('你确认已把所有期初数据已登记完毕进行记账吗？') then
    begin
      try
        with DataFM.spTemp do
        begin
          if Active then Close;
          Parameters.Clear;
          Procedurename := 'prStockFirstAccount;1';
          Parameters.AddParameter.Name := '@AccountMan';
          Parameters[0].Direction := pdInPut;
          Parameters[0].DataType := ftString;
          Parameters[0].Size := 50;
          Parameters[0].Value := LoginEmpId;
          Parameters.AddParameter.Name := '@iFlag';
          Parameters[1].Direction := pdInPut;
          Parameters[1].DataType := ftInteger;
          Parameters[1].Value := 1;
          execproc;
        end;
        ShowBox('记账成功!');
      finally
        DataFM.spTemp.Close;
        qyHed.Requery;
        showbtCheck;
      end;
    end;
  except
    on E: Exception do
      ShowWarn(E.Message);
  end;
end;

procedure TStockFirstFM.btDelLClick(Sender: TObject);
begin
  try
    qyHed.Delete;
  except
    ShowError('删除失败！');
  end;
end;

procedure TStockFirstFM.btEditClick(Sender: TObject);
var
  i: Integer;
begin
  if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  StockAccountTB where AccountFlag=''已记账''') <> '' then
  begin
    ShowWarn('期初登记已经记过账，不能再修改!');
    exit;
  end;
  TextReadOnly(Self, false);
  cxgrdtbv.DataController.GetItemByFieldName('AccountNo').Options.Editing := false;
  cxgrdtbv.DataController.GetItemByFieldName('PrvName').Options.Editing := false;
  cxgrdtbv.DataController.GetItemByFieldName('AccountFlag').Options.Editing := false;
  cxgrdtbv.DataController.GetItemByFieldName('MakeManName').Options.Editing := false;
  cxgrdtbv.DataController.GetItemByFieldName('MakeDate').Options.Editing := false;
  inherited;
  qyHed.Edit;
end;

procedure TStockFirstFM.btExitClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TStockFirstFM.btSaveClick(Sender: TObject);
begin
  try
    qyHed.UpdateBatch;
    TextReadOnly(Self, True);
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

procedure TStockFirstFM.btUnCheckClick(Sender: TObject);
begin
  try
    if qyHed.RecordCount = 0 then Exit;
    if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  StockAccountTB where AccountFlag=''已记账''') = '' then
    begin
      ShowWarn('期初登记还未过账，无需反记账!');
      exit;
    end;

    if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  StockAccountTB where AccountNo>' + QuotedStr(sStockStartMon)) <> '' then
    begin
      ShowWarn('已经做过月结，不能反记账!');
      exit;
    end;
    //开始反记账
    if ShowDlg('你确认要进行反记账吗？') then
    begin
      try
        with DataFM.spTemp do
        begin
          if Active then Close;
          Parameters.Clear;
          Procedurename := 'prStockFirstAccount;1';
          Parameters.AddParameter.Name := '@AccountMan';
          Parameters[0].Direction := pdInPut;
          Parameters[0].DataType := ftString;
          Parameters[0].Size := 50;
          Parameters[0].Value := LoginEmpId;
          Parameters.AddParameter.Name := '@iFlag';
          Parameters[1].Direction := pdInPut;
          Parameters[1].DataType := ftInteger;
          Parameters[1].Value := -1;
          Open;
        end;
        if DataFM.spTemp.FieldByName('ReturStr').AsString <> '' then
        begin
          ShowBox(DataFM.spTemp.FieldByName('ReturStr').AsString);
        end;
      finally
        DataFM.spTemp.Close;
        qyHed.Requery;
        ShowbtCheck;
        // ShowBox('反记账成功!');
      end;
    end;
  except
    on E: Exception do
      ShowWarn(E.Message);
  end;
end;

procedure TStockFirstFM.cxgrdtbvCustIdPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  i: Integer;
begin
  if btSave.Enabled = False then Exit;
  try
    PrvQFM := TPrvQFM.Create(nil);
    PrvQFM.iSelectKind := 1;
    PrvQFM.btFindClick(Sender);
    PrvQFM.ShowModal;
    if PrvQFM.bHasSelect then
    begin
      PrvQFM.qyFind.Filter := ' bSelect=1';
      PrvQFM.qyFind.Filtered := true;
      PrvQFM.qyFind.First;
      for i := 0 to PrvQFM.qyFind.RecordCount - 1 do
      begin
        if i = 0 then
          qyHed.Edit
        else
          qyHed.Append;
        qyHed.FieldByName('PrvId').AsString := PrvQFM.qyFind.FieldByName('PrvId').AsString;
        qyHed.post;
        PrvQFM.qyFind.Next;
      end;
    end;
  finally
    PrvQFM.Free;
    PrvQFM := nil;
  end;
end;

procedure TStockFirstFM.FormCreate(Sender: TObject);
begin
  sFMId := 'StockFirstFM';
  sFMName := Self.Caption;
  sTableId := 'StockAccountTB';
  inherited;
  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('select * from StockAccountTB where AccountFlag<>''月结'' and AccountNo=' + QuotedStr(sStockStartMon));
    Open;
  end;
end;

procedure TStockFirstFM.FormDestroy(Sender: TObject);
begin
  inherited;
  StockFirstFM := nil;
end;

procedure TStockFirstFM.FormShow(Sender: TObject);
begin
  inherited;
  TextReadOnly(Self, True);
end;

procedure TStockFirstFM.qyHedAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyHed.FieldByName('AccountNo').AsString := sStockStartMon;
  qyHed.FieldByName('AccountFlag').AsString := '未记账';
  qyHed.FieldByName('MakeMan').AsString := LoginEmpId;
  qyHed.FieldByName('MakeManName').AsString := LoginEmpName;
  qyHed.FieldByName('MakeDate').AsDateTime := SysDateTime;
end;

procedure TStockFirstFM.qyHedCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyHed, DataFM.qyPrv, ['PrvId', 'PrvName'], ['PrvId', 'PrvName']);
end;

end.
