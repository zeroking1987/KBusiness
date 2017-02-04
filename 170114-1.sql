--进货单查询
if Exists (select Name from Sysobjects Where Name='PrStockInQ' and type='P')
  Drop Procedure PrStockInQ
go
Create Procedure PrStockInQ @sWhere Varchar(2000)
As
begin
  exec('select a.BillNo,a.BillDate,SingFlag=Case a.SignFlag when 1 then ''进货'' else ''退货'' end,a.ObjectId,a.ObjectName,HRemark=a.Remark,
	b.ItemCode,b.ItemName,b.ItemSpc,b.ItemUnit,b.ProType,b.MainNum,b.MainPrice,b.MainMoney,b.TaxPrice,b.TaxRate,b.TaxMoney,b.AllMoney,b.Remark
	from WareInOutHDTB a left join WareInOutDTTB b on a.BillNo=b.BillNo
	where a.WKindId=''StockIn'''+@sWhere+' order by a.BillNo Desc')
end
--exec PrStockInQ ''
go

--销售单查询
if Exists (select Name from Sysobjects Where Name='PrSaleOutQ' and type='P')
  Drop Procedure PrSaleOutQ
go
Create Procedure PrSaleOutQ @sWhere Varchar(2000)
As
begin
  exec('select a.BillNo,a.BillDate,SingFlag=Case a.SignFlag when 1 then ''出货'' else ''退货'' end,a.ObjectId,a.ObjectName,HRemark=a.Remark,
	b.ItemCode,b.ItemName,b.ItemSpc,b.ItemUnit,b.ProType,b.MainNum,b.MainPrice,b.MainMoney,b.TaxPrice,b.TaxRate,b.TaxMoney,b.AllMoney,b.Remark
	from WareInOutHDTB a left join WareInOutDTTB b on a.BillNo=b.BillNo
	where a.WKindId=''SaleOut'''+@sWhere+' order by a.BillNo Desc')
end
--exec PrSaleOutQ ''
go

--库存产品查询
if Exists (select Name from Sysobjects Where Name='PrWareItemQ' and type='P')
  Drop Procedure PrWareItemQ
go
Create Procedure PrWareItemQ @sWhere Varchar(2000)
As
begin
  exec('select b.bSelect,b.ItemkindId,a.ItemId,b.ItemCode,b.ItemName,b.ItemSpc,a.WareId,c.WareName,a.WareNum,
		a.ProType,a.Color,a.BatchNo,a.PlaceNo,a.CompactNo,a.ObjectId ,d.ObjectName,a.TechName,a.InDate,a.PState
		from WareStorageTB a left join ItemTB b on a.ItemId=b.ItemId
		left join WareTB c on a.WareId=c.WareId
		left join vwObject d on a.ObjectId=d.ObjectID
		where IsNull(a.WareNum,0)<>0 '+@sWhere+' Order by a.ItemId,a.WareId')
end
--exec PrWareItemQ ''
go