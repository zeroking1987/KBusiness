unit SaleFirstPS;

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
  TSaleFirstFM = class(TBase1FM)
    qyHedAutoId: TAutoIncField;
    qyHedAccountNo: TStringField;
    qyHedAccountFlag: TStringField;
    qyHedCustId: TStringField;
    qyHedFirstM: TFMTBCDField;
    qyHedSaleM: TFMTBCDField;
    qyHedBackM: TFMTBCDField;
    qyHedDebitM: TFMTBCDField;
    qyHedCreditM: TFMTBCDField;
    qyHedLastM: TFMTBCDField;
    qyHedMakeMan: TStringField;
    qyHedMakeManName: TStringField;
    qyHedCustName: TStringField;
    cxgrdtbvAccountNo: TcxGridDBColumn;
    cxgrdtbvAccountFlag: TcxGridDBColumn;
    cxgrdtbvCustId: TcxGridDBColumn;
    cxgrdtbvCustName: TcxGridDBColumn;
    cxgrdtbvFirstM: TcxGridDBColumn;
    cxgrdbclmnMakeDate: TcxGridDBColumn;
    cxgrdtbvMakeManName: TcxGridDBColumn;
    qyHedMakeDate: TDateTimeField;
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
  SaleFirstFM: TSaleFirstFM;

implementation

uses DataPS, PublicPS, CustQPS;
{$R *.dfm}

procedure TSaleFirstFM.ShowbtCheck;
begin
  if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  SaleAccountTB where AccountFlag=''已记账''') <> '' then
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

  if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  SaleAccountTB where AccountFlag=''已记账''') = '' then
    btUnCheck.Enabled := False
  else if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  SaleAccountTB where AccountNo>' + QuotedStr(sSaleStartMon)) <> '' then
    btUnCheck.Enabled := False
  else
  begin
    btUnCheck.Enabled := True;
  end;
end;

procedure TSaleFirstFM.btAddClick(Sender: TObject);
var
  i: Integer;
begin
  try
    if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  SaleAccountTB where AccountFlag=''已记账''') <> '' then
    begin
      ShowWarn('期初登记已经记过账,不能再修改!');
      exit;
    end;
    if (sSaleStartMon = '') then
    begin
      ShowWarn('请先到参数设置中设置应收启用月份！');
      Exit;
    end;
    TextReadOnly(Self, false);
    cxgrdtbv.DataController.GetItemByFieldName('AccountNo').Options.Editing := false;
    cxgrdtbv.DataController.GetItemByFieldName('CustName').Options.Editing := false;
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

procedure TSaleFirstFM.btAddLClick(Sender: TObject);
begin
  try
    inherited;
    qyHed.Append;
  except
  end;
end;

procedure TSaleFirstFM.btCancelClick(Sender: TObject);
begin
  qyHed.CancelBatch();
  TextReadOnly(Self, True);
  inherited;
end;

procedure TSaleFirstFM.btCheckClick(Sender: TObject);
begin
  try

    //先判断记账月份是否于公司设置的仓库启用月份一致
    if qyHed.RecordCount = 0 then Exit;

    if (sSaleStartMon = '') then
    begin
      ShowWarn('请先到参数设置中设置应收启用月份！');
      Exit;
    end;

    if qyHed.FieldByName('AccountNo').AsString <> sSaleStartMon then
    begin
      ShowWarn('期初记账月份与公司应收启用月份不一致,不能记账!');
      exit;
    end;

    if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  SaleAccountTB where AccountFlag=''已记账''') <> '' then
    begin
      ShowWarn('期初登记已经记过账，无需再次记账!');
      exit;
    end;

    if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  SaleAccountTB where AccountNo>' + QuotedStr(sSaleStartMon)) <> '' then
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
          Procedurename := 'prSaleFirstAccount;1';
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

procedure TSaleFirstFM.btDelLClick(Sender: TObject);
begin
  try
    qyHed.Delete;
  except
    ShowError('删除失败！');
  end;
end;

procedure TSaleFirstFM.btEditClick(Sender: TObject);
var
  i: Integer;
begin
  if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  SaleAccountTB where AccountFlag=''已记账''') <> '' then
  begin
    ShowWarn('期初登记已经记过账，不能再修改!');
    exit;
  end;
  TextReadOnly(Self, false);
  cxgrdtbv.DataController.GetItemByFieldName('AccountNo').Options.Editing := false;
  cxgrdtbv.DataController.GetItemByFieldName('CustName').Options.Editing := false;
  cxgrdtbv.DataController.GetItemByFieldName('AccountFlag').Options.Editing := false;
  cxgrdtbv.DataController.GetItemByFieldName('MakeManName').Options.Editing := false;
  cxgrdtbv.DataController.GetItemByFieldName('MakeDate').Options.Editing := false;
  inherited;
  qyHed.Edit;
end;

procedure TSaleFirstFM.btExitClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TSaleFirstFM.btSaveClick(Sender: TObject);
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

procedure TSaleFirstFM.btUnCheckClick(Sender: TObject);
begin
  try
    if qyHed.RecordCount = 0 then Exit;
    if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  SaleAccountTB where AccountFlag=''已记账''') = '' then
    begin
      ShowWarn('期初登记还未过账，无需反记账!');
      exit;
    end;

    if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  SaleAccountTB where AccountNo>' + QuotedStr(sSaleStartMon)) <> '' then
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
          Procedurename := 'prSaleFirstAccount;1';
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

procedure TSaleFirstFM.cxgrdtbvCustIdPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  i: Integer;
begin
  if btSave.Enabled = False then Exit;
  try
    CustQFM := TCustQFM.Create(nil);
    CustQFM.iSelectKind := 1;
    CustQFM.btFindClick(Sender);
    CustQFM.ShowModal;
    if CustQFM.bHasSelect then
    begin
      CustQFM.qyFind.Filter := ' bSelect=1';
      CustQFM.qyFind.Filtered := true;
      CustQFM.qyFind.First;
      for i := 0 to CustQFM.qyFind.RecordCount - 1 do
      begin
        if i = 0 then
          qyHed.Edit
        else
          qyHed.Append;
        qyHed.FieldByName('CustId').AsString := CustQFM.qyFind.FieldByName('CustId').AsString;
        qyHed.post;
        CustQFM.qyFind.Next;
      end;
    end;
  finally
    CustQFM.Free;
    CustQFM := nil;
  end;
end;

procedure TSaleFirstFM.FormCreate(Sender: TObject);
begin
  sFMId := 'SaleFirstFM';
  sFMName := Self.Caption;
  sTableId := 'SaleAccountTB';
  inherited;
  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('select * from SaleAccountTB where AccountFlag<>''月结'' and AccountNo=' + QuotedStr(sSaleStartMon));
    Open;
  end;
end;

procedure TSaleFirstFM.FormDestroy(Sender: TObject);
begin
  inherited;
  SaleFirstFM := nil;
end;

procedure TSaleFirstFM.FormShow(Sender: TObject);
begin
  inherited;
  TextReadOnly(Self, True);
  cxgrdtbv.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
end;

procedure TSaleFirstFM.qyHedAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyHed.FieldByName('AccountNo').AsString := sSaleStartMon;
  qyHed.FieldByName('AccountFlag').AsString := '未记账';
  qyHed.FieldByName('MakeMan').AsString := LoginEmpId;
  qyHed.FieldByName('MakeManName').AsString := LoginEmpName;
  qyHed.FieldByName('MakeDate').AsDateTime := SysDateTime;
end;

procedure TSaleFirstFM.qyHedCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyHed, DataFM.qyCust, ['CustId', 'CustName'], ['CustId', 'CustName']);
end;

end.
