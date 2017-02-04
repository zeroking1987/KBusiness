unit MainBasePS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, StdCtrls,
  cxButtons, cxControls, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles,
  cxEdit, cxScheduler, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerCustomResourceView, cxSchedulerDayView, cxSchedulerDateNavigator,
  cxSchedulerHolidays, cxSchedulerTimeGridView, cxSchedulerUtils,
  cxSchedulerWeekView, cxSchedulerYearView, cxSchedulerGanttView,
  cxSchedulerDBStorage, dxSkinscxSchedulerPainter, dxSkinOffice2010Blue,
  Vcl.ExtCtrls, cxContainer, cxTextEdit, cxHyperLinkEdit, cxDBEdit,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxPCdxBarPopupMenu,
  cxPC, ADODB, cxSplitter, cxCheckBox, Vcl.ComCtrls, dxtree, dxdbtree,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine;

type
  TMainBaseFM = class(TForm)
    cxSchedulerStorage1: TcxSchedulerStorage;
    qyInform: TADOQuery;
    dsInform: TDataSource;
    qyInformAutoId: TIntegerField;
    qyInformInformTitle: TStringField;
    qyInformInformContent: TStringField;
    qyInformSendName: TStringField;
    qyInformSendDate: TDateTimeField;
    blnfldInformbTop: TBooleanField;
    qyNotice: TADOQuery;
    dsNotice: TDataSource;
    qyNoticeKind: TADOQuery;
    dsNoticeKind: TDataSource;
    qyNoticeKindNoticeKind: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainBaseFM: TMainBaseFM;

implementation

uses MainPS, PublicPS, ControlPublicPS, DataPS;
{$R *.dfm}

procedure TMainBaseFM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMainBaseFM.FormDestroy(Sender: TObject);
begin
  MainBaseFM := nil;
end;

end.
