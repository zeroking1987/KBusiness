unit ControlPublicPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxNavigator, ToolWin, ComCtrls, ExtCtrls, DB, ADODB,
  OleDB, IOUtils, StrUtils, IdFTP,
  cxDBNavigator, dxNavBar, XPMan, Menus, cxDBEdit, dxdbtree, cxDropdownEdit,
  DBCtrls, cxGrid, cxGridExportLink, IniFiles, ActiveX, WinSock,
  cxGridDBTableView, cxLookAndFeelPainters, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, DateUtils,
  cxGridCustomTableView, cxGridTableView, cxGridDBBandedTableView, cxLookAndFeels,
  dxSkinsDefaultPainters, cxPC, dxBar, cxBarEditItem,
  cxDBLookupComboBox, AdoInt, StdCtrls, cxMRUEdit,
  ComObj, ADOConst, Registry, cxDBTL, cxTLData, cxButtonEdit, dxCustomTileControl;

//打开菜单
procedure OpenMenu(TTagObjec: Tobject);
// 显示对应窗体
procedure BillView(sTableId, sWhere: string);

//显示备注窗体
procedure ShoRemarkTextFM(sTitle, sContent: string);

implementation

uses PublicPS, DataPS, RegPS, RegSetPS, LoginPS, MainPS, BasePS, ReportPS, RemarkTextPS, ItemKindQPS,
  WareQPS, RequirePS, SaleOrderPS, ProTypeQPS, StockInPS, ProductInPS, OtherInPS,
  MatOutPS, ProductOutPS, OtherOutPS, SaleOutPS, SaleSenderPS, ItemBomPS, ItemQPS, ItemTechPS,WareStorageQPS,StockInQPS,
  StockOrderPS, PrvQPS, EmpQPS, CustQPS, WareCheckPS, AssistMovePS, AssistMoveInPS,
  StockInvoicePS, SaleInvoicePS, ShopMovePS, ShopMoveInPS, EmpWorkRecordPS, AssistBackPS, ShopBackPS,
  StockPayPS, SalePayPS, ItemSwitchPS, AssistInPS, AssistOutPS, ProOrderPS, ProDispatchPS, CNMovePS,
  ItemPS, WarePS,ProviderPS, CustPS, EmployeePS, OtherSetPS, SaleOutQPS, SalePayQPS, SysParamPS, ReportSetPS,
  ChangePassPS,DataBackPS;

procedure OpenMenu(TTagObjec: Tobject);
var
  i, Tag, OpenTag: Integer;
begin
  try
    if TTagObjec is TLabel then
      Tag := TLabel(TTagObjec).Tag
    else if (TTagObjec is TImage) then
      Tag := TImage(TTagObjec).Tag
    else if (TTagObjec is TdxTileControlItem) then
      Tag := TdxTileControlItem(TTagObjec).Tag;

    OpenTag := TdxTileControlItem(TTagObjec).Tag;
    with DataFM.qyTemp do
    begin
      if Active then Close;
      sql.Clear;
      if LoginId <> 'admin' then
      begin
        sql.Add('select a.Tag from SysBillSetTB a left join UserRightTB b on a.Tag=b.Tag');
        sql.Add('where b.UserId=' + QuotedStr(LoginId) + ' and a.Tag=' + QuotedStr(IntToStr(OpenTag)) + ' and (ISNULL(b.bShow,0)=1 or ISNULL(a.bPublic,0)=1)');
      end
      else
      begin
        sql.Add(' select Tag from SysBillSetTB')
      end;
      Open;
      if Eof then
      begin
        ShowBox('您没有操作该单权限！');
        Exit;
      end;
    end;
    if OpenTag = 1001 then //产品资料
    begin
      if not Assigned(ItemFM) then
      begin
        ItemFM := TItemFM.Create(Application);
        ItemFM.Show;
      end
      else
        ShowTabSt(ItemFM.sFMId);
    end;
      if OpenTag = 1002 then //仓库资料
    begin
      if not Assigned(WareFM) then
      begin
        WareFM := TWareFM.Create(Application);
        WareFM.Show;
      end
      else
        ShowTabSt(WareFM.sFMId);
    end;
    if OpenTag = 1004 then //供应商资料
    begin
      if not Assigned(ProviderFM) then
      begin
        ProviderFM := TProviderFM.Create(Application);
        ProviderFM.Show;
      end
      else
        ShowTabSt(ProviderFM.sFMId);
    end;
    if OpenTag = 1006 then //客户资料
    begin
      if not Assigned(CustFM) then
      begin
        CustFM := TCustFM.Create(Application);
        CustFM.Show;
      end
      else
        ShowTabSt(CustFM.sFMId);
    end;
    if OpenTag = 1008 then //员工资料
    begin
      if not Assigned(EmployeeFM) then
      begin
        EmployeeFM := TEmployeeFM.Create(Application);
        EmployeeFM.Show;
      end
      else
        ShowTabSt(EmployeeFM.sFMId);
    end;
    if OpenTag = 1010 then //其他设置
    begin
      if not Assigned(OtherSetFM) then
      begin
        OtherSetFM := TOtherSetFM.Create(Application);
        OtherSetFM.Show;
      end
      else
        ShowTabSt(OtherSetFM.sFMId);
    end;
    if OpenTag = 1011 then //销售单
    begin
      if not Assigned(SaleOutFM) then
      begin
        SaleOutFM := TSaleOutFM.Create(Application);
        SaleOutFM.Show;
      end
      else
        ShowTabSt(SaleOutFM.sFMId);
    end;
    if OpenTag = 1013 then //收款单
    begin
      if not Assigned(SalePayFM) then
      begin
        SalePayFM := TSalePayFM.Create(Application);
        SalePayFM.Show;
      end
      else
        ShowTabSt(SalePayFM.sFMId);
    end;
    if OpenTag = 1021 then //进货单
    begin
      if not Assigned(StockInFM) then
      begin
        StockInFM := TStockInFM.Create(Application);
        StockInFM.Show;
      end
      else
        ShowTabSt(StockInFM.sFMId);
    end;
    if OpenTag = 1201 then //销售单查询
    begin
      if not Assigned(SaleOutQFM) then
      begin
        SaleOutQFM := TSaleOutQFM.Create(Application);
        SaleOutQFM.Show;
      end
      else
        ShowTabSt(SaleOutQFM.sFMId);
    end;
    if OpenTag = 1205 then //收款单查询
    begin
      if not Assigned(SalePayQFM) then
      begin
        SalePayQFM := TSalePayQFM.Create(Application);
        SalePayQFM.Show;
      end
      else
        ShowTabSt(SalePayQFM.sFMId);
    end;
        if OpenTag = 1211 then //进货单查询
    begin
      if not Assigned(StockInQFM) then
      begin
        StockInQFM := TStockInQFM.Create(Application);
        StockInQFM.Show;
      end
      else
        ShowTabSt(StockInQFM.sFMId);
    end;
    if OpenTag = 1221 then //库存查询
    begin
      if not Assigned(WareStorageQFM) then
      begin
        WareStorageQFM := TWareStorageQFM.Create(Application);
        WareStorageQFM.Show;
      end
      else
        ShowTabSt(WareStorageQFM.sFMId);
    end;
    if OpenTag = 1501 then //系统设置
    begin
      if not Assigned(SysParamFM) then
      begin
        SysParamFM := TSysParamFM.Create(Application);
        SysParamFM.Show;
      end
      else
        ShowTabSt(SysParamFM.sFMId);
    end;
    if OpenTag = 1503 then //打印模板
    begin
      if not Assigned(ReportSetFM) then
      begin
        ReportSetFM := TReportSetFM.Create(Application);
        ReportSetFM.Show;
      end
      else
        ShowTabSt(ReportSetFM.sFMId);
    end;
    if OpenTag = 1505 then //数据维护
    begin
      if not Assigned(DataBackFM) then
        DataBackFM := TDataBackFM.Create(Application);
      DataBackFM.ShowModal;
      DataBackFM.BringToFront;
      DataBackFM.WindowState := wsNormal;
    end;
        if OpenTag = 1507 then //密码修改
    begin
  if not Assigned(ChangePassFM) then
    ChangePassFM := TChangePassFM.Create(Application);
  ChangePassFM.ShowModal;
  ChangePassFM.BringToFront;
  ChangePassFM.WindowState := wsNormal;
    end;
  except
  end;
end;

procedure BillView(sTableId, sWhere: string);
var
  sTemp: string;
begin
  sTemp := HasShowRight(sTableId, LoginId, 'BillView');
  if sTemp = 'None' then
  begin
    ShowBox('你没有该单据权限');
    Exit;
  end;
  if sTableId = 'RequireHDTB' then
  begin
    if not Assigned(RequireFM) then
    begin
      RequireFM := TRequireFM.Create(Application);
      RequireFM.Show;
    end
    else
      ShowTabSt(RequireFM.sFMId);
    if RequireFM.btSave.Enabled then
      RequireFM.btCancel.Click;
    OpenRecords(RequireFM.qyHed, sWhere + sTemp);
  end;
  if sTableId = 'StockOrderHDTB' then
  begin
    if not Assigned(StockOrderFM) then
    begin
      StockOrderFM := TStockOrderFM.Create(Application);
      StockOrderFM.Show;
    end
    else
      ShowTabSt(StockOrderFM.sFMId);
    if StockOrderFM.btSave.Enabled then
      StockOrderFM.btCancel.Click;
    OpenRecords(StockOrderFM.qyHed, sWhere + sTemp);
  end;
  if sTableId = 'SaleOrderHDTB' then
  begin
    if not Assigned(SaleOrderFM) then
    begin
      SaleOrderFM := TSaleOrderFM.Create(Application);
      SaleOrderFM.Show;
    end
    else
      ShowTabSt(SaleOrderFM.sFMId);
    if SaleOrderFM.btSave.Enabled then
      SaleOrderFM.btCancel.Click;
    OpenRecords(SaleOrderFM.qyHed, sWhere + sTemp);
  end;
  if sTableId = 'SaleSenderHDTB' then
  begin
    if not Assigned(SaleSenderFM) then
    begin
      SaleSenderFM := TSaleSenderFM.Create(Application);
      SaleSenderFM.Show;
    end
    else
      ShowTabSt(SaleSenderFM.sFMId);
    if SaleSenderFM.btSave.Enabled then
      SaleSenderFM.btCancel.Click;
    OpenRecords(SaleSenderFM.qyHed, sWhere + sTemp);
  end;
  if sTableId = 'StockIn' then
  begin
    if not Assigned(StockInFM) then
    begin
      StockInFM := TStockInFM.Create(Application);
      StockInFM.Show;
    end
    else
      ShowTabSt(StockInFM.sFMId);
    if StockInFM.btSave.Enabled then
      StockInFM.btCancel.Click;
    OpenRecords(StockInFM.qyHed, sWhere + sTemp);
  end;
  if sTableId = 'ProductIn' then
  begin
    if not Assigned(ProductInFM) then
    begin
      ProductInFM := TProductInFM.Create(Application);
      ProductInFM.Show;
    end
    else
      ShowTabSt(ProductInFM.sFMId);
    if ProductInFM.btSave.Enabled then
      ProductInFM.btCancel.Click;
    OpenRecords(ProductInFM.qyHed, sWhere + sTemp);
  end;
  if sTableId = 'AssistIn' then
  begin
    if not Assigned(AssistInFM) then
    begin
      AssistInFM := TAssistInFM.Create(Application);
      AssistInFM.Show;
    end
    else
      ShowTabSt(AssistInFM.sFMId);
    if AssistInFM.btSave.Enabled then
      AssistInFM.btCancel.Click;
    OpenRecords(AssistInFM.qyHed, sWhere + sTemp);
  end;
  if (sTableId = 'OtherIn') or (sTableId = 'CheckMoreIn') or (sTableId = 'ItemMoveIn') then
  begin
    if not Assigned(OtherInFM) then
    begin
      OtherInFM := TOtherInFM.Create(Application);
      OtherInFM.Show;
    end
    else
      ShowTabSt(OtherInFM.sFMId);
    if OtherInFM.btSave.Enabled then
      OtherInFM.btCancel.Click;
    OpenRecords(OtherInFM.qyHed, sWhere + sTemp);
  end;

  if sTableId = 'MatOut' then
  begin
    if not Assigned(MatOutFM) then
    begin
      MatOutFM := TMatOutFM.Create(Application);
      MatOutFM.Show;
    end
    else
      ShowTabSt(MatOutFM.sFMId);
    if MatOutFM.btSave.Enabled then
      MatOutFM.btCancel.Click;
    OpenRecords(MatOutFM.qyHed, sWhere + sTemp);
  end;
  if sTableId = 'SaleOut' then
  begin
    if not Assigned(SaleOutFM) then
    begin
      SaleOutFM := TSaleOutFM.Create(Application);
      SaleOutFM.Show;
    end
    else
      ShowTabSt(SaleOutFM.sFMId);
    if SaleOutFM.btSave.Enabled then
      SaleOutFM.btCancel.Click;
    OpenRecords(SaleOutFM.qyHed, sWhere + sTemp);
  end;
  if sTableId = 'ProductOut' then
  begin
    if not Assigned(ProductOutFM) then
    begin
      ProductOutFM := TProductOutFM.Create(Application);
      ProductOutFM.Show;
    end
    else
      ShowTabSt(ProductOutFM.sFMId);
    if ProductOutFM.btSave.Enabled then
      ProductOutFM.btCancel.Click;
    OpenRecords(ProductOutFM.qyHed, sWhere + sTemp);
  end;
  if sTableId = 'AssistOut' then
  begin
    if not Assigned(AssistOutFM) then
    begin
      AssistOutFM := TAssistOutFM.Create(Application);
      AssistOutFM.Show;
    end
    else
      ShowTabSt(AssistOutFM.sFMId);
    if AssistOutFM.btSave.Enabled then
      AssistOutFM.btCancel.Click;
    OpenRecords(AssistOutFM.qyHed, sWhere + sTemp);
  end;
  if (sTableId = 'OtherOut') or (sTableId = 'CheckLossOut') or (sTableId = 'ItemMoveOut') then
  begin
    if not Assigned(OtherOutFM) then
    begin
      OtherOutFM := TOtherOutFM.Create(Application);
      OtherOutFM.Show;
    end
    else
      ShowTabSt(OtherOutFM.sFMId);
    if OtherOutFM.btSave.Enabled then
      OtherOutFM.btCancel.Click;
    OpenRecords(OtherOutFM.qyHed, sWhere + sTemp);
  end;
  if sTableId = 'ItemBomHDTB' then
  begin
    if not Assigned(ItemBomFM) then
    begin
      ItemBomFM := TItemBomFM.Create(Application);
      ItemBomFM.Show;
    end
    else
      ShowTabSt(ItemBomFM.sFMId);
    if ItemBomFM.btSave.Enabled then
      ItemBomFM.btCancel.Click;
    OpenRecords(ItemBomFM.qyHed, sWhere + sTemp);
  end;
  if sTableId = 'ItemTechHDTB' then
  begin
    if not Assigned(ItemTechFM) then
    begin
      ItemTechFM := TItemTechFM.Create(Application);
      ItemTechFM.Show;
    end
    else
      ShowTabSt(ItemTechFM.sFMId);
    if ItemTechFM.btSave.Enabled then
      ItemTechFM.btCancel.Click;
    OpenRecords(ItemTechFM.qyHed, sWhere + sTemp);
  end;
  if sTableId = 'WareCheckHDTB' then
  begin
    if not Assigned(WareCheckFM) then
    begin
      WareCheckFM := TWareCheckFM.Create(Application);
      WareCheckFM.Show;
    end
    else
      ShowTabSt(WareCheckFM.sFMId);
    if WareCheckFM.btSave.Enabled then
      WareCheckFM.btCancel.Click;
    OpenRecords(WareCheckFM.qyHed, sWhere + sTemp);
  end;
  if sTableId = 'ItemSwitch' then
  begin
    if not Assigned(ItemSwitchFM) then
    begin
      ItemSwitchFM := TItemSwitchFM.Create(Application);
      ItemSwitchFM.Show;
    end
    else
      ShowTabSt(ItemSwitchFM.sFMId);
    if ItemSwitchFM.btSave.Enabled then
      ItemSwitchFM.btCancel.Click;
    OpenRecords(ItemSwitchFM.qyHed, sWhere + sTemp);
  end;
  if sTableId = 'ShopMove' then
  begin
    if not Assigned(ShopMoveFM) then
    begin
      ShopMoveFM := TShopMoveFM.Create(Application);
      ShopMoveFM.Show;
    end
    else
      ShowTabSt(ShopMoveFM.sFMId);
    if ShopMoveFM.btSave.Enabled then
      ShopMoveFM.btCancel.Click;
    OpenRecords(ShopMoveFM.qyHed, sWhere + sTemp);
  end;
  if sTableId = 'ShopMoveIn' then
  begin
    if not Assigned(ShopMoveInFM) then
    begin
      ShopMoveInFM := TShopMoveInFM.Create(Application);
      ShopMoveInFM.Show;
    end
    else
      ShowTabSt(ShopMoveInFM.sFMId);
    if ShopMoveInFM.btSave.Enabled then
      ShopMoveInFM.btCancel.Click;
    OpenRecords(ShopMoveInFM.qyHed, sWhere + sTemp);
  end;
  if sTableId = 'ShopBack' then
  begin
    if not Assigned(ShopBackFM) then
    begin
      ShopBackFM := TShopBackFM.Create(Application);
      ShopBackFM.Show;
      if ShopBackFM.btSave.Enabled then
        ShopBackFM.btCancel.Click;
    end
    else
      ShowTabSt(ShopBackFM.sFMId);
    OpenRecords(ShopBackFM.qyHed, sWhere + sTemp);
  end;
  if sTableId = 'AssistMove' then
  begin
    if not Assigned(AssistMoveFM) then
    begin
      AssistMoveFM := TAssistMoveFM.Create(Application);
      AssistMoveFM.Show;
    end
    else
      ShowTabSt(AssistMoveFM.sFMId);
    if AssistMoveFM.btSave.Enabled then
      AssistMoveFM.btCancel.Click;
    OpenRecords(AssistMoveFM.qyHed, sWhere + sTemp);
  end;
  if sTableId = 'AssistMoveIn' then
  begin
    if not Assigned(AssistMoveInFM) then
    begin
      AssistMoveInFM := TAssistMoveInFM.Create(Application);
      AssistMoveInFM.Show;
    end
    else
      ShowTabSt(AssistMoveInFM.sFMId);
    if AssistMoveInFM.btSave.Enabled then
      AssistMoveInFM.btCancel.Click;
    OpenRecords(AssistMoveInFM.qyHed, sWhere + sTemp);
  end;
  if sTableId = 'AssistBack' then
  begin
    if not Assigned(AssistBackFM) then
    begin
      AssistBackFM := TAssistBackFM.Create(Application);
      AssistBackFM.Show;
      if AssistBackFM.btSave.Enabled then
        AssistBackFM.btCancel.Click;
    end
    else
      ShowTabSt(AssistBackFM.sFMId);
    OpenRecords(AssistBackFM.qyHed, sWhere + sTemp);
  end;
  if sTableId = 'SaleInvoiceHDTB' then
  begin
    if not Assigned(SaleInvoiceFM) then
    begin
      SaleInvoiceFM := TSaleInvoiceFM.Create(Application);
      SaleInvoiceFM.Show;
    end
    else
      ShowTabSt(SaleInvoiceFM.sFMId);
    if SaleInvoiceFM.btSave.Enabled then
      SaleInvoiceFM.btCancel.Click;
    OpenRecords(SaleInvoiceFM.qyHed, sWhere + sTemp);
  end;
  if sTableId = 'SalePayHDTB' then
  begin
    if not Assigned(SalePayFM) then
    begin
      SalePayFM := TSalePayFM.Create(Application);
      SalePayFM.Show;
    end
    else
      ShowTabSt(SalePayFM.sFMId);
    if SalePayFM.btSave.Enabled then
      SalePayFM.btCancel.Click;
    OpenRecords(SalePayFM.qyHed, sWhere + sTemp);
  end;
  if sTableId = 'StockInvoiceHDTB' then
  begin
    if not Assigned(StockInvoiceFM) then
    begin
      StockInvoiceFM := TStockInvoiceFM.Create(Application);
      StockInvoiceFM.Show;
    end
    else
      ShowTabSt(StockInvoiceFM.sFMId);
    if StockInvoiceFM.btSave.Enabled then
      StockInvoiceFM.btCancel.Click;
    OpenRecords(StockInvoiceFM.qyHed, sWhere + sTemp);
  end;
  if sTableId = 'StockPayHDTB' then
  begin
    if not Assigned(StockPayFM) then
    begin
      StockPayFM := TStockPayFM.Create(Application);
      StockPayFM.Show;
    end
    else
      ShowTabSt(StockPayFM.sFMId);
    if StockPayFM.btSave.Enabled then
      StockPayFM.btCancel.Click;
    OpenRecords(StockPayFM.qyHed, sWhere + sTemp);
  end;
  if sTableId = 'EmpWorkRecord' then
  begin
    if not Assigned(EmpWorkRecordFM) then
    begin
      EmpWorkRecordFM := TEmpWorkRecordFM.Create(Application);
      EmpWorkRecordFM.Show;
    end
    else
      ShowTabSt(EmpWorkRecordFM.sFMId);
    if EmpWorkRecordFM.btSave.Enabled then
      EmpWorkRecordFM.btCancel.Click;
    OpenRecords(EmpWorkRecordFM.qyHed, sWhere + sTemp);
  end;
  if sTableId = 'ProOrderHDTB' then
  begin
    if not Assigned(ProOrderFM) then
    begin
      ProOrderFM := TProOrderFM.Create(Application);
      ProOrderFM.Show;
    end
    else
      ShowTabSt(ProOrderFM.sFMId);
    if ProOrderFM.btSave.Enabled then
      ProOrderFM.btCancel.Click;
    OpenRecords(ProOrderFM.qyHed, sWhere + sTemp);
  end;
  if sTableId = 'ProDispatchHDTB' then
  begin
    if not Assigned(ProDispatchFM) then
    begin
      ProDispatchFM := TProDispatchFM.Create(Application);
      ProDispatchFM.Show;
    end
    else
      ShowTabSt(ProDispatchFM.sFMId);
    if ProDispatchFM.btSave.Enabled then
      ProDispatchFM.btCancel.Click;
    OpenRecords(ProDispatchFM.qyHed, sWhere + sTemp);
  end;
  if sTableId = 'CNMove' then
  begin
    if not Assigned(CNMoveFM) then
    begin
      CNMoveFM := TCNMoveFM.Create(Application);
      CNMoveFM.Show;
      if CNMoveFM.btSave.Enabled then
        CNMoveFM.btCancel.Click;
    end
    else
      ShowTabSt(CNMoveFM.sFMId);
    OpenRecords(CNMoveFM.qyHed, sWhere + sTemp);
  end;
end;

procedure ShoRemarkTextFM(sTitle, sContent: string);
begin
  try
    RemarkTextFM := TRemarkTextFM.Create(nil);
    RemarkTextFM.sTitle := sTitle;
    RemarkTextFM.sContent := sContent;
    RemarkTextFM.ShowModal;
  finally
    RemarkTextFM.free;
    RemarkTextFM := nil;
  end;
end;

end.

