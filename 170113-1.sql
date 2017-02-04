
Delete SysBillSetTB where Tag in ('1013','1023','1031')
go

If exists(Select Name from SysObjects where name='prGetAllright' and type='p')
  Drop procedure dbo.prGetAllright
go
Create procedure dbo.prGetAllright @UserId varchar(20)
as
begin

	--插入菜单
	Insert into UserRightTB(UserId,TableId,ModuleId,Tag,pTag,bShow,bCheck,bUnCheck,SumRightLevel,HasRightLevel,bAdd,bEditPart,bEditAll,bDelPart,bDelAll,bFindPart,bFindAll,bShowPrice,bEditPrice,bPrint,bExpand,bInvoice,bOther1,bOther2,bOther3)
		 select @UserId,BillId,ModuleId='',Tag,pTag,1,1,1,1,HasRightLevel=1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 
		 from SysBillSetTB where not Exists (select AutoId from UserRightTB where UserId=@UserId and SysBillSetTB.BillId=UserRightTB.TableId )
	--更新权限
	Update UserRightTB Set bShow=1,bCheck=1,bUnCheck=1,SumRightLevel=1,HasRightLevel=1,bAdd=1,bEditPart=1,bEditAll=1,bDelPart=1,bDelAll=1,bFindPart=1,bFindAll=1,bShowPrice=1,bEditPrice=1,bPrint=1,bExpand=1,bInvoice=1,bOther1=1,bOther2=1,bOther3=1 
	where UserId=@UserId

end
--exec prGetAllright 'admin'
GO


if not exists (select Tag from SysBillSetTB where Tag='1002')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('1002','10','WareTB','仓库资料','WareTB',0,'W',0,1,1,0)
if not exists (select Tag from SysBillSetTB where Tag='1211')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('1211','12','StockInQ','进货单查询','',0,'',0,1,1,0) 
go

if not exists(select id from syscolumns where id=Object_ID('ItemTB') and name='BillNum')
    Alter Table ItemTB add BillNum Numeric(18,5)
if not exists(select id from syscolumns where id=Object_ID('ItemTB') and name='ItemPrice')
    Alter Table ItemTB add ItemPrice Numeric(18,5)
if not exists(select id from syscolumns where id=Object_ID('ItemTB') and name='bNoCheckWareNum')
    Alter Table ItemTB add bNoCheckWareNum bit

go

if Exists (select Name from Sysobjects Where Name='PrItemQ' and type='P')
  Drop Procedure PrItemQ
go
Create Procedure PrItemQ @sWhere Varchar(2000)
As
begin
  exec('select PYCode=dbo.fnGetPY(a.ItemName),a.*,c.WareNum
		from ItemTB a left join ItemKindTB b on a.ItemKindId=b.ItemKindId
		left join vwItemStorage c on a.ItemId=c.ItemId
		where 1=1 '+@sWhere+' ')
end
--exec PrItemQ ''
go

--库存查询
if exists(select name from sysobjects where name='prWareStorageQ' and type='P')
    drop procedure dbo.prWareStorageQ
go
create procedure dbo.prWareStorageQ (@sShowField varchar(200),@sWhere varchar(2000),@iFind smallint) 
as
begin
    Declare @sSqlText varchar(8000),@sField varchar(8000),@sGroup varchar(8000)
    Set @sField=''
    Set @sGroup=''
    if CHARINDEX('仓库',@sShowField)>0
    begin
       Set @sField=@sField+',e.WareName'
       Set @sGroup=@sGroup+',e.WareName'
    end
    if CHARINDEX('属性',@sShowField)>0
    begin
       Set @sField=@sField+',ProType=IsNull(a.ProType,'''')'
       Set @sGroup=@sGroup+',IsNull(a.ProType,'''')'
    end
    if CHARINDEX('颜色',@sShowField)>0
    begin
       Set @sField=@sField+',Color=IsNull(a.Color,'''')'
       Set @sGroup=@sGroup+',IsNull(a.Color,'''')'
    end    
    if CHARINDEX('货位',@sShowField)>0
    begin
       Set @sField=@sField+',PlaceNo=IsNull(a.PlaceNo,'''')'
       Set @sGroup=@sGroup+',IsNull(a.PlaceNo,'''')'
    end
    if CHARINDEX('外协商',@sShowField)>0
    begin
       Set @sField=@sField+',d.ObjectName'
       Set @sGroup=@sGroup+',d.ObjectName'
    end
    if CHARINDEX('工序',@sShowField)>0
    begin
       Set @sField=@sField+',TechName=IsNull(a.TechName,'''')'
       Set @sGroup=@sGroup+',IsNull(a.TechName,'''')'
    end

    select @sSqlText='select b.ItemKindId,c.ItemKindName,a.ItemId,ItemCode=IsNull(b.ItemCode,''''),ItemName=IsNull(b.ItemName,''''),ItemSpc=IsNull(b.ItemSpc,''''),
                      ItemUnit=IsNull(b.ItemUnit,''''),SubUnit=IsNull(b.SubUnit,''''),ItemPrice=IsNull(b.ItemPrice,0)'
                      
    Select @sSqlText=@sSqlText+@sField  
 
    Select @sSqlText=@sSqlText+' ,WareNum=Convert(Numeric(18,5),Sum(IsNull(a.WareNum,0))),
					             SubNum=Convert(Numeric(18,5),Sum(Case b.iFlag when 0 then IsNull(a.WareNum,0)*ISNULL(b.ExchRate,1) else IsNull(a.WareNum,0)/ISNULL(b.ExchRate,1) end)),
					             WareMoney=Convert(Numeric(18,5),Sum(IsNull(a.WareNum,0)*IsNull(b.ItemPrice,0)))
					             from WareStorageTB a left join ItemTB b on a.ItemId=b.ItemId
                                 left join ItemKindTB c on b.ItemKindId=c.ItemKindId
                                 left join vwObject d on a.ObjectId=d.ObjectID
                                 left join WareTB e on a.WareId=e.WareId
                                 where 1=1 '
     
    Select @sSqlText=@sSqlText+@sWhere
    
    Select @sSqlText=@sSqlText+' group by b.ItemKindId,c.ItemKindName,a.ItemId,IsNull(b.ItemCode,''''),IsNull(b.ItemName,''''),IsNull(b.ItemSpc,''''),
                                 IsNull(b.ItemUnit,''''),IsNull(b.SubUnit,''''),IsNull(b.ItemPrice,0) '
                                 
    Select @sSqlText=@sSqlText+@sGroup
    
    if @iFind=0 
       Select @sSqlText=@sSqlText+' Having Convert(Numeric(18,5),Sum(IsNull(a.WareNum,0)))<>0 '         
    if @iFind=1 
       Select @sSqlText=@sSqlText+' Having Convert(Numeric(18,5),Sum(IsNull(a.WareNum,0)))=0 '   
    
    Select @sSqlText=@sSqlText+' Order by a.ItemId '                
    
    --Print @sSqlText
    execute (@sSqlText)
end
-- exec prWareStorageQ '仓库,属性,货位,外协商,工序,颜色','',0
go

--销售单查询
if Exists (select Name from Sysobjects Where Name='PrStockInQ' and type='P')
  Drop Procedure PrStockInQ
go
Create Procedure PrStockInQ @sWhere Varchar(2000)
As
begin
  exec('select a.BillNo,a.BillDate,SingFlag=Case a.SignFlag when 1 then ''进货'' else ''退货'' end,a.ObjectId,a.ObjectName,
	b.ItemCode,b.ItemName,b.ItemSpc,b.ItemUnit,b.MainNum,b.MainPrice,b.MainMoney,b.Remark
	from WareInOutHDTB a left join WareInOutDTTB b on a.BillNo=b.BillNo
	where a.WKindId=''StockIn'''+@sWhere+' order by a.BillNo Desc')
end
--exec PrStockInQ ''
go
