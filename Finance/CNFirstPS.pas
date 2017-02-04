unit CNFirstPS;

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
  TCNFirstFM = class(TBase1FM)
    cxgrdtbvAccountNo: TcxGridDBColumn;
    cxgrdtbvAccountFlag: TcxGridDBColumn;
    cxgrdtbvAccName: TcxGridDBColumn;
    cxgrdtbvFirstM: TcxGridDBColumn;
    cxgrdbclmnMakeDate: TcxGridDBColumn;
    cxgrdtbvMakeManName: TcxGridDBColumn;
    qyHedAutoId: TAutoIncField;
    qyHedAccountNo: TStringField;
    qyHedAccountFlag: TStringField;
    qyHedAccName: TStringField;
    qyHedFirstM: TFMTBCDField;
    qyHedDebitM: TFMTBCDField;
    qyHedCreditM: TFMTBCDField;
    qyHedLastM: TFMTBCDField;
    qyHedMakeMan: TStringField;
    qyHedMakeManName: TStringField;
    qyHedMakeDate: TDateTimeField;
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
    procedure btDelLClick(Sender: TObject);
    procedure btCheckClick(Sender: TObject);
    procedure btUnCheckClick(Sender: TObject);
    procedure cxgrdtbvAccNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    procedure ShowbtCheck;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CNFirstFM: TCNFirstFM;

implementation

uses DataPS, PublicPS, CNAccNameQPS;
{$R *.dfm}

procedure TCNFirstFM.ShowbtCheck;
begin
  if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  CNAccountTB where AccountFlag=''已记账''') <> '' then
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

  if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  CNAccountTB where AccountFlag=''已记账''') = '' then
    btUnCheck.Enabled := False
  else if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  CNAccountTB where AccountNo>' + QuotedStr(sCNStartMon)) <> '' then
    btUnCheck.Enabled := False
  else
  begin
    btUnCheck.Enabled := True;
  end;
end;

procedure TCNFirstFM.btAddClick(Sender: TObject);
var
  i: Integer;
begin
  try
    if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  CNAccountTB where AccountFlag=''已记账''') <> '' then
    begin
      ShowWarn('期初登记已经记过账,不能再修改!');
      exit;
    end;
    if (sCNStartMon = '') then
    begin
      ShowWarn('请先到参数设置中设置出纳启用月份！');
      Exit;
    end;
    TextReadOnly(Self, false);
    CxGridStyleReadOnly(cxgrdtbv);
    inherited;
    qyHed.Append;
  except
    on E: Exception do
      ShowWarn(E.Message);
  end;
end;

procedure TCNFirstFM.btAddLClick(Sender: TObject);
begin
  try
    inherited;
    qyHed.Append;
  except
  end;
end;

procedure TCNFirstFM.btCancelClick(Sender: TObject);
begin
  qyHed.CancelBatch();
  TextReadOnly(Self, True);
  inherited;
end;

procedure TCNFirstFM.btCheckClick(Sender: TObject);
begin
  try

    //先判断记账月份是否于公司设置的出纳启用月份一致
    if qyHed.RecordCount = 0 then Exit;

    if (sCNStartMon = '') then
    begin
      ShowWarn('请先到系统设置中设置出纳启用月份！');
      Exit;
    end;

    if qyHed.FieldByName('AccountNo').AsString <> sCNStartMon then
    begin
      ShowWarn('期初记账月份与系统设置出纳启用月份不一致,不能记账!');
      exit;
    end;

    if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  CNAccountTB where AccountFlag=''已记账''') <> '' then
    begin
      ShowWarn('期初登记已经记过账，无需再次记账!');
      exit;
    end;

    if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  CNAccountTB where AccountNo>' + QuotedStr(sCNStartMon)) <> '' then
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
          Procedurename := 'prCNFirstAccount;1';
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

procedure TCNFirstFM.btDelLClick(Sender: TObject);
begin
  try
    qyHed.Delete;
  except
    ShowError('删除失败！');
  end;
end;

procedure TCNFirstFM.btEditClick(Sender: TObject);
var
  i: Integer;
begin
  if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  CNAccountTB where AccountFlag=''已记账''') <> '' then
  begin
    ShowWarn('期初登记已经记过账，不能再修改!');
    exit;
  end;
  TextReadOnly(Self, false);
  CxGridStyleReadOnly(cxgrdtbv);
  inherited;
  qyHed.Edit;
end;

procedure TCNFirstFM.btExitClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TCNFirstFM.btSaveClick(Sender: TObject);
begin
  try
    qyHed.UpdateBatch;
    TextReadOnly(Self, True);
    inherited;
    ShowBox('保存成功!');
  except
    on E: Exception do
      ShowWarn(E.Message);
  end;
end;

procedure TCNFirstFM.btUnCheckClick(Sender: TObject);
begin
  try
    if qyHed.RecordCount = 0 then Exit;
    if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  CNAccountTB where AccountFlag=''已记账''') = '' then
    begin
      ShowWarn('期初登记还未过账，无需反记账!');
      exit;
    end;

    if bHaveData(DataFM.qyTemp, 'select Top 1 AutoID from  CNAccountTB where AccountNo>' + QuotedStr(sCNStartMon)) <> '' then
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
          Procedurename := 'prCNFirstAccount;1';
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

procedure TCNFirstFM.cxgrdtbvAccNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  i: Integer;
begin
  inherited;
  try
    try
      if btSave.Enabled = False then Exit;
      CNAccNameQFM := TCNAccNameQFM.Create(nil);
      CNAccNameQFM.iSelectKind := 1;
      CNAccNameQFM.ShowModal;
      if CNAccNameQFM.iFlag <> 3 then
      begin
        CNAccNameQFM.qyFind.Filter := ' bSelect=1';
        CNAccNameQFM.qyFind.Filtered := true;
        CNAccNameQFM.qyFind.First;
        for i := 0 to CNAccNameQFM.qyFind.RecordCount - 1 do
        begin
          if i = 0 then
            qyHed.Edit
          else
            qyHed.Append;
          qyHed.FieldByName('AccName').AsString := CNAccNameQFM.qyFind.FieldByName('AccName').AsString;
          qyHed.post;
          CNAccNameQFM.qyFind.Next;
        end;
      end;
    finally
      CNAccNameQFM.Free;
      CNAccNameQFM := nil;
    end;
  except
  end;
end;

procedure TCNFirstFM.FormCreate(Sender: TObject);
begin
  sFMId := 'CNFirstFM';
  sFMName := Self.Caption;
  sTableId := 'CNFirst';
  inherited;
  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('select * from CNAccountTB where AccountFlag<>''月结'' and AccountNo=' + QuotedStr(sCNStartMon));
    Open;
  end;
end;

procedure TCNFirstFM.FormDestroy(Sender: TObject);
begin
  inherited;
  CNFirstFM := nil;
end;

procedure TCNFirstFM.FormShow(Sender: TObject);
begin
  inherited;
  TextReadOnly(Self, True);
  cxgrdtbv.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
end;

procedure TCNFirstFM.qyHedAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyHed.FieldByName('AccountNo').AsString := sCNStartMon;
  qyHed.FieldByName('AccountFlag').AsString := '未记账';
  qyHed.FieldByName('MakeMan').AsString := LoginEmpId;
  qyHed.FieldByName('MakeManName').AsString := LoginEmpName;
  qyHed.FieldByName('MakeDate').AsDateTime := SysDateTime;
end;

end.

