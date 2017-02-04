unit CNMonthAccountPS;

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
  dxSkinOffice2010Blue, dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine,
  cxContainer, cxNavigator, cxLabel;

type
  TCNMonthAccountFM = class(TBase1FM)
    qyHedMonthNO: TStringField;
    dtmfldHedBeginDate: TDateTimeField;
    dtmfldHedEndDate: TDateTimeField;
    cxgrdtbvColumn1: TcxGridDBColumn;
    cxgrdtbvColumn2: TcxGridDBColumn;
    cxgrdtbvColumn3: TcxGridDBColumn;
    cxgrdtbvColumn4: TcxGridDBColumn;
    pnl1: TPanel;
    qyHedbCNAccount: TBooleanField;
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
  CNMonthAccountFM: TCNMonthAccountFM;

implementation
uses DataPS, PublicPS, WareInOutQPS;
{$R *.dfm}

procedure TCNMonthAccountFM.btCheckClick(Sender: TObject);
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
        Procedurename := 'prCNAccount;1';
        Parameters.AddParameter.Name := '@AccountFlag';
        Parameters[0].Direction := pdInPut;
        Parameters[0].DataType := ftInteger;
        Parameters[0].Value := 1;
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
    ShowError('月结失败');
  end;
end;

procedure TCNMonthAccountFM.btExitClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TCNMonthAccountFM.btFindClick(Sender: TObject);
begin
  inherited;
  qyHed.Open;
end;

procedure TCNMonthAccountFM.btUnCheckClick(Sender: TObject);
begin
  try
    inherited;
    try
      with DataFM.spTemp do
      begin
        if Active then Close;
        Parameters.Clear;
        Procedurename := 'prCNAccount;1';
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

procedure TCNMonthAccountFM.FormCreate(Sender: TObject);
begin
  sFMId := 'CNMonthAccountFM';
  sFMName := Self.Caption;
  sTableId := 'CNAccountTB';
  sTableName := cxlabTitle.Caption;
  inherited;
  btFindClick(Sender);
end;

procedure TCNMonthAccountFM.FormDestroy(Sender: TObject);
begin
  inherited;
  CNMonthAccountFM := nil;
end;

end.

