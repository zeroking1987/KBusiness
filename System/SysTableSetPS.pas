unit SysTableSetPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Base1PS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, cxGridCustomPopupMenu,
  cxGridPopupMenu, Menus, ADODB, dxBar, cxClasses, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls, ExtCtrls,
  cxContainer, cxTextEdit, cxTL, cxMaskEdit, cxCheckBox, cxTLdxBarBuiltInMenu, cxInplaceContainer,
  cxDBTL, cxTLData, cxCheckComboBox, dxSkinOffice2010Blue,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, cxNavigator, cxLabel;

type
  TSysTableSetFM = class(TBase1FM)
    pnlEdit: TPanel;
    Label4: TLabel;
    cxEdtValue: TcxTextEdit;
    qyHedAutoId: TAutoIncField;
    blnfldHedbSelect: TBooleanField;
    qyHedTableID: TStringField;
    qyHedTableName: TStringField;
    qyHedTableDesc: TStringField;
    smlntfldHedMaxAuditLevel: TSmallintField;
    qyHedTablePreFix: TStringField;
    blnfldHedbAudit: TBooleanField;
    blnfldHedbRight: TBooleanField;
    blnfldHedbMenu: TBooleanField;
    smlntfldHedModuleId: TSmallintField;
    qyHedModuleName: TStringField;
    qyHedTag: TStringField;
    qyHedpTag: TStringField;
    cxListSysTable: TcxDBTreeList;
    cxdbtrlstclmnListRightTableDesc: TcxDBTreeListColumn;
    cxdbtrlstclmnListRightMaxAuditLevel: TcxDBTreeListColumn;
    cxdbtrlstclmnListRightTablePreFix: TcxDBTreeListColumn;
    cxdbtrlstclmnListRightbAudit: TcxDBTreeListColumn;
    cxdbtrlstclmnListRightbRight: TcxDBTreeListColumn;
    cxdbtrlstclmnListRightTag: TcxDBTreeListColumn;
    procedure btEditClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure cxEdtValueKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SysTableSetFM: TSysTableSetFM;

implementation

uses PublicPS, DataPS;
{$R *.dfm}

procedure TSysTableSetFM.btCancelClick(Sender: TObject);
begin
  try
    qyHed.CancelBatch;
    TextReadOnly(Self, true);
    inherited;
  except
  end;
end;

procedure TSysTableSetFM.btEditClick(Sender: TObject);
begin
  inherited;
  qyHed.Edit;
  TextReadOnly(Self, false);
  cxListSysTable.GetColumnByFieldName('Tag').Editing := false;
  cxListSysTable.GetColumnByFieldName('TableDesc').Editing := false;
end;

procedure TSysTableSetFM.btSaveClick(Sender: TObject);
begin
  try
    qyHed.UpdateBatch();
    ShowBox('±£´æ³É¹¦£¡');
    TextReadOnly(Self, true);
    inherited;
  except
  end;
end;

procedure TSysTableSetFM.cxEdtValueKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    qyHed.Locate('TableDesc', trim(cxEdtValue.Text), []);
end;

procedure TSysTableSetFM.FormCreate(Sender: TObject);
begin
  sFMId := 'SysTableSetFM';
  sFMName := Self.Caption;
  inherited;
  qyHed.Open;
  cxListSysTable.FullExpand;
end;

procedure TSysTableSetFM.FormDestroy(Sender: TObject);
begin
  inherited;
  SysTableSetFM := nil;
end;

end.
