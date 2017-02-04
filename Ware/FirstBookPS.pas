unit FirstBookPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Base1PS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, cxGridCustomPopupMenu,
  cxGridPopupMenu, Menus, ADODB, dxBar, cxClasses, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls, ExtCtrls,
  cxButtonEdit, cxTextEdit, dxSkinOffice2010Blue, dxSkinDevExpressStyle,
  dxSkinSpringTime, dxSkinValentine, cxContainer, cxNavigator, cxLabel;

type
  TFirstBookFM = class(TBase1FM)
    qyHedAccountNo: TStringField;
    qyHedWareId: TStringField;
    qyHedItemId: TStringField;
    qyHedItemCode: TStringField;
    qyHedProType: TStringField;
    qyHedColor: TStringField;
    qyHedBatchNo: TStringField;
    qyHedPlaceNo: TStringField;
    qyHedCompactNo: TStringField;
    qyHedObjectId: TStringField;
    qyHedSjNo: TStringField;
    qyHedTechName: TStringField;
    qyHedInDate: TStringField;
    qyHedPState: TStringField;
    qyHedTempNo: TStringField;
    fmtbcdfldHedFirstNum: TFMTBCDField;
    fmtbcdfldHedFirstPrice: TFMTBCDField;
    fmtbcdfldHedFirstMoney: TFMTBCDField;
    fmtbcdfldHedInNum: TFMTBCDField;
    fmtbcdfldHedInPrice: TFMTBCDField;
    fmtbcdfldHedInMoney: TFMTBCDField;
    fmtbcdfldHedOutNum: TFMTBCDField;
    fmtbcdfldHedOutPrice: TFMTBCDField;
    fmtbcdfldHedOutMoney: TFMTBCDField;
    fmtbcdfldHedLastNum: TFMTBCDField;
    fmtbcdfldHedLastPrice: TFMTBCDField;
    fmtbcdfldHedLastMoney: TFMTBCDField;
    qyHedMakeMan: TStringField;
    qyHedMakeManName: TStringField;
    dtmfldHedMakeDate: TDateTimeField;
    qyHedAccountFlag: TStringField;
    qyHedWareName: TStringField;
    qyHedItemName: TStringField;
    qyHedItemSpc: TStringField;
    qyHedObjectName: TStringField;
    cxgrdbclmnAccountNo: TcxGridDBColumn;
    cxgrdbclmnWareId: TcxGridDBColumn;
    cxgrdbclmnWareName: TcxGridDBColumn;
    cxgrdbclmnItemId: TcxGridDBColumn;
    cxgrdbclmnItemCode: TcxGridDBColumn;
    cxgrdbclmnItemName: TcxGridDBColumn;
    cxgrdbclmnItemSpc: TcxGridDBColumn;
    cxgrdbclmnProType: TcxGridDBColumn;
    cxgrdbclmnColor: TcxGridDBColumn;
    cxgrdbclmnBatchNo: TcxGridDBColumn;
    cxgrdbclmnPlaceNo: TcxGridDBColumn;
    cxgrdbclmnCompactNo: TcxGridDBColumn;
    cxgrdbclmnObjectId: TcxGridDBColumn;
    cxgrdbclmnObjectName: TcxGridDBColumn;
    cxgrdbclmnTechName: TcxGridDBColumn;
    cxgrdbclmnPState: TcxGridDBColumn;
    cxgrdbclmnFirstNum: TcxGridDBColumn;
    cxgrdbclmnFirstPrice: TcxGridDBColumn;
    cxgrdbclmnFirstMoney: TcxGridDBColumn;
    cxgrdbclmnMakeMan: TcxGridDBColumn;
    cxgrdbclmnMakeManName: TcxGridDBColumn;
    cxgrdbclmnMakeDate: TcxGridDBColumn;
    cxgrdbclmnAccountFlag: TcxGridDBColumn;
    qyHedItemUnit: TStringField;
    cxgrdbclmnItemUnit: TcxGridDBColumn;
    qyHedAutoId: TAutoIncField;
    qyHedsOrderNo: TStringField;
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
    procedure cxgrdbclmnWareNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxgrdbclmnItemCodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxgrdbclmnFirstNumPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdbclmnFirstPricePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure btCancelClick(Sender: TObject);
    procedure btDelLClick(Sender: TObject);
    procedure btCheckClick(Sender: TObject);
    procedure btUnCheckClick(Sender: TObject);
    procedure cxgrdbclmnProTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxgrdbclmnColorPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    procedure showbtCheck;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FirstBookFM: TFirstBookFM;

implementation

uses DataPS, PublicPS, ItemQPS;
{$R *.dfm}

procedure TFirstBookFM.showbtCheck;
begin
  if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  WareAccountTB where AccountFlag=''已记账''') <> '' then
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
  if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  WareAccountTB where AccountFlag=''已记账''') = '' then
    btUnCheck.Enabled := False
  else if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  WareAccountTB where AccountNo>' + QuotedStr(sWareStartMon)) <> '' then
    btUnCheck.Enabled := False
  else
  begin
    btUnCheck.Enabled := True;
  end;
end;

procedure TFirstBookFM.btAddClick(Sender: TObject);
var
  i: Integer;
begin
  try
    if (sWareStartMon = '') then
    begin
      ShowWarn('请先到参数设置中设置仓库启用月份！');
      Exit;
    end;
    TextReadOnly(Self, false);
    cxgrdtbv.DataController.GetItemByFieldName('AccountNo').Options.Editing := false;
    cxgrdtbv.DataController.GetItemByFieldName('ItemName').Options.Editing := false;
    cxgrdtbv.DataController.GetItemByFieldName('ItemSpc').Options.Editing := false;
    cxgrdtbv.DataController.GetItemByFieldName('ItemUnit').Options.Editing := false;
    cxgrdtbv.DataController.GetItemByFieldName('AccountFlag').Options.Editing := false;
    cxgrdtbv.DataController.GetItemByFieldName('MakeMan').Options.Editing := false;
    cxgrdtbv.DataController.GetItemByFieldName('MakeManName').Options.Editing := false;
    cxgrdtbv.DataController.GetItemByFieldName('MakeDate').Options.Editing := false;

    inherited;
    qyHed.Append;
  except
    on E: Exception do
      ShowError(E.Message);
  end;
end;

procedure TFirstBookFM.btAddLClick(Sender: TObject);
begin
  try
    inherited;
    qyHed.Append;
  except
  end;
end;

procedure TFirstBookFM.btCancelClick(Sender: TObject);
begin
  qyHed.CancelBatch();
  TextReadOnly(Self, True);
  inherited;
end;

procedure TFirstBookFM.btCheckClick(Sender: TObject);
begin
  try
    //先判断记账月份是否于公司设置的仓库启用月份一致
    if qyHed.RecordCount = 0 then Exit;

    if (sWareStartMon = '') then
    begin
      ShowWarn('请先到参数设置中设置仓库启用月份！');
      Exit;
    end;

    if qyHed.FieldByName('AccountNo').AsString <> sWareStartMon then
    begin
      ShowWarn('期初记账月份与公司仓库启用月份不一致,不能记账!');
      exit;
    end;

    if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  WareAccountTB where AccountFlag=''已记账''') <> '' then
    begin
      ShowWarn('期初登记已经记过账，无需再次记账!');
      exit;
    end;

    if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  WareAccountTB where AccountNo>' + QuotedStr(sWareStartMon)) <> '' then
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
          Procedurename := 'prWareFirstAccount;1';
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
    ShowError('记账失败!');
  end;
end;

procedure TFirstBookFM.btDelLClick(Sender: TObject);
begin
  try
    qyHed.Delete;
  except
    ShowError('删除失败！');
  end;
end;

procedure TFirstBookFM.btEditClick(Sender: TObject);
var
  i: Integer;
begin
  if (sWareStartMon = '') then
  begin
    ShowWarn('请先到参数设置中设置仓库启用月份！');
    Exit;
  end;
  TextReadOnly(Self, false);
  cxgrdtbv.DataController.GetItemByFieldName('AccountNo').Options.Editing := false;
  cxgrdtbv.DataController.GetItemByFieldName('ItemName').Options.Editing := false;
  cxgrdtbv.DataController.GetItemByFieldName('ItemSpc').Options.Editing := false;
  cxgrdtbv.DataController.GetItemByFieldName('ItemUnit').Options.Editing := false;
  cxgrdtbv.DataController.GetItemByFieldName('AccountFlag').Options.Editing := false;
  cxgrdtbv.DataController.GetItemByFieldName('MakeMan').Options.Editing := false;
  cxgrdtbv.DataController.GetItemByFieldName('MakeManName').Options.Editing := false;
  cxgrdtbv.DataController.GetItemByFieldName('MakeDate').Options.Editing := false;

  inherited;
  qyHed.Edit;
end;

procedure TFirstBookFM.btExitClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFirstBookFM.btSaveClick(Sender: TObject);
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

procedure TFirstBookFM.btUnCheckClick(Sender: TObject);
begin
  try
    if qyHed.RecordCount = 0 then Exit;
    if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  WareAccountTB where AccountFlag=''已记账''') = '' then
    begin
      ShowWarn('期初登记还未过账，无需反记账!');
      exit;
    end;

    if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  WareAccountTB where AccountNo>' + QuotedStr(sWareStartMon)) <> '' then
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
          Procedurename := 'prWareFirstAccount;1';
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
    ShowError('反记账失败!');
  end;
end;

procedure TFirstBookFM.cxgrdbclmnColorPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  ColorSelect(btSave.Enabled, qyHed, 'Color', 2);
end;

procedure TFirstBookFM.cxgrdbclmnFirstNumPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := False;
  qyHed.FieldByName('FirstNum').AsString := DisplayValue;
  qyHed.FieldByName('FirstMoney').AsFloat := DisplayValue * qyHed.FieldByName('FirstPrice').AsFloat;
end;

procedure TFirstBookFM.cxgrdbclmnFirstPricePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := False;
  qyHed.FieldByName('FirstPrice').AsString := DisplayValue;
  qyHed.FieldByName('FirstMoney').AsFloat := DisplayValue * qyHed.FieldByName('FirstNum').AsFloat;
end;

procedure TFirstBookFM.cxgrdbclmnItemCodePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  i: Integer;
begin
  if btSave.Enabled = False then Exit;
  try
    ItemQFM := TItemQFM.Create(nil);
    ItemQFM.iSelectKind := 1;
    ItemQFM.btFindClick(Sender);
    ItemQFM.ShowModal;
    if ItemQFM.bHasSelect then
    begin
      ItemQFM.qyFind.Filter := ' bSelect=1';
      ItemQFM.qyFind.Filtered := true;
      ItemQFM.qyFind.First;
      for i := 0 to ItemQFM.qyFind.RecordCount - 1 do
      begin
        if i = 0 then
          qyHed.Edit
        else
          qyHed.Append;
        qyHed.FieldByName('ItemId').AsString := ItemQFM.qyFind.FieldByName('ItemId').AsString;
        qyHed.FieldByName('ItemCode').AsString := ItemQFM.qyFind.FieldByName('ItemCode').AsString;
        qyHed.post;
        ItemQFM.qyFind.Next;
      end;
    end;
  finally
    ItemQFM.Free;
    ItemQFM := nil;
  end;
end;

procedure TFirstBookFM.cxgrdbclmnProTypePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  ProTypeSelect(btSave.Enabled, qyHed, 'ProType', 2);
end;

procedure TFirstBookFM.cxgrdbclmnWareNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  WareSelect(btSave.Enabled, qyHed, 'WareId', 2);
end;

procedure TFirstBookFM.FormCreate(Sender: TObject);
begin
  sFMId := 'FirstBookFM';
  sFMName := Self.Caption;
  sTableId := 'WareAccountTB';
  inherited;
  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('select * from WareAccountTB where AccountFlag<>''月结'' and AccountNo=' + QuotedStr(sWareStartMon));
    Open;
  end;
end;

procedure TFirstBookFM.FormDestroy(Sender: TObject);
begin
  inherited;
  FirstBookFM := nil;
end;

procedure TFirstBookFM.FormShow(Sender: TObject);
begin
  inherited;
  TextReadOnly(Self, True);
  showbtCheck;
  cxgrdtbv.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
end;

procedure TFirstBookFM.qyHedAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyHed.FieldByName('AccountNo').AsString := sWareStartMon;
  qyHed.FieldByName('AccountFlag').AsString := '未记账';
  qyHed.FieldByName('MakeMan').AsString := LoginEmpId;
  qyHed.FieldByName('MakeManName').AsString := LoginEmpName;
  qyHed.FieldByName('MakeDate').AsDateTime := SysDateTime;
end;

procedure TFirstBookFM.qyHedCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyHed, DataFM.qyItem, ['ItemId', 'ItemName', 'ItemSpc', 'ItemUnit'], ['ItemId', 'ItemName', 'ItemSpc', 'ItemUnit']);
  CalcField(qyHed, DataFM.qyWare, ['WareId', 'WareName'], ['WareId', 'WareName']);
end;

end.
