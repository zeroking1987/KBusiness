unit MainPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsdxRibbonPainter, cxClasses, dxRibbon, IniFiles,
  dxSkinsdxBarPainter, cxCalc, dxBar, cxBarEditItem, dxSkinsForm,
  dxSkinsdxNavBarPainter, dxNavBarCollns, dxNavBarBase, dxNavBar, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxPC,
  dxStatusBar, dxRibbonStatusBar,
  Menus, StdCtrls, cxButtons, cxContainer, cxEdit, Buttons,
  cxTextEdit, cxDBEdit, ExtCtrls, cxHint, cxLocalization, DB, ADODB, cxLabel,
  dxRibbonSkins, cxPCdxBarPopupMenu, dxScreenTip, dxCustomHint,
  dxBarApplicationMenu, dxSkinOffice2010Blue, dxNavBarGroupItems,
  cxHyperLinkEdit, dxRibbonGallery, dxSkinChooserGallery, dxSkinDevExpressStyle, dxSkinSpringTime,
  dxSkinValentine, dxBarBuiltInMenu, dxRibbonCustomizationForm,
  dxSkinsdxNavBarAccordionViewPainter, dxSkinOffice2013LightGray,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark;

type
  TMainFM = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar3: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    dxBarButton5: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarSeparator2: TdxBarSeparator;
    dxBarButton16: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarSeparator3: TdxBarSeparator;
    dxBarButton23: TdxBarButton;
    cxBarEditItem2: TcxBarEditItem;
    dxBarButton24: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarSeparator4: TdxBarSeparator;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton38: TdxBarButton;
    dxBarSubItem11: TdxBarSubItem;
    dxBarButton32: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    Ribbon: TdxRibbon;
    RtbStart: TdxRibbonTab;
    skinCtl: TdxSkinController;
    BarAmApplicationMenu: TdxBarApplicationMenu;
    dxBarScreenTipRepository1: TdxBarScreenTipRepository;
    dxbrscrntpAppMenu: TdxBarScreenTip;
    dxStausBar: TdxRibbonStatusBar;
    pnlMain: TPanel;
    cxPgcMain: TcxPageControl;
    cxHintCtr: TcxHintStyleController;
    dxBarButton45: TdxBarButton;
    dxBarButton46: TdxBarButton;
    dxBarButton47: TdxBarButton;
    dxBarButton48: TdxBarButton;
    dxBarSeparator5: TdxBarSeparator;
    dxBarButton49: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarSeparator7: TdxBarSeparator;
    dxBarButton51: TdxBarButton;
    dxBarButton52: TdxBarButton;
    dxBarButton53: TdxBarButton;
    dxBarSeparator8: TdxBarSeparator;
    dxBarSubItem9: TdxBarSubItem;
    dxBarSubItem12: TdxBarSubItem;
    dxBarButton57: TdxBarButton;
    dxBarButton59: TdxBarButton;
    dxBarSeparator9: TdxBarSeparator;
    dxBarButton62: TdxBarButton;
    dxBarButton64: TdxBarButton;
    dxBarButton67: TdxBarButton;
    dxBarButton68: TdxBarButton;
    dxBarSeparator13: TdxBarSeparator;
    dxBarButton90: TdxBarButton;
    dxBarButton92: TdxBarButton;
    dxBarSeparator14: TdxBarSeparator;
    cxLocalizer: TcxLocalizer;
    dxbrsbtm1: TdxBarSubItem;
    qyMenu: TADOQuery;
    dxbrbtn1: TdxBarButton;
    dxbrbtn2: TdxBarButton;
    dxbrbtn3: TdxBarButton;
    dxbrbtn4: TdxBarButton;
    dxbrbtn5: TdxBarButton;
    dxbrbtn6: TdxBarButton;
    dxbrbtn7: TdxBarButton;
    dxbrbtn8: TdxBarButton;
    dxbrbtn10: TdxBarButton;
    dxbrbtn11: TdxBarButton;
    dxbrbtn12: TdxBarButton;
    dxbrbtn13: TdxBarButton;
    dxbrbtn14: TdxBarButton;
    dxbrsbtm2: TdxBarSubItem;
    dxbrbtn15: TdxBarButton;
    dxbrsprtr1: TdxBarSeparator;
    dxbrbtn19: TdxBarButton;
    dxbrbtn20: TdxBarButton;
    dxBarSubItem13: TdxBarSubItem;
    dxBarSubItem14: TdxBarSubItem;
    dxBarButton17: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarSubItem15: TdxBarSubItem;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    dxBarSubItem16: TdxBarSubItem;
    dxBarButton44: TdxBarButton;
    dxBarSeparator6: TdxBarSeparator;
    dxBarLargeButton2: TdxBarLargeButton;
    dxbrbtn9: TdxBarButton;
    dxbrbtn16: TdxBarButton;
    dxbrbtn17: TdxBarButton;
    dxbrbtn18: TdxBarButton;
    dxbrbtn21: TdxBarButton;
    dxbrbtn22: TdxBarButton;
    dxbrbtn23: TdxBarButton;
    dxbrbtn24: TdxBarButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarSeparator10: TdxBarSeparator;
    dxBarButton10: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarSeparator11: TdxBarSeparator;
    dxBarButton25: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton54: TdxBarButton;
    dxBarButton55: TdxBarButton;
    dxSkinChooserGalleryItem1: TdxSkinChooserGalleryItem;
    dxBarButton56: TdxBarButton;
    dxBarButton58: TdxBarButton;
    dxBarButton60: TdxBarButton;
    dxBarSeparator15: TdxBarSeparator;
    dxBarButton61: TdxBarButton;
    dxBarButton63: TdxBarButton;
    dxBarButton65: TdxBarButton;
    dxBarButton66: TdxBarButton;
    dxBarButton69: TdxBarButton;
    dxBarButton70: TdxBarButton;
    dxBarButton71: TdxBarButton;
    dxBarButton72: TdxBarButton;
    dxBarSeparator12: TdxBarSeparator;
    dxBarButton73: TdxBarButton;
    dxBarButton74: TdxBarButton;
    dxBarSeparator16: TdxBarSeparator;
    dxBarButton75: TdxBarButton;
    dxBarButton76: TdxBarButton;
    dxBarSubItem8: TdxBarSubItem;
    dxBarSubItem10: TdxBarSubItem;
    dxBarButton77: TdxBarButton;
    dxBarButton78: TdxBarButton;
    dxBarButton79: TdxBarButton;
    dxBarButton80: TdxBarButton;
    dxBarButton81: TdxBarButton;
    dxBarButton82: TdxBarButton;
    dxBarButton83: TdxBarButton;
    dxBarButton84: TdxBarButton;
    dxBarButton85: TdxBarButton;
    Timer1: TTimer;
    dxBarButton86: TdxBarButton;
    dxBarButton87: TdxBarButton;
    dxBarButton88: TdxBarButton;
    dxBarButton89: TdxBarButton;
    dxBarButton91: TdxBarButton;
    dxBarButton93: TdxBarButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton24Click(Sender: TObject);
    procedure dxBarButton43Click(Sender: TObject);
    procedure dxBarButton26Click(Sender: TObject);
    procedure dxBarButton27Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton28Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton29Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton41Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxBarButton45Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton42Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton49Click(Sender: TObject);
    procedure dxbrbtn4Click(Sender: TObject);
    procedure dxbrbtn5Click(Sender: TObject);
    procedure dxbrbtn6Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton52Click(Sender: TObject);
    procedure dxBarButton90Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton32Click(Sender: TObject);
    procedure dxbrbtn8Click(Sender: TObject);
    procedure dxBarButton48Click(Sender: TObject);
    procedure dxBarButton46Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton57Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton62Click(Sender: TObject);
    procedure dxBarButton64Click(Sender: TObject);
    procedure dxBarButton67Click(Sender: TObject);
    procedure dxbrbtn12Click(Sender: TObject);
    procedure dxbrbtn10Click(Sender: TObject);
    procedure dxbrbtn14Click(Sender: TObject);
    procedure dxBarButton59Click(Sender: TObject);
    procedure dxBarButton51Click(Sender: TObject);
    procedure dxBarButton35Click(Sender: TObject);
    procedure dxBarButton37Click(Sender: TObject);
    procedure dxBarButton39Click(Sender: TObject);
    procedure cxPgcMainCanCloseEx(Sender: TObject; ATabIndex: Integer;
      var ACanClose: Boolean);
    procedure dxBarButton40Click(Sender: TObject);
    procedure dxBarButton44Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton47Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
    procedure dxBarButton33Click(Sender: TObject);
    procedure dxBarButton34Click(Sender: TObject);
    procedure dxBarButton36Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton53Click(Sender: TObject);
    procedure dxbrbtn9Click(Sender: TObject);
    procedure dxbrbtn11Click(Sender: TObject);
    procedure dxbrbtn13Click(Sender: TObject);
    procedure dxbrbtn2Click(Sender: TObject);
    procedure dxbrbtn16Click(Sender: TObject);
    procedure dxbrbtn17Click(Sender: TObject);
    procedure RibbonDblClick(Sender: TObject);
    procedure dxbrbtn18Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxbrbtn21Click(Sender: TObject);
    procedure dxbrbtn22Click(Sender: TObject);
    procedure dxbrbtn23Click(Sender: TObject);
    procedure dxbrbtn24Click(Sender: TObject);
    procedure dxNavBarLItem1Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure dxbrbtn15Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure dxBarButton31Click(Sender: TObject);
    procedure dxBarButton54Click(Sender: TObject);
    procedure dxBarButton55Click(Sender: TObject);
    procedure dxSkinChooserGalleryItem1SkinChanged(Sender: TObject;
      const ASkinName: string);
    procedure dxBarButton56Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton58Click(Sender: TObject);
    procedure dxBarButton60Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton61Click(Sender: TObject);
    procedure dxBarButton75Click(Sender: TObject);
    procedure dxBarButton71Click(Sender: TObject);
    procedure dxBarButton76Click(Sender: TObject);
    procedure dxBarButton72Click(Sender: TObject);
    procedure dxBarButton63Click(Sender: TObject);
    procedure dxBarButton66Click(Sender: TObject);
    procedure dxBarButton65Click(Sender: TObject);
    procedure dxBarButton73Click(Sender: TObject);
    procedure dxBarButton74Click(Sender: TObject);
    procedure dxBarButton77Click(Sender: TObject);
    procedure dxBarButton78Click(Sender: TObject);
    procedure dxBarButton80Click(Sender: TObject);
    procedure dxBarButton81Click(Sender: TObject);
    procedure dxBarButton82Click(Sender: TObject);
    procedure dxBarButton83Click(Sender: TObject);
    procedure dxBarButton85Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure dxBarButton84Click(Sender: TObject);
    procedure dxBarButton87Click(Sender: TObject);
    procedure dxBarButton86Click(Sender: TObject);
    procedure dxBarButton88Click(Sender: TObject);
    procedure dxBarButton91Click(Sender: TObject);
    procedure dxBarButton89Click(Sender: TObject);
    procedure dxBarButton93Click(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
  private
    TabSt: TcxTabSheet;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainFM: TMainFM;

implementation

uses DataPS, ReportPS, LoginPS, RegPS, PublicPS, ControlPublicPS, BasePS, BaseMouldPS, SysModulePS, HRModulePS, StockModulePS,
  AssistModulePS,BillModulePS, ReportModulePS,
  InvoiceMouldPS, WareModulePS, SaleModulePS, MainBasePS, DataBackPS, AreaPS, ReportSetPS, WarePS, FinanceDatePS,
  PrvKindPS, ProviderPS, CustKindPS, CustPS, DeptPS, EmployeePS, SysUserSetPS, ItemKindPS, ItemPS, OtherSetPS, UserRightPS,
  ChangePassPS, RequirePS, SysTableSetPS, ProduceModulePS, SysParamPS, StockOrderPS, RequireQPS,
  StockOrderQPS, SaleOrderPS, SaleOrderQPS, SysLogQPS, FirstBookPS, ProTypePS, ColorPS, RegSetPS, WareInOutPS,
  StockPricePS, WareMonthAccountPS, StockInPS, ProductOutPS, WareStorageQPS, WareInOutQPS, SFCMonQPS, PreSendMsgPS, MainFormSetPS,
  OtherInPS, ProductInPS, WareCheckPS, MatOutPS, OtherOutPS, SalePricePS, SaleFirstPS, SaleInvoicePS, SalePayPS, SaleMonthAccountPS, SalePayQPS,
  ItemBomPS, ItemBomQPS, StockFirstPS, StockInvoicePS, StockPayPS, StockMonthAccountPS, StockPayQPS, SaleOutPS, SaleSenderPS,
  SaleSenderQPS, ProOrderPS, AssistOutPS, AssistInPS, SaleQPS, ItemSaleQPS, ItemMovePS, AssistMovePS, AssistMoveInPS, StockAccountAgeQPS, SaleAccountAgeQPS,
  AboutPS, ItemSwitchPS, ItemSwitchQPS, BaseTechPS, SafeStoreQPS, ShopModulePS, ShopMovePS, ShopMoveInPS, ItemTechQPS, ItemTechPS,
  BOMMatOutQPS, StockRecePS, ProDispatchPS, ProDispatchQPS, ItemBomAnalysePS, WareInOutSumQPS, AssistMoveQPS, ShopMoveQPS, ShopMoveInQPS, AssistMoveInQPS,
  EmpWorkRecordQPS, ProOrderQPS, OrderMatQPS, ProProcessQPS,AssistOutInQPS,AssistBackQPS,ShopBackQPS,
  CNAccNamePS, CNItemPS, CWOtherPS, CNCashQPS, CNBankQPS, CNFirstPS, CNMonthAccountPS, CWModulePS,CNMovePS;
{$R *.dfm}

procedure TMainFM.cxPgcMainCanCloseEx(Sender: TObject; ATabIndex: Integer;
  var ACanClose: Boolean);
begin
  //我的桌面不允许删除,否则会出问题
  if ATabIndex = 0 then
  begin
    ACanClose := False;
  end;
end;

procedure TMainFM.dxBarButton10Click(Sender: TObject);
begin
  if not Assigned(ItemSwitchQFM) then
  begin
    ItemSwitchQFM := TItemSwitchQFM.Create(Application);
    ItemSwitchQFM.Show;
  end
  else
    ShowTabSt(ItemSwitchQFM.sFMId);
end;

procedure TMainFM.dxBarButton11Click(Sender: TObject);
begin
  if not Assigned(FirstBookFM) then
  begin
    FirstBookFM := TFirstBookFM.Create(Application);
    FirstBookFM.Show;
  end
  else
    ShowTabSt(FirstBookFM.sFMId);
end;

procedure TMainFM.dxBarButton13Click(Sender: TObject);
begin
  if not Assigned(WareCheckFM) then
  begin
    WareCheckFM := TWareCheckFM.Create(Application);
    WareCheckFM.Show;
  end
  else
    ShowTabSt(WareCheckFM.sFMId);
end;

procedure TMainFM.dxBarButton14Click(Sender: TObject);
begin
  if not Assigned(ItemMoveFM) then
  begin
    ItemMoveFM := TItemMoveFM.Create(Application);
    ItemMoveFM.Show;
  end
  else
    ShowTabSt(ItemMoveFM.sFMId);
end;

procedure TMainFM.dxBarButton15Click(Sender: TObject);
begin
  if not Assigned(WareMonthAccountFM) then
  begin
    WareMonthAccountFM := TWareMonthAccountFM.Create(Application);
    WareMonthAccountFM.Show;
  end
  else
    ShowTabSt(WareMonthAccountFM.sFMId);
end;

procedure TMainFM.dxBarButton17Click(Sender: TObject);
begin
  if not Assigned(FinanceDateFM) then
  begin
    FinanceDateFM := TFinanceDateFM.Create(Application);
    FinanceDateFM.Show;
  end
  else
    ShowTabSt(FinanceDateFM.sFMId);
end;

procedure TMainFM.dxBarButton18Click(Sender: TObject);
begin
  if not Assigned(BaseTechFM) then
  begin
    BaseTechFM := TBaseTechFM.Create(Application);
    BaseTechFM.Show;
  end
  else
    ShowTabSt(BaseTechFM.sFMId);
end;

procedure TMainFM.dxBarButton19Click(Sender: TObject);
begin
  if not Assigned(UserRightFM) then
  begin
    UserRightFM := TUserRightFM.Create(Application);
    UserRightFM.Show;
  end
  else
    ShowTabSt(UserRightFM.sFMId);
end;

procedure TMainFM.dxBarButton1Click(Sender: TObject);
begin
  if not Assigned(ProviderFM) then
  begin
    ProviderFM := TProviderFM.Create(Application);
    ProviderFM.Show;
  end
  else
    ShowTabSt(ProviderFM.sFMId);
end;

procedure TMainFM.dxBarButton20Click(Sender: TObject);
begin
  if not Assigned(SysUserSetFM) then
  begin
    SysUserSetFM := TSysUserSetFM.Create(Application);
    SysUserSetFM.Show;
  end
  else
    ShowTabSt(SysUserSetFM.sFMId);
end;

procedure TMainFM.dxBarButton21Click(Sender: TObject);
begin
  { if not Assigned(DataBackFM) then
   begin
     DataBackFM := TDataBackFM.Create(Application);
     DataBackFM.Show;
   end
   else
     ShowTabSt(DataBackFM.sFMId);  }
  if not Assigned(DataBackFM) then
    DataBackFM := TDataBackFM.Create(Application);
  DataBackFM.ShowModal;
  DataBackFM.BringToFront;
  DataBackFM.WindowState := wsNormal;
end;

procedure TMainFM.dxBarButton22Click(Sender: TObject);
begin
  if not Assigned(StockFirstFM) then
  begin
    StockFirstFM := TStockFirstFM.Create(Application);
    StockFirstFM.Show;
  end
  else
    ShowTabSt(StockFirstFM.sFMId);
end;

procedure TMainFM.dxBarButton23Click(Sender: TObject);
begin
  if ShowDlg('确定要退出管理系统?') then
    Application.Terminate;
end;

procedure TMainFM.dxBarButton24Click(Sender: TObject);
begin
  if not Assigned(AreaFM) then
  begin
    AreaFM := TAreaFM.Create(Application);
    AreaFM.Show;
  end
  else
    ShowTabSt(AreaFM.sFMId);
end;

procedure TMainFM.dxBarButton25Click(Sender: TObject);
begin
  if not Assigned(SafeStoreQFM) then
  begin
    SafeStoreQFM := TSafeStoreQFM.Create(Application);
    SafeStoreQFM.Show;
  end
  else
    ShowTabSt(SafeStoreQFM.sFMId);
end;

procedure TMainFM.dxBarButton26Click(Sender: TObject);
begin
  if not Assigned(WareFM) then
  begin
    WareFM := TWareFM.Create(Application);
    WareFM.Show;
  end
  else
    ShowTabSt(WareFM.sFMId);
end;

procedure TMainFM.dxBarButton27Click(Sender: TObject);
begin
  if not Assigned(PrvKindFM) then
  begin
    PrvKindFM := TPrvKindFM.Create(Application);
    PrvKindFM.Show;
  end
  else
    ShowTabSt(PrvKindFM.sFMId);
end;

procedure TMainFM.dxBarButton28Click(Sender: TObject);
begin
  if not Assigned(CustKindFM) then
  begin
    CustKindFM := TCustKindFM.Create(Application);
    CustKindFM.Show;
  end
  else
    ShowTabSt(CustKindFM.sFMId);
end;

procedure TMainFM.dxBarButton29Click(Sender: TObject);
begin
  if not Assigned(ItemKindFM) then
  begin
    ItemKindFM := TItemKindFM.Create(Application);
    ItemKindFM.Show;
  end
  else
    ShowTabSt(ItemKindFM.sFMId);
end;

procedure TMainFM.dxBarButton2Click(Sender: TObject);
begin
  if not Assigned(CustFM) then
  begin
    CustFM := TCustFM.Create(Application);
    CustFM.Show;
  end
  else
    ShowTabSt(CustFM.sFMId);
end;

procedure TMainFM.dxBarButton30Click(Sender: TObject);
begin
  if not Assigned(StockInvoiceFM) then
  begin
    StockInvoiceFM := TStockInvoiceFM.Create(Application);
    StockInvoiceFM.Show;
  end
  else
    ShowTabSt(StockInvoiceFM.sFMId);
end;

procedure TMainFM.dxBarButton31Click(Sender: TObject);
begin
  if not Assigned(ShopMoveFM) then
  begin
    ShopMoveFM := TShopMoveFM.Create(Application);
    ShopMoveFM.Show;
  end
  else
    ShowTabSt(ShopMoveFM.sFMId);
end;

procedure TMainFM.dxBarButton32Click(Sender: TObject);
begin
  if not Assigned(ProTypeFM) then
  begin
    ProTypeFM := TProTypeFM.Create(Application);
    ProTypeFM.Show;
  end
  else
    ShowTabSt(ProTypeFM.sFMId);
end;

procedure TMainFM.dxBarButton33Click(Sender: TObject);
begin
  if not Assigned(StockPayFM) then
  begin
    StockPayFM := TStockPayFM.Create(Application);
    StockPayFM.Show;
  end
  else
    ShowTabSt(StockPayFM.sFMId);
end;

procedure TMainFM.dxBarButton34Click(Sender: TObject);
begin
  if not Assigned(StockMonthAccountFM) then
  begin
    StockMonthAccountFM := TStockMonthAccountFM.Create(Application);
    StockMonthAccountFM.Show;
  end
  else
    ShowTabSt(StockMonthAccountFM.sFMId);
end;

procedure TMainFM.dxBarButton35Click(Sender: TObject);
begin
  if not Assigned(SaleFirstFM) then
  begin
    SaleFirstFM := TSaleFirstFM.Create(Application);
    SaleFirstFM.Show;
  end
  else
    ShowTabSt(SaleFirstFM.sFMId);
end;

procedure TMainFM.dxBarButton36Click(Sender: TObject);
begin
  if not Assigned(StockPayQFM) then
  begin
    StockPayQFM := TStockPayQFM.Create(Application);
    StockPayQFM.Show;
  end
  else
    ShowTabSt(StockPayQFM.sFMId);
end;

procedure TMainFM.dxBarButton37Click(Sender: TObject);
begin
  if not Assigned(SaleInvoiceFM) then
  begin
    SaleInvoiceFM := TSaleInvoiceFM.Create(Application);
    SaleInvoiceFM.Show;
  end
  else
    ShowTabSt(SaleInvoiceFM.sFMId);
end;

procedure TMainFM.dxBarButton39Click(Sender: TObject);
begin
  if not Assigned(SalePayFM) then
  begin
    SalePayFM := TSalePayFM.Create(Application);
    SalePayFM.Show;
  end
  else
    ShowTabSt(SalePayFM.sFMId);
end;

procedure TMainFM.dxBarButton3Click(Sender: TObject);
begin
  if not Assigned(EmployeeFM) then
  begin
    EmployeeFM := TEmployeeFM.Create(Application);
    EmployeeFM.Show;
  end
  else
    ShowTabSt(EmployeeFM.sFMId);
end;

procedure TMainFM.dxbrbtn10Click(Sender: TObject);
begin
  if not Assigned(OtherInFM) then
  begin
    OtherInFM := TOtherInFM.Create(Application);
    OtherInFM.Show;
  end
  else
    ShowTabSt(OtherInFM.sFMId);
end;

procedure TMainFM.dxbrbtn11Click(Sender: TObject);
begin
  if not Assigned(AssistInFM) then
  begin
    AssistInFM := TAssistInFM.Create(Application);
    AssistInFM.Show;
  end
  else
    ShowTabSt(AssistInFM.sFMId);
end;

procedure TMainFM.dxbrbtn12Click(Sender: TObject);
begin
  if not Assigned(ProductInFM) then
  begin
    ProductInFM := TProductInFM.Create(Application);
    ProductInFM.Show;
  end
  else
    ShowTabSt(ProductInFM.sFMId);
end;

procedure TMainFM.dxbrbtn13Click(Sender: TObject);
begin
  if not Assigned(AssistOutFM) then
  begin
    AssistOutFM := TAssistOutFM.Create(Application);
    AssistOutFM.Show;
  end
  else
    ShowTabSt(AssistOutFM.sFMId);
end;

procedure TMainFM.dxbrbtn14Click(Sender: TObject);
begin
  if not Assigned(MatOutFM) then
  begin
    MatOutFM := TMatOutFM.Create(Application);
    MatOutFM.Show;
  end
  else
    ShowTabSt(MatOutFM.sFMId);
end;

procedure TMainFM.dxbrbtn15Click(Sender: TObject);
begin
  if not Assigned(ItemSwitchFM) then
  begin
    ItemSwitchFM := TItemSwitchFM.Create(Application);
    ItemSwitchFM.Show;
  end
  else
    ShowTabSt(ItemSwitchFM.sFMId);
end;

procedure TMainFM.dxbrbtn16Click(Sender: TObject);
begin
  if not Assigned(AssistMoveFM) then
  begin
    AssistMoveFM := TAssistMoveFM.Create(Application);
    AssistMoveFM.Show;
  end
  else
    ShowTabSt(AssistMoveFM.sFMId);
end;

procedure TMainFM.dxbrbtn17Click(Sender: TObject);
begin
  if not Assigned(ItemSaleQFM) then
  begin
    ItemSaleQFM := TItemSaleQFM.Create(Application);
    ItemSaleQFM.Show;
  end
  else
    ShowTabSt(ItemSaleQFM.sFMId);
end;

procedure TMainFM.dxbrbtn18Click(Sender: TObject);
begin
  if not Assigned(AssistMoveInFM) then
  begin
    AssistMoveInFM := TAssistMoveInFM.Create(Application);
    AssistMoveInFM.Show;
  end
  else
    ShowTabSt(AssistMoveInFM.sFMId);
end;

procedure TMainFM.dxbrbtn21Click(Sender: TObject);
begin
  if not Assigned(PreSendMsgFM) then
  begin
    PreSendMsgFM := TPreSendMsgFM.Create(Application);
    PreSendMsgFM.Show;
  end
  else
    ShowTabSt(PreSendMsgFM.sFMId);
end;

procedure TMainFM.dxbrbtn22Click(Sender: TObject);
begin
  if not Assigned(MainFormSetFM) then
  begin
    MainFormSetFM := TMainFormSetFM.Create(Application);
    MainFormSetFM.Show;
  end
  else
    ShowTabSt(MainFormSetFM.sFMId);
end;

procedure TMainFM.dxbrbtn23Click(Sender: TObject);
begin
  if not Assigned(SaleAccountAgeQFM) then
  begin
    SaleAccountAgeQFM := TSaleAccountAgeQFM.Create(Application);
    SaleAccountAgeQFM.Show;
  end
  else
    ShowTabSt(SaleAccountAgeQFM.sFMId);
end;

procedure TMainFM.dxbrbtn24Click(Sender: TObject);
begin
  if not Assigned(StockAccountAgeQFM) then
  begin
    StockAccountAgeQFM := TStockAccountAgeQFM.Create(Application);
    StockAccountAgeQFM.Show;
  end
  else
    ShowTabSt(StockAccountAgeQFM.sFMId);
end;

procedure TMainFM.dxbrbtn2Click(Sender: TObject);
begin
  if not Assigned(SaleQFM) then
  begin
    SaleQFM := TSaleQFM.Create(Application);
    SaleQFM.Show;
  end
  else
    ShowTabSt(SaleQFM.sFMId);
end;

procedure TMainFM.dxbrbtn4Click(Sender: TObject);
begin
  if not Assigned(RequireQFM) then
  begin
    RequireQFM := TRequireQFM.Create(Application);
    RequireQFM.Show;
  end
  else
    ShowTabSt(RequireQFM.sFMId);
end;

procedure TMainFM.dxbrbtn5Click(Sender: TObject);
begin
  if not Assigned(RequireFM) then
  begin
    RequireFM := TRequireFM.Create(Application);
    RequireFM.Show;
  end
  else
    ShowTabSt(RequireFM.sFMId);
end;

procedure TMainFM.dxbrbtn6Click(Sender: TObject);
begin
  if not Assigned(ChangePassFM) then
    ChangePassFM := TChangePassFM.Create(Application);
  ChangePassFM.ShowModal;
  ChangePassFM.BringToFront;
  ChangePassFM.WindowState := wsNormal;
end;

procedure TMainFM.dxbrbtn8Click(Sender: TObject);
begin
  if not Assigned(StockInFM) then
  begin
    StockInFM := TStockInFM.Create(Application);
    StockInFM.Show;
  end
  else
    ShowTabSt(StockInFM.sFMId);
end;

procedure TMainFM.dxbrbtn9Click(Sender: TObject);
begin
  BillView('ProOrderHDTB', 'select * from  ProOrderHDTB  where IsNull(bMaxAudit,0)=0');
  {if not Assigned(ProOrderFM) then
  begin
    ProOrderFM := TProOrderFM.Create(Application);
    ProOrderFM.Show;
  end
  else
    ShowTabSt(ProOrderFM.sFMId); }
end;

procedure TMainFM.dxBarButton40Click(Sender: TObject);
begin
  if not Assigned(SaleMonthAccountFM) then
  begin
    SaleMonthAccountFM := TSaleMonthAccountFM.Create(Application);
    SaleMonthAccountFM.Show;
  end
  else
    ShowTabSt(WareMonthAccountFM.sFMId);
end;

procedure TMainFM.dxBarButton41Click(Sender: TObject);
begin
  if not Assigned(OtherSetFM) then
  begin
    OtherSetFM := TOtherSetFM.Create(Application);
    OtherSetFM.Show;
  end
  else
    ShowTabSt(OtherSetFM.sFMId);
end;

procedure TMainFM.dxBarButton42Click(Sender: TObject);
begin
  if not Assigned(SysParamFM) then
  begin
    SysParamFM := TSysParamFM.Create(Application);
    SysParamFM.Show;
  end
  else
    ShowTabSt(SysParamFM.sFMId);
end;

procedure TMainFM.dxBarButton43Click(Sender: TObject);
begin
  if not Assigned(ReportSetFM) then
  begin
    ReportSetFM := TReportSetFM.Create(Application);
    ReportSetFM.Show;
  end
  else
    ShowTabSt(ReportSetFM.sFMId);
end;

procedure TMainFM.dxBarButton44Click(Sender: TObject);
begin
  if not Assigned(SalePayQFM) then
  begin
    SalePayQFM := TSalePayQFM.Create(Application);
    SalePayQFM.Show;
  end
  else
    ShowTabSt(SalePayQFM.sFMId);
end;

procedure TMainFM.dxBarButton45Click(Sender: TObject);
begin
  if not Assigned(SysTableSetFM) then
  begin
    SysTableSetFM := TSysTableSetFM.Create(Application);
    SysTableSetFM.Show;
  end
  else
    ShowTabSt(SysTableSetFM.sFMId);
end;

procedure TMainFM.dxBarButton46Click(Sender: TObject);
begin
  if not Assigned(ColorFM) then
  begin
    ColorFM := TColorFM.Create(Application);
    ColorFM.Show;
  end
  else
    ShowTabSt(ColorFM.sFMId);
end;

procedure TMainFM.dxBarButton47Click(Sender: TObject);
begin
 { if not Assigned(ItemBomFM) then
  begin
    ItemBomFM := TItemBomFM.Create(Application);
    ItemBomFM.Show;
  end
  else
    ShowTabSt(ItemBomFM.sFMId); }
  if not Assigned(ItemBomQFM) then
  begin
    ItemBomQFM := TItemBomQFM.Create(Application);
    ItemBomQFM.Show;
  end
  else
    ShowTabSt(ItemBomQFM.sFMId);
end;

procedure TMainFM.dxBarButton48Click(Sender: TObject);
begin
  if not Assigned(StockPriceFM) then
  begin
    StockPriceFM := TStockPriceFM.Create(Application);
    StockPriceFM.Show;
  end
  else
    ShowTabSt(StockPriceFM.sFMId);
end;

procedure TMainFM.dxBarButton49Click(Sender: TObject);
begin
  if not Assigned(StockOrderQFM) then
  begin
    StockOrderQFM := TStockOrderQFM.Create(Application);
    StockOrderQFM.Show;
  end
  else
    ShowTabSt(StockOrderQFM.sFMId);
end;

procedure TMainFM.dxBarButton4Click(Sender: TObject);
begin
  if not Assigned(ItemFM) then
  begin
    ItemFM := TItemFM.Create(Application);
    ItemFM.Show;
  end
  else
    ShowTabSt(ItemFM.sFMId);
end;

procedure TMainFM.dxBarButton51Click(Sender: TObject);
begin
  if not Assigned(SalePriceFM) then
  begin
    SalePriceFM := TSalePriceFM.Create(Application);
    SalePriceFM.Show;
  end
  else
    ShowTabSt(SalePriceFM.sFMId);
end;

procedure TMainFM.dxBarButton52Click(Sender: TObject);
begin
  if not Assigned(SaleOrderQFM) then
  begin
    SaleOrderQFM := TSaleOrderQFM.Create(Application);
    SaleOrderQFM.Show;
  end
  else
    ShowTabSt(SaleOrderQFM.sFMId);
end;

procedure TMainFM.dxBarButton53Click(Sender: TObject);
begin
  if not Assigned(SaleSenderQFM) then
  begin
    SaleSenderQFM := TSaleSenderQFM.Create(Application);
    SaleSenderQFM.Show;
  end
  else
    ShowTabSt(SaleSenderQFM.sFMId);
end;

procedure TMainFM.dxBarButton54Click(Sender: TObject);
begin
  if not Assigned(ShopMoveInFM) then
  begin
    ShopMoveInFM := TShopMoveInFM.Create(Application);
    ShopMoveInFM.Show;
  end
  else
    ShowTabSt(ShopMoveInFM.sFMId);
end;

procedure TMainFM.dxBarButton55Click(Sender: TObject);
begin
  {if not Assigned(ItemTechFM) then
  begin
    ItemTechFM := TItemTechFM.Create(Application);
    ItemTechFM.Show;
  end
  else
    ShowTabSt(ItemTechFM.sFMId); }
  if not Assigned(ItemTechQFM) then
  begin
    ItemTechQFM := TItemTechQFM.Create(Application);
    ItemTechQFM.Show;
  end
  else
    ShowTabSt(ItemTechQFM.sFMId);
end;

procedure TMainFM.dxBarButton56Click(Sender: TObject);
begin
  if not Assigned(BOMMatOutQFM) then
  begin
    BOMMatOutQFM := TBOMMatOutQFM.Create(Application);
    BOMMatOutQFM.Show;
  end
  else
    ShowTabSt(BOMMatOutQFM.sFMId);
end;

procedure TMainFM.dxBarButton57Click(Sender: TObject);
begin
  if not Assigned(SaleOutFM) then
  begin
    SaleOutFM := TSaleOutFM.Create(Application);
    SaleOutFM.Show;
  end
  else
    ShowTabSt(SaleOutFM.sFMId);
end;

procedure TMainFM.dxBarButton58Click(Sender: TObject);
begin
  if not Assigned(ProDispatchFM) then
  begin
    ProDispatchFM := TProDispatchFM.Create(Application);
    ProDispatchFM.Show;
  end
  else
    ShowTabSt(ProDispatchFM.sFMId);
end;

procedure TMainFM.dxBarButton59Click(Sender: TObject);
begin
  if not Assigned(OtherOutFM) then
  begin
    OtherOutFM := TOtherOutFM.Create(Application);
    OtherOutFM.Show;
  end
  else
    ShowTabSt(OtherOutFM.sFMId);
end;

procedure TMainFM.dxBarButton5Click(Sender: TObject);
begin
  if not Assigned(DeptFM) then
  begin
    DeptFM := TDeptFM.Create(Application);
    DeptFM.Show;
  end
  else
    ShowTabSt(DeptFM.sFMId);
end;

procedure TMainFM.dxBarButton60Click(Sender: TObject);
begin
  if not Assigned(ProDispatchQFM) then
  begin
    ProDispatchQFM := TProDispatchQFM.Create(Application);
    ProDispatchQFM.Show;
  end
  else
    ShowTabSt(ProDispatchQFM.sFMId);
end;

procedure TMainFM.dxBarButton61Click(Sender: TObject);
begin
  if not Assigned(WareInOutSumQFM) then
  begin
    WareInOutSumQFM := TWareInOutSumQFM.Create(Application);
    WareInOutSumQFM.Show;
  end
  else
    ShowTabSt(WareInOutSumQFM.sFMId);
end;

procedure TMainFM.dxBarButton62Click(Sender: TObject);
begin
  if not Assigned(WareStorageQFM) then
  begin
    WareStorageQFM := TWareStorageQFM.Create(Application);
    WareStorageQFM.Show;
  end
  else
    ShowTabSt(WareStorageQFM.sFMId);
end;

procedure TMainFM.dxBarButton63Click(Sender: TObject);
begin
  BillView('EmpWorkRecord', 'select * from  EmpWorkRecordHDTB  where IsNull(bMaxAudit,0)=0');
end;

procedure TMainFM.dxBarButton64Click(Sender: TObject);
begin
  if not Assigned(WareInOutQFM) then
  begin
    WareInOutQFM := TWareInOutQFM.Create(Application);
    WareInOutQFM.Show;
  end
  else
    ShowTabSt(WareInOutQFM.sFMId);
end;

procedure TMainFM.dxBarButton65Click(Sender: TObject);
begin
  if not Assigned(ProOrderQFM) then
  begin
    ProOrderQFM := TProOrderQFM.Create(Application);
    ProOrderQFM.Show;
  end
  else
    ShowTabSt(ProOrderQFM.sFMId);
end;

procedure TMainFM.dxBarButton66Click(Sender: TObject);
begin
  if not Assigned(EmpWorkRecordQFM) then
  begin
    EmpWorkRecordQFM := TEmpWorkRecordQFM.Create(Application);
    EmpWorkRecordQFM.Show;
  end
  else
    ShowTabSt(EmpWorkRecordQFM.sFMId);
end;

procedure TMainFM.dxBarButton67Click(Sender: TObject);
begin
  if not Assigned(SFCMonQFM) then
  begin
    SFCMonQFM := TSFCMonQFM.Create(Application);
    SFCMonQFM.Show;
  end
  else
    ShowTabSt(SFCMonQFM.sFMId);
end;

procedure TMainFM.dxBarButton6Click(Sender: TObject);
begin
  if not Assigned(StockOrderFM) then
  begin
    StockOrderFM := TStockOrderFM.Create(Application);
    StockOrderFM.Show;
  end
  else
    ShowTabSt(StockOrderFM.sFMId);
end;

procedure TMainFM.dxBarButton71Click(Sender: TObject);
begin
  if not Assigned(ShopMoveQFM) then
  begin
    ShopMoveQFM := TShopMoveQFM.Create(Application);
    ShopMoveQFM.Show;
  end
  else
    ShowTabSt(ShopMoveQFM.sFMId);
end;

procedure TMainFM.dxBarButton72Click(Sender: TObject);
begin
  if not Assigned(ShopMoveInQFM) then
  begin
    ShopMoveInQFM := TShopMoveInQFM.Create(Application);
    ShopMoveInQFM.Show;
  end
  else
    ShowTabSt(ShopMoveInQFM.sFMId);
end;

procedure TMainFM.dxBarButton73Click(Sender: TObject);
begin
  if not Assigned(OrderMatQFM) then
  begin
    OrderMatQFM := TOrderMatQFM.Create(Application);
    OrderMatQFM.Show;
  end
  else
    ShowTabSt(OrderMatQFM.sFMId);
end;

procedure TMainFM.dxBarButton74Click(Sender: TObject);
begin
  if not Assigned(ProProcessQFM) then
  begin
    ProProcessQFM := TProProcessQFM.Create(Application);
    ProProcessQFM.Show;
  end
  else
    ShowTabSt(ProProcessQFM.sFMId);
end;

procedure TMainFM.dxBarButton75Click(Sender: TObject);
begin
  if not Assigned(AssistMoveQFM) then
  begin
    AssistMoveQFM := TAssistMoveQFM.Create(Application);
    AssistMoveQFM.Show;
  end
  else
    ShowTabSt(AssistMoveQFM.sFMId);
end;

procedure TMainFM.dxBarButton76Click(Sender: TObject);
begin
  if not Assigned(AssistMoveInQFM) then
  begin
    AssistMoveInQFM := TAssistMoveInQFM.Create(Application);
    AssistMoveInQFM.Show;
  end
  else
    ShowTabSt(AssistMoveInQFM.sFMId);
end;

procedure TMainFM.dxBarButton77Click(Sender: TObject);
begin
  if not Assigned(CNAccNameFM) then
  begin
    CNAccNameFM := TCNAccNameFM.Create(Application);
    CNAccNameFM.Show;
  end
  else
    ShowTabSt(CNAccNameFM.sFMId);
end;

procedure TMainFM.dxBarButton78Click(Sender: TObject);
begin
  if not Assigned(CNItemFM) then
  begin
    CNItemFM := TCNItemFM.Create(Application);
    CNItemFM.Show;
  end
  else
    ShowTabSt(CNItemFM.sFMId);
end;

procedure TMainFM.dxBarButton7Click(Sender: TObject);
begin
  if not Assigned(StockReceFM) then
  begin
    StockReceFM := TStockReceFM.Create(Application);
    StockReceFM.Show;
  end
  else
    ShowTabSt(StockReceFM.sFMId);
end;

procedure TMainFM.dxBarButton80Click(Sender: TObject);
begin
  if not Assigned(CWOtherFM) then
  begin
    CWOtherFM := TCWOtherFM.Create(Application);
    CWOtherFM.Show;
  end
  else
    ShowTabSt(CWOtherFM.sFMId);
end;

procedure TMainFM.dxBarButton81Click(Sender: TObject);
begin
  if not Assigned(CNFirstFM) then
  begin
    CNFirstFM := TCNFirstFM.Create(Application);
    CNFirstFM.Show;
  end
  else
    ShowTabSt(CNFirstFM.sFMId);
end;

procedure TMainFM.dxBarButton82Click(Sender: TObject);
begin
  if not Assigned(CNCashQFM) then
  begin
    CNCashQFM := TCNCashQFM.Create(Application);
    CNCashQFM.Show;
  end
  else
    ShowTabSt(CNCashQFM.sFMId);
end;

procedure TMainFM.dxBarButton83Click(Sender: TObject);
begin
  if not Assigned(CNBankQFM) then
  begin
    CNBankQFM := TCNBankQFM.Create(Application);
    CNBankQFM.Show;
  end
  else
    ShowTabSt(CNBankQFM.sFMId);
end;

procedure TMainFM.dxBarButton84Click(Sender: TObject);
begin
  if not Assigned(CNMoveFM) then
  begin
    CNMoveFM := TCNMoveFM.Create(Application);
    CNMoveFM.Show;
  end
  else
    ShowTabSt(CNMoveFM.sFMId);
end;

procedure TMainFM.dxBarButton85Click(Sender: TObject);
begin
  if not Assigned(CNMonthAccountFM) then
  begin
    CNMonthAccountFM := TCNMonthAccountFM.Create(Application);
    CNMonthAccountFM.Show;
  end
  else
    ShowTabSt(CNMonthAccountFM.sFMId);
end;

procedure TMainFM.dxBarButton86Click(Sender: TObject);
begin
  if not Assigned(ShopBackQFM) then
  begin
    ShopBackQFM := TShopBackQFM.Create(Application);
    ShopBackQFM.Show;
  end
  else
    ShowTabSt(ShopBackQFM.sFMId);
end;

procedure TMainFM.dxBarButton87Click(Sender: TObject);
begin
   BillView('ShopBack', 'select * from ItemMoveHDTB where MKindId=''ShopBack'' and IsNull(bMaxAudit,0)=0 ');
end;

procedure TMainFM.dxBarButton88Click(Sender: TObject);
begin
   BillView('AssistBack', 'select * from ItemMoveHDTB where MKindId=''AssistBack'' and IsNull(bMaxAudit,0)=0 ');
end;

procedure TMainFM.dxBarButton89Click(Sender: TObject);
begin
  if not Assigned(AssistBackQFM) then
  begin
    AssistBackQFM := TAssistBackQFM.Create(Application);
    AssistBackQFM.Show;
  end
  else
    ShowTabSt(AssistBackQFM.sFMId);
end;

procedure TMainFM.dxBarButton8Click(Sender: TObject);
begin
  if not Assigned(SaleOrderFM) then
  begin
    SaleOrderFM := TSaleOrderFM.Create(Application);
    SaleOrderFM.Show;
  end
  else
    ShowTabSt(SaleOrderFM.sFMId);
end;

procedure TMainFM.dxBarButton90Click(Sender: TObject);
begin
  if not Assigned(SysLogQFM) then
  begin
    SysLogQFM := TSysLogQFM.Create(Application);
    SysLogQFM.Show;
  end
  else
    ShowTabSt(SaleOrderFM.sFMId);
end;

procedure TMainFM.dxBarButton91Click(Sender: TObject);
begin
  if not Assigned(AssistOutInQFM) then
  begin
    AssistOutInQFM := TAssistOutInQFM.Create(Application);
    AssistOutInQFM.Show;
  end
  else
    ShowTabSt(AssistOutInQFM.sFMId);
end;

procedure TMainFM.dxBarButton93Click(Sender: TObject);
begin
  if not Assigned(ItemBomAnalyseFM) then
  begin
    ItemBomAnalyseFM := TItemBomAnalyseFM.Create(Application);
    ItemBomAnalyseFM.Show;
  end
  else
    ShowTabSt(ItemBomAnalyseFM.sFMId);
end;

procedure TMainFM.dxBarButton9Click(Sender: TObject);
begin
  if not Assigned(SaleSenderFM) then
  begin
    SaleSenderFM := TSaleSenderFM.Create(Application);
    SaleSenderFM.Show;
  end
  else
    ShowTabSt(SaleSenderFM.sFMId);
end;

procedure TMainFM.dxBarLargeButton1Click(Sender: TObject);
begin
  SetMenuShow;
end;

procedure TMainFM.dxBarLargeButton3Click(Sender: TObject);
begin
  if bReg then
  begin
    ShowBox('您使用的已是正式版,无需再注册');
    Exit;
  end;
  if not Assigned(RegSetFM) then
    RegSetFM := TRegSetFM.Create(Application);
  RegSetFM.ShowModal;
  RegSetFM.BringToFront;
  RegSetFM.WindowState := wsNormal;
end;

procedure TMainFM.dxBarLargeButton4Click(Sender: TObject);
begin
  if not Assigned(AboutFM) then
    AboutFM := TAboutFM.Create(Application);
  AboutFM.ShowModal;
  AboutFM.BringToFront;
  AboutFM.WindowState := wsNormal;
end;

procedure TMainFM.dxBarLargeButton5Click(Sender: TObject);
begin
   OpenFrom(SysModuleFM, TSysModuleFM);
end;

procedure TMainFM.dxBarLargeButton6Click(Sender: TObject);
begin
   OpenFrom(BillModuleFM, TBillModuleFM);
end;

procedure TMainFM.dxBarLargeButton7Click(Sender: TObject);
begin
   OpenFrom(ReportModuleFM, TReportModuleFM);
end;

procedure TMainFM.dxNavBarLItem1Click(Sender: TObject);
begin
  if not Assigned(AreaFM) then
  begin
    AreaFM := TAreaFM.Create(Application);
    AreaFM.Show;
  end
  else
    ShowTabSt(AreaFM.sFMId);
end;

procedure TMainFM.dxSkinChooserGalleryItem1SkinChanged(Sender: TObject;
  const ASkinName: string);
var
  SkinIni: TIniFile;
begin
  //dxSkinsUserSkinLoadFromFile(trim(ExtractFilePath(Application.ExeName)) + '\Skins\' + SkinName + '.skinres');
  MainFM.skinCtl.NativeStyle := False;
  MainFM.skinCtl.UseSkins := true;
  MainFM.skinCtl.SkinName := ASkinName;
  MainFM.Ribbon.ColorSchemeName := ASkinName;
  // 写入ini文件中
  SkinIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Config\LayOut.ini');
  SkinIni.WriteString('配置', '皮肤名称', ASkinName);
end;

procedure TMainFM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ShowDlg('确定要退出管理系统?') then
    Action := cafree
  else
    Action := canone;
end;

procedure TMainFM.FormCreate(Sender: TObject);
begin
  // 获取计算机配置
  GetLocalInfo();
  // 获取界面配置
  GetFMConfig;

  with qyMenu do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('exec prSysMenuQ' + QuotedStr(LoginId));
    Open;
  end;
end;

procedure TMainFM.FormShow(Sender: TObject);
var
  i: Integer;
begin
  try
    // 显示我的桌面
    TabSt := TcxTabSheet.Create(Application);
    if not Assigned(MainBaseFM) then
    begin
      MainBaseFM := TMainBaseFM.Create(Application);
      TabSt.PageControl := MainFM.cxPgcMain;
      TabSt.Caption := MainBaseFM.Caption;
      TabSt.Hint := TMainBaseFM.ClassName;
      MainFM.cxPgcMain.Pages[0].Show;
      Twincontrol(MainBaseFM).Parent := MainFM.cxPgcMain.Pages[0];
      MainBaseFM.Align := alClient;
      MainBaseFM.Show;
    end;
    // 显示菜单
    qyMenu.Open;
    for I := 0 to MainFM.ComponentCount - 1 do
    begin
      if trim(MainFM.Components[i].ClassName) = 'TdxBarSubItem' then
      begin
        TdxBarSubItem(MainFM.Components[i]).Visible := ivNever;
        qyMenu.First;
        while not qyMenu.eof do
        begin
          if (IntToStr(MainFM.Components[i].Tag) = qyMenu.FieldByName('Tag').AsString) or (IntToStr(MainFM.Components[i].Tag) = '99') then
            TdxBarSubItem(MainFM.Components[i]).Visible := ivAlways;
          qyMenu.Next;
        end;
      end;
      if (trim(MainFM.Components[i].ClassName) = 'TdxBarButton') then
      begin
        TdxBarButton(MainFM.Components[i]).Visible := ivNever;
        qyMenu.First;
        while not qyMenu.eof do
        begin
          if (IntToStr(MainFM.Components[i].Tag) = qyMenu.FieldByName('Tag').AsString) or (IntToStr(MainFM.Components[i].Tag) = '99') then
            TdxBarButton(MainFM.Components[i]).Visible := ivAlways;
          qyMenu.Next;
        end;
      end;
      //显示导航栏
      if (trim(MainFM.Components[i].ClassName) = 'TdxNavBarGroup') then
      begin
        TdxNavBarGroup(MainFM.Components[i]).Visible := false;
        qyMenu.First;
        while not qyMenu.eof do
        begin
          if (IntToStr(MainFM.Components[i].Tag) = qyMenu.FieldByName('Tag').AsString) or (MainFM.Components[i].Tag = 0) then
            TdxNavBarGroup(MainFM.Components[i]).Visible := true;
          qyMenu.Next;
        end;
      end;
    end;
    GetServerTime;
    GetSysParam(); // 获取系统参数
    GetWareRight; //获取仓库权限
    sVer := 'H2.15.03.31.A';
    if bReg then
      Self.Caption := '恒捷软件管理系统-商贸版' + sCoShortName;
    //else
    //  Self.Caption := '恒捷软件管理系统-' + sCoShortName + ' 试用版 (' + IntToStr(SpareDays) + '天)';
    dxStausBar.Panels[1].Text := '当前用户:' + LoginName;
    dxStausBar.Panels[2].Text := '';
    dxStausBar.Panels[4].Text := '当前版本:' + sVer;
    dxStausBar.Panels[5].Text := '登录时间:' + FormatDatetime('yyyy-mm-dd  hh:nn:ss', SysDateTime);


    if (sNewVer <> '') and (sVer <> sNewVer) then
    begin
      //ShowBox('您的程序不是最新版本！');
      FtpUpdateExe;
    end;

    if (FormatDatetime('yyyy-mm-dd',UseEndDate)<>'1899-12-30') and (SysDateTime>UseEndDate) then
    begin
      ShowWarn('无法使用本系统！');
      Application.Terminate;
    end;

  except
    on E: Exception do
      ShowWarn(E.Message);
  end;
end;

procedure TMainFM.RibbonDblClick(Sender: TObject);
var
  ConfigIni: TIniFile;
begin
  try
    //Ribbon.ShowTabGroups := not Ribbon.ShowTabGroups;
    ConfigIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Config\LayOut.ini');
    ConfigIni.WriteBool('配置', '菜单显示', not Ribbon.ShowTabGroups);
  except
  end;
end;

procedure TMainFM.Timer1Timer(Sender: TObject);
begin
  cxHintCtr.HideHint;
end;

end.

