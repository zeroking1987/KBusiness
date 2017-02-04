unit OtherOutPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WareInOutPS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxButtonEdit, cxDBLookupComboBox,
  cxTextEdit, cxMemo, dxSkinsdxBarPainter, frxClass, frxDBSet,
  cxGridCustomPopupMenu, cxGridPopupMenu, Menus, ADODB, dxBar, cxClasses,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGroupBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxPC, StdCtrls, ExtCtrls, cxPCdxBarPopupMenu, dxSkinOffice2010Blue,
  cxRadioGroup, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxNavigator,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, dxBarBuiltInMenu,
  cxLabel;

type
  TOtherOutFM = class(TWareInOutFM)
    cxgrdbclmnEmpName: TcxGridDBColumn;
    cxDBButtonEdit1: TcxDBButtonEdit;
    lbl3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxgrdbclmnEmpNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OtherOutFM: TOtherOutFM;

implementation

uses PublicPS, EmpQPS;
{$R *.dfm}

procedure TOtherOutFM.cxgrdbclmnEmpNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  try
    if btSave.Enabled = False then Exit;
    try
      EmpQFM := TEmpQFM.Create(nil);
      EmpQFM.iSelectKind := 2; //ตฅัก
      EmpQFM.ShowModal;
      if EmpQFM.sId <> '' then
      begin
        if qyDet.State = dsBrowse then qyDet.Edit;
        qyDet.FieldByName('EmpId').AsString := EmpQFM.sId;
        qyDet.FieldByName('EmpName').AsString := EmpQFM.sName;
      end;
    finally
      EmpQFM.Free;
      EmpQFM := nil;
    end;
  except
  end;
end;

procedure TOtherOutFM.FormCreate(Sender: TObject);
begin
  sFMId := 'OtherOutFM';
  sFMName := Self.Caption;
  sTableId := 'OtherOut';
  inherited;
end;

procedure TOtherOutFM.FormDestroy(Sender: TObject);
begin
  inherited;
  OtherOutFM := nil;
end;

end.
