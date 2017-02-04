unit FinanceDatePS;

interface

uses
  Windows, Messages, SysUtils, StrUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Base1PS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter,
  cxGridCustomPopupMenu, cxGridPopupMenu, Menus, ADODB, dxBar, cxClasses,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, ExtCtrls, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxCheckBox, dxSkinOffice2010Blue,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinDevExpressStyle, dxSkinSpringTime,
  dxSkinValentine, cxNavigator, cxLabel;

type
  TFinanceDateFM = class(TBase1FM)
    qyHedAutoId: TAutoIncField;
    qyHedMonthNo: TStringField;
    dtmfldHedBeginDate: TDateTimeField;
    dtmfldHedEndDate: TDateTimeField;
    qyHedbNow: TBooleanField;
    cxgrdbclmnBeginDate: TcxGridDBColumn;
    cxgrdbclmnEndDate: TcxGridDBColumn;
    cxgrdbclmnNow: TcxGridDBColumn;
    cxgrdbclmnMonthNo: TcxGridDBColumn;
    pnl1: TPanel;
    pnl2: TPanel;
    lbl1: TLabel;
    cxdtS: TcxDateEdit;
    lbl2: TLabel;
    cxMonCount: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDelClick(Sender: TObject);
    procedure btDelLClick(Sender: TObject);
    procedure cxgrdbclmnNowPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FinanceDateFM: TFinanceDateFM;

implementation

uses DataPS, PublicPS;
{$R *.dfm}

procedure TFinanceDateFM.btAddClick(Sender: TObject);
begin
  try
    if cxdtS.Text = '' then
    begin
      ShowBox('请先选择开始日期');
      Exit;
    end;
    if cxMonCount.Text = '' then
    begin
      ShowBox('请先选择月份数');
      Exit;
    end;
    if bHaveData(DataFM.qyTemp, 'select MonthNo from FinanceDateTB where ' + QuotedStr(trim(cxdtS.text)) + '>=BeginDate and ' + QuotedStr(trim(cxdtS.text)) + '<=EndDate') <> '' then
    begin
      ShowBox('请选择一个有效的开始日期');
      Exit;
    end;

    inherited;
    cxgrdtbv.DataController.GetItemByFieldName('MonthNo').Options.Editing := false;
    cxgrdtbv.DataController.GetItemByFieldName('BeginDate').Options.Editing := false;
    cxgrdtbv.DataController.GetItemByFieldName('EndDate').Options.Editing := false;
    try
      with DataFM.spTemp do
      begin
        if Active then close;
        Parameters.Clear;
        Procedurename := 'prSetFinaceDate;1';
        Parameters.AddParameter.Name := '@StartDate';
        Parameters[0].Direction := pdInPut;
        Parameters[0].DataType := ftDateTime;
        Parameters[0].Value := trim(cxdtS.Text);
        Parameters.AddParameter.Name := '@MonCount';
        Parameters[1].Direction := pdInPut;
        Parameters[1].DataType := ftInteger;
        Parameters[1].Value := StrToInt((cxMonCount.Text));
        Open;
      end;
      qyHed.Requery();
      cxdtS.Text := '';
      cxMonCount.Text := '';
    finally
      DataFM.spTemp.close;
    end;
  except
  end;
end;

procedure TFinanceDateFM.btCancelClick(Sender: TObject);
begin
  qyHed.CancelBatch();
  inherited;
end;

procedure TFinanceDateFM.btDelClick(Sender: TObject);
var
  sHasAccountMontNo: string;
  i: Integer;
begin
  try
    sHasAccountMontNo := '';
    with DataFM.qyTemp do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add('select Distinct AccountNo from WareAccountTB where LastNum is not Null ');
      Open;
      for I := 1 to RecordCount do
      begin
        First;
        sHasAccountMontNo := sHasAccountMontNo + '【' + Fields[0].AsString + '】,';
        Next;
      end;
    end;
    if sHasAccountMontNo <> '' then
    begin
      ShowWarn('有月份:' + sHasAccountMontNo + ' 已经月结,不能删除');
      Exit;
    end;

    if ShowDlg('确定要删除全部财务月份吗？') then
    begin
      ExeSql('Delete FinanceDateTB');
      qyHed.Requery();
    end;
    inherited;
  except
    ShowError('删除失败！');
  end;
end;

procedure TFinanceDateFM.btDelLClick(Sender: TObject);
begin
  if bHaveData(DataFM.qyTemp, 'select AccountNo from WareAccountTB where IsNull(AccountFlag,'''')=''月结'' and AccountNo=' + QuotedStr(qyHed.FieldByName('MonthNo').AsString) + ' ') <> '' then
  begin
    ShowWarn('该月份已经月结,不能删除');
    Exit;
  end;

  qyHed.Delete;
  inherited;
end;

procedure TFinanceDateFM.btEditClick(Sender: TObject);
begin
  inherited;
  qyHed.Edit;
  cxgrdtbv.DataController.GetItemByFieldName('MonthNo').Options.Editing := false;
  cxgrdtbv.DataController.GetItemByFieldName('BeginDate').Options.Editing := false;
  cxgrdtbv.DataController.GetItemByFieldName('EndDate').Options.Editing := false;
end;

procedure TFinanceDateFM.btSaveClick(Sender: TObject);
begin
  try
    inherited;
    qyHed.UpdateBatch();
    ShowBox('保存成功');
  except
    ShowError('保存失败');
  end;
end;

procedure TFinanceDateFM.cxgrdbclmnNowPropertiesChange(Sender: TObject);
var
  i: Integer;
  sMonthNo: string;
begin
  sMonthNo := '';
  sMonthNo := qyHed.FieldByName('MonthNo').AsString;
  qyHed.First;
  for i := 0 to qyHed.RecordCount - 1 do
  begin
    if qyHed.FieldByName('MonthNo').AsString <> sMonthNo then
    begin
      if qyHed.State = dsBrowse then qyHed.Edit;
      qyHed.FieldByName('bNow').AsBoolean := false;
    end;
    qyHed.Next;
  end;
  qyHed.Locate('MonthNo', sMonthNo, []);
end;

procedure TFinanceDateFM.FormCreate(Sender: TObject);
begin
  sFMId := 'FinanceDateFM';
  sFMName := Self.Caption;
  sTableId := 'FinanceDateTB';
  sTableName := cxlabTitle.Caption;
  qyHed.Open;
  inherited;
end;

procedure TFinanceDateFM.FormDestroy(Sender: TObject);
begin
  inherited;
  FinanceDateFM := nil;
end;

procedure TFinanceDateFM.FormShow(Sender: TObject);
begin
  inherited;
  //如果已经有财务月份则默认最后日期的下一天，否则就取启动月份的第一天
  with DataFM.qyTemp do
  begin
    if Active then Close;
    sql.Clear;
    Sql.Add('select * from FinanceDateTB ');
    Open;
    if not Eof then
    begin
      if Active then Close;
      sql.Clear;
      SQL.Add('select Isnull(DateAdd(Day,1,MAX(EndDate)),Convert(varchar(20),dateadd(dd,-day(getdate())+1,getdate()),112)) from FinanceDateTB');
      Open;
      cxdtS.Text := DateTimeToStr(Fields[0].AsDateTime);
    end
    else
    begin
      if Active then Close;
      sql.Clear;
      Sql.Add('select WareStartMon,* from SysParamTB where ISNULL(WareStartMon,'''')<>'''' ');
      Open;
      cxdtS.Text := LeftStr(Fields[0].AsString, 4) + '-' + RightStr(Fields[0].AsString, 2) + '-01';
    end;
  end;
  cxMonCount.Text := '12';
end;

end.
