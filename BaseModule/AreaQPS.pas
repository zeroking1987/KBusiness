unit AreaQPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxCustomData, cxStyles, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, dxSkinsCore,
  dxSkinsDefaultPainters, Menus, StdCtrls, cxButtons, ExtCtrls,
  cxInplaceContainer, cxDBTL, cxTLData, DB, ADODB, dxSkinOffice2010Blue;

type
  TAreaQFM = class(TForm)
    lstTreeList: TcxDBTreeList;
    AreaId: TcxDBTreeListColumn;
    AreaCode: TcxDBTreeListColumn;
    AreaName: TcxDBTreeListColumn;
    pnl1: TPanel;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dsFind: TDataSource;
    qyFind: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure lstTreeListDblClick(Sender: TObject);
  private
    {Private declarations}
  public
    fFlag: Integer;
    sAreaId: string;
    sAreaName: string;
    {Public declarations}
  end;

var
  AreaQFM: TAreaQFM;

implementation

uses DataPS;
{$R *.dfm}

procedure TAreaQFM.btnCancelClick(Sender: TObject);
begin
  try
    fFlag := 0;
    sAreaId := '';
    sAreaName := '';
    Close;
  except
  end;
end;

procedure TAreaQFM.btnOKClick(Sender: TObject);
begin
  try
    fFlag := 1;
    sAreaId := qyFind.FieldByName('AreaId').AsString;
    sAreaName := qyFind.FieldByName('AreaName').AsString;
    Close;
  except
  end;
end;

procedure TAreaQFM.FormCreate(Sender: TObject);
begin
  try
    sAreaId := '';
    qyFind.Open;
    lstTreeList.FullExpand;
  except
  end;
end;

procedure TAreaQFM.lstTreeListDblClick(Sender: TObject);
begin
  if qyFind.State = dsBrowse then qyFind.Edit;
  qyFind.FieldByName('bSelect').AsBoolean := true;
  btnOKClick(Self);
end;

end.
