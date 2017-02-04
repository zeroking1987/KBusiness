unit StockMonthAccountPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Base1PS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter,
  cxGridCustomPopupMenu, cxGridPopupMenu, Menus, ADODB, dxBar, cxClasses,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, ExtCtrls, cxCheckBox,
  dxSkinOffice2010Blue, cxContainer, dxSkinDevExpressStyle, dxSkinSpringTime,
  dxSkinValentine, cxNavigator, cxLabel;

type
  TStockMonthAccountFM = class(TBase1FM)
    qyHedMonthNO: TStringField;
    dtmfldHedBeginDate: TDateTimeField;
    dtmfldHedEndDate: TDateTimeField;
    cxgrdtbvColumn1: TcxGridDBColumn;
    cxgrdtbvColumn2: TcxGridDBColumn;
    cxgrdtbvColumn3: TcxGridDBColumn;
    cxgrdtbvColumn4: TcxGridDBColumn;
    pnl1: TPanel;
    qyHedbStockAccount: TBooleanField;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btExitClick(Sender: TObject);
    procedure btCheckClick(Sender: TObject);
    procedure btUnCheckClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StockMonthAccountFM: TStockMonthAccountFM;

implementation
uses DataPS, PublicPS, WareInOutQPS;
{$R *.dfm}

procedure TStockMonthAccountFM.btCheckClick(Sender: TObject);
var
  dtS, dtE: string;
begin
  try
    inherited;
    try
      with DataFM.spTemp do
      begin
        if Active then Close;
        Parameters.Clear;
        Procedurename := 'prStockAccount;1';
        Parameters.AddParameter.Name := '@AccountFlag';
        Parameters[0].Direction := pdInPut;
        Parameters[0].DataType := ftInteger;
        Parameters[0].Value := 1;
        Open;
      end;
      if DataFM.spTemp.FieldByName('ReturStr').AsString <> '' then
      begin
        ShowBox(DataFM.spTemp.FieldByName('ReturStr').AsString);
       { //跳转到出入库查询
        if DataFM.spTemp.FieldByName('ReturStr').AsString = '月结月份有单据未审核完毕!' then
        begin
          with DataFM.qyTemp do
          begin
            if Active then Close;
            SQL.Clear;
            SQL.Add('select Top 1 BeginDate,EndDate from FinanceDateTB where IsNull(bAccount,0)=0');
            Open;
            if not Eof then
            begin
              dtS := FormatDateTime('yyyy-mm-dd hh:mm:ss', Fields[0].AsDateTime);
              dtE := FormatDateTime('yyyy-mm-dd hh:mm:ss', Fields[1].AsDateTime);
            end;
          end;
          if not Assigned(WareInOutQFM) then
            WareInOutQFM := TWareInOutQFM.Create(Application)
          else
            ShowTabSt(WareInOutQFM.sFMId);
          WareInOutQFM.Show;
          WareInOutQFM.cxdtS.Text := dtS;
          WareInOutQFM.cxdtE.Text := dtE;
          WareInOutQFM.cxRgpAudit.ItemIndex := 0;
          WareInOutQFM.btFindClick(Sender);
        end; }
      end;
    finally
      DataFM.spTemp.Close;
      qyHed.Requery;
    end;
  except
    ShowError('月结失败');
  end;
end;

procedure TStockMonthAccountFM.btExitClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TStockMonthAccountFM.btFindClick(Sender: TObject);
begin
  inherited;
  qyHed.Open;
end;

procedure TStockMonthAccountFM.btUnCheckClick(Sender: TObject);
begin
  try
    inherited;
    try
      with DataFM.spTemp do
      begin
        if Active then Close;
        Parameters.Clear;
        Procedurename := 'prStockAccount;1';
        Parameters.AddParameter.Name := '@AccountFlag';
        Parameters[0].Direction := pdInPut;
        Parameters[0].DataType := ftInteger;
        Parameters[0].Value := 2;
        Open;
      end;
      if DataFM.spTemp.FieldByName('ReturStr').AsString <> '' then
      begin
        ShowBox(DataFM.spTemp.FieldByName('ReturStr').AsString);
      end;
    finally
      DataFM.spTemp.Close;
      qyHed.Requery;
    end;
  except
    ShowError('反月结失败');
  end;
end;

procedure TStockMonthAccountFM.FormCreate(Sender: TObject);
begin
  sFMId := 'StockMonthAccountFM';
  sFMName := Self.Caption;
  sTableId := 'StockMonthAccount';
  sTableName := cxlabTitle.Caption;
  inherited;
  btFindClick(Sender);
end;

procedure TStockMonthAccountFM.FormDestroy(Sender: TObject);
begin
  inherited;
  StockMonthAccountFM := nil;
end;

end.
