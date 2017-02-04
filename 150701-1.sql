
--系统菜单SysBillSetTB初始化
if not exists (select Tag from SysBillSetTB where Tag='00')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('00','00','00','菜单管理','',0,'',0,0,1,1) 
     --单据操作
if not exists (select Tag from SysBillSetTB where Tag='10')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('10','00','10','单据操作','',0,'',0,0,1,1) 
if not exists (select Tag from SysBillSetTB where Tag='1001')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('1001','10','ItemTB','产品资料','ItemTB',0,'G',0,1,1,0) 
if not exists (select Tag from SysBillSetTB where Tag='1004')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('1004','10','ProviderTB','供应商资料','ProviderTB',0,'P',0,1,1,0) 
if not exists (select Tag from SysBillSetTB where Tag='1006')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('1006','10','CustTB','客户资料','CustTB',0,'C',0,1,1,0) 
if not exists (select Tag from SysBillSetTB where Tag='1008')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('1008','10','EmployeeTB','员工资料','EmployeeTB',0,'E',0,1,1,0) 
if not exists (select Tag from SysBillSetTB where Tag='1010')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('1010','10','OtherSetTB','其他设置','OtherSetTB',0,'',0,1,1,0) 
if not exists (select Tag from SysBillSetTB where Tag='1011')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('1011','10','SaleOut','销售单','WareInOutHDTB',1,'XS',1,1,1,0) 
if not exists (select Tag from SysBillSetTB where Tag='1013')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('1013','10','SalePayHDTB','收款单','SalePayHDTB',1,'SK',1,1,1,0) 
if not exists (select Tag from SysBillSetTB where Tag='1021')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('1021','10','StockIn','进货单','WareInOutHDTB',1,'JH',1,1,1,0) 
if not exists (select Tag from SysBillSetTB where Tag='1023')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('1023','10','StockPayHDTB','付款单','StockPayHDTB',1,'FK',1,1,1,0) 
if not exists (select Tag from SysBillSetTB where Tag='1031')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('1031','10','CNBillTB','资料流水','CNBillTB',1,'CN',1,1,1,0)

     --报表分析 
if not exists (select Tag from SysBillSetTB where Tag='12')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('12','00','12','报表分析','',0,'',0,0,1,1) 
if not exists (select Tag from SysBillSetTB where Tag='1201')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('1201','12','SaleOutQ','销售单查询','',0,'',0,1,1,0) 
if not exists (select Tag from SysBillSetTB where Tag='1203')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('1203','12','SaleAnalysis','应收分析','',0,'',0,1,1,0)
if not exists (select Tag from SysBillSetTB where Tag='1205')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('1205','12','SalePayQ','收款单查询','',0,'',0,1,1,0)
if not exists (select Tag from SysBillSetTB where Tag='1207')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('1207','12','CustNoPayQ','客户欠款报告','',0,'',0,1,1,0)

if not exists (select Tag from SysBillSetTB where Tag='1211')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('1211','12','StockInQ','进货单查询','',0,'',0,1,1,0) 
if not exists (select Tag from SysBillSetTB where Tag='1213')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('1213','12','StockAnalysis','应付分析','',0,'',0,1,1,0)
if not exists (select Tag from SysBillSetTB where Tag='1205')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('1215','12','StockPayQ','付款单查询','',0,'',0,1,1,0)
if not exists (select Tag from SysBillSetTB where Tag='1217')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('1217','12','PrvNoPayQ','供应商欠款报告','',0,'',0,1,1,0)

if not exists (select Tag from SysBillSetTB where Tag='1221')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('1221','12','WareStroageQ','库存查询','',0,'',0,1,1,0)
if not exists (select Tag from SysBillSetTB where Tag='1231')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('1231','12','CNBillQ','资金统计','',0,'',0,1,1,0)

     --系统设置
if not exists (select Tag from SysBillSetTB where Tag='15')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('15','00','15','系统设置','',0,'',0,0,1,1) 
if not exists (select Tag from SysBillSetTB where Tag='1501')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('1501','15','SysSet','系统设置','',0,'',0,1,1,1) 
if not exists (select Tag from SysBillSetTB where Tag='1503')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('1503','15','PrintReportTB','打印模板','',0,'',0,1,1,0) 
if not exists (select Tag from SysBillSetTB where Tag='1505')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('1505','15','DataBack','数据维护','',0,'',0,1,1,0) 
if not exists (select Tag from SysBillSetTB where Tag='1507')
  insert into SysBillSetTB(Tag,pTag,BillId,BillName,TableName,MaxAuditLevel,BillPreFix,bAudit,bRight,bMenu,bShowPublic)
     Values('1507','15','ChangePass','密码修改','',0,'',0,1,1,0) 

go


if not exists (select FMId from ReportSetTB where Tag='00')
   Insert Into ReportSetTB(FMId,FMName,ReportName,ReportFile,ReportKind,Tag,ParentTag)
     Values('00','窗体名称','','',1,'00','')   --插入窗体树根目录
--资料管理
if not exists(select FMId from ReportSetTB where ReportFile='单据操作')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag )
     values('10','单据操作','','单据操作',1,'10','00')
if not exists(select FMId from ReportSetTB where ReportFile='产品资料')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('ItemFM','产品资料','','产品资料',1,'1001','10')
if not exists(select FMId from ReportSetTB where ReportFile='供应商资料')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('ProviderFM','供应商资料','','供应商资料',1,'1004','10')
if not exists(select FMId from ReportSetTB where ReportFile='客户资料')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('CustFM','客户资料','','客户资料',1,'1006','10')
if not exists(select FMId from ReportSetTB where ReportFile='员工资料')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('EmployeeFM','员工资料','','员工资料',1,'1008','10')
if not exists(select FMId from ReportSetTB where ReportFile='销售单')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('SaleOutFM','销售单','','销售单',1,'1011','10')
if not exists(select FMId from ReportSetTB where ReportFile='收款单')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('SalePayFM','收款单','','收款单',1,'1013','10')
if not exists(select FMId from ReportSetTB where ReportFile='进货单')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('StockInFM','进货单','','进货单',1,'1021','10')
if not exists(select FMId from ReportSetTB where ReportFile='付款单')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('StockPayFM','付款单','','付款单',1,'1023','10')

if not exists(select FMId from ReportSetTB where ReportFile='报表分析')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag )
     values('12','报表分析','','报表分析',1,'12','00')
if not exists(select FMId from ReportSetTB where ReportFile='销售单查询')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('SaleOutQFM','销售单查询','','销售单查询',1,'1201','12')
if not exists(select FMId from ReportSetTB where ReportFile='收款单查询')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('SalePayQFM','收款单查询','','收款单查询',1,'1205','12')
go



if not exists(select id from syscolumns where id=Object_ID('WareInOutHDTB') and name='ObjectCode')
    Alter Table WareInOutHDTB add ObjectCode nvarchar(100)
if not exists(select id from syscolumns where id=Object_ID('WareInOutHDTB') and name='ObjectName')
    Alter Table WareInOutHDTB add ObjectName nvarchar(200)
if not exists(select id from syscolumns where id=Object_ID('WareInOutHDTB') and name='ObjectLinkMan')
    Alter Table WareInOutHDTB add ObjectLinkMan nvarchar(50)
if not exists(select id from syscolumns where id=Object_ID('WareInOutHDTB') and name='ObjectMobile')
    Alter Table WareInOutHDTB add ObjectMobile nvarchar(100)
if not exists(select id from syscolumns where id=Object_ID('WareInOutHDTB') and name='ObjectTel')
    Alter Table WareInOutHDTB add ObjectTel nvarchar(100)
if not exists(select id from syscolumns where id=Object_ID('WareInOutHDTB') and name='ObjectFax')
    Alter Table WareInOutHDTB add ObjectFax nvarchar(100)
if not exists(select id from syscolumns where id=Object_ID('WareInOutHDTB') and name='FactMoney')
    Alter Table WareInOutHDTB add FactMoney Numeric(18,5)
if not exists(select id from syscolumns where id=Object_ID('WareInOutHDTB') and name='PayMoney')
    Alter Table WareInOutHDTB add PayMoney Numeric(18,5)
if not exists(select id from syscolumns where id=Object_ID('WareInOutHDTB') and name='DisCount')
    Alter Table WareInOutHDTB add DisCount Numeric(18,5)

if not exists(select id from syscolumns where id=Object_ID('SalePayHDTB') and name='CustName')
    Alter Table SalePayHDTB add CustName nvarchar(100)
go

--客户欠款
if exists (Select Name from SysObjects where Name='vwCustNoPayM' and type='V')
 drop View dbo.vwCustNoPayM
go
Create View dbo.vwCustNoPayM
as
   select CustId=z.CustId,NoPayM=IsNull(Sum(a.SignFlag*ISNULL(a.FactMoney,0)),0)-ISNULL(m.PayMoney,0)
   from CustTB z left join  WareInOutHDTB a on z.CustId=a.ObjectId
   left join vwObject c on a.ObjectId=c.ObjectId
   left join (select CustId,PayMoney=SUM(SignFlag*ISNULL(PayMoney,0)) from SalePayHDTB group by CustId)m on z.CustId=m.CustId
   where 1=1
   group by z.CustId,m.PayMoney
go


--往来对象
if exists (Select Name from SysObjects where Name='vwObject' and type='V')
 drop View dbo.vwObject
go
Create View dbo.vwObject
as
  Select  ObjectID=CustID,ObjectCode=CustCode,ObjectPYCode=dbo.fnGetPY(CustName),ObjectName=CustName,ObjectLinkMan=LinkMan,ObjectMobile=Mobile,ObjectTel=Tel,ObjectFax=Fax from CustTB
  Union all
  select ObjectID=PrvID,ObjectCode=PrvCode,ObjectPYCode=dbo.fnGetPY(PrvName),ObjectName=PrvName,ObjectLinkMan=LinkMan,ObjectMobile=Mobile,ObjectTel=Tel,ObjectFax=Fax from ProviderTB
  Union all
  select ObjectID=DeptID,ObjectCode=DeptCode,ObjectPYCode=dbo.fnGetPY(DeptName),ObjectName=DeptName,ObjectLinkMan='',ObjectMobile='',ObjectTel='',ObjectFax='' from DeptTB
  Union all
  select ObjectID=EmpID,ObjectCode=EmpCode,ObjectPYCode=dbo.fnGetPY(EmpName),ObjectName=EmpName,ObjectLinkMan='',ObjectMobile='',ObjectTel='',ObjectFax='' from EmployeeTB
go



--菜单查询
if Exists (select Name from Sysobjects Where Name='prSysMenuQ' and type='P')
  Drop Procedure prSysMenuQ
go
Create Procedure prSysMenuQ @sLoginId Varchar(50)
As
begin
  if @sLoginId='admin' 
  begin
    select a.Tag,b.MetroInfo from SysBillSetTB a left join vwMetroInfo b on a.Tag=b.Tag
  end
  else
  begin
    select a.Tag,c.MetroInfo from SysBillSetTB a left join UserRightTB b on a.Tag=b.Tag
    left join vwMetroInfo c on a.Tag=c.Tag
    where b.UserId=@sLoginId and (ISNULL(b.bShow,0)=1 or ISNULL(a.bShowPublic,0)=1)
  end
  
end
--exec prSysMenuQ 'admin'
go

--根据日期获得带前缀的表单编号(表单编号方案2)
if exists(select Name from sysobjects where Name='prGetTimeNo' and type='P')
  Drop procedure dbo.prGetTimeNo
Go
Create Procedure prGetTimeNo @BillId varchar(20),@FieldName varchar(20)
as
begin
    declare @Pre varchar(20),@TableName varchar(20),@TableDesc varchar(50)
	set @Pre='' 
	select @Pre=BillPreFix,@TableName=TableName,@TableDesc=BillName from SysBillSetTB where BillId=@BillId
	if (@Pre='')
	begin
	  raiserror('请先到系统表单中设置该单据前缀',16,1)
	  return
	end

    --Select BillNo=@Pre+dbo.GetDNH(GetDate())
    Select BillNo=@Pre+CONVERT(varchar(12) , GETDATE(), 12 )+Left(replace(CONVERT(varchar(12) , GETDATE(), 14 ),':',''),6)
	--print @BillNo
end
--exec prGetTimeNo 'SaleOut','BillNo'
go

--获得带前缀的5位编号
if exists(select Name from sysobjects where Name='prGetFiveNo' and type='P')
  Drop procedure dbo.prGetFiveNo
Go
Create Procedure prGetFiveNo @BillId varchar(20),@FieldName varchar(20),@BillNo varchar(20) Output
as
begin
	declare @Pre varchar(20),@TableName varchar(20),@TableDesc varchar(50)
 
	set @BillNo=''
	set @Pre='' 
	select @Pre=BillPreFix,@TableName=TableName,@TableDesc=BillName from SysBillSetTB where BillId=@BillId
	if (@Pre='')
	begin
	
	  raiserror('请先到系统表单中设置该单据前缀',16,1)
	  set @BillNo=null 
	  return
	end
	create Table #GetFiveNo(BillNo varchar(20))
	insert into #GetFiveNo
	  Exec('select '+@FieldName+' as BillNo from '+@TableName+' where '+@FieldName+' like '''+@Pre+'%''')
	if @@error<>0
	begin
	  raiserror ('单号字段或表错误',16,1)
	  return
	end

	select @BillNo=max(right(BillNo,5)) from #GetFiveNo
	if (@BillNo is null)
	  set @BillNo='10000'
	set @BillNo=@BillNo+1
	set @BillNo=@Pre+@BillNo
	print @BillNo
end
--exec prGetFiveNo 'ItemTB','ItemId',''
go

--获得带前缀的5位编号
if exists(select Name from sysobjects where Name='prGetTableNo' and type='P')
  Drop procedure dbo.prGetTableNo
Go
Create Procedure prGetTableNo @BillId varchar(20),@FieldName varchar(20),@BillNo varchar(20) Output

as
begin
	declare @Pre varchar(20),@TableName varchar(20),@TableDesc varchar(50) 
	set @BillNo=''
	set @Pre='' 
	select @Pre=BillPreFix,@TableName=TableName,@TableDesc=BillName from SysBillSetTB where BillId=@BillId
	if (@Pre='')
	begin
	  raiserror('请先到系统表单中设置该单据前缀',16,1)
	  set @BillNo=null 
	  return
	end
	create Table #GetTableNo(BillNo varchar(20))
	insert into #GetTableNo
	  Exec('select '+@FieldName+' as BillNo from '+@TableName+' where '+@FieldName+' like '''+@Pre+'%''')
	if @@error<>0
	begin
	  raiserror ('单号字段或表名错误',16,1)
	  return
	end

	select @BillNo=max(right(BillNo,10)) from #GetTableNo where SubString(Right(BillNo,10),1,2)=Right(Year(GetDate()),2) 
	       and SubString(Right(BillNo,10),3,2)=Month(GetDate()) and SubString(Right(BillNo,10),5,2)=Day(GetDate())
	if (@BillNo is null)
	  set @BillNo= Right(CONVERT(varchar(20),GETDATE(),112),6)+'0000'
    set @BillNo=left(@BillNo,6)+right(right(@BillNo,4)+10001,4)
    set @BillNo=@Pre+@BillNo
    print @BillNo
end
--exec prGetTableNo 'SaleOut','PayNo',''
go



--通用查询
if exists(select name from sysobjects where name='prGeneralQ' and type='P')
    drop procedure dbo.prGeneralQ
go
create procedure dbo.prGeneralQ 
  @sKindName varchar(100),@sWhere varchar(2000)
as
begin
  if  @sKindName='采购订单未入库供应商查询'  --未发完货客户
  begin
     select 供应商编号=a.PrvId,供应商名称=c.PrvName,未入库总数=Sum(IsNull(b.OrderNum,0))-Sum(IsNull(m.InNum,0)),
     订单数=Sum(IsNull(b.OrderNum,0)),已入库数=Sum(IsNull(m.InNum,0))  
     from StockOrderHDTB a left join StockOrderDTTB b on a.StockOrderNO=b.StockOrderNo 
     left join (select InNum=SUM(ISNULL(b.MainNum,0)),b.StockId from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO
     where a.WKindID='StockIn' and b.StockId is not null group by b.StockId)m on b.AutoNO=m.StockId 
     left join ProviderTB c on a.PrvId=c.PrvId 
     where IsNull(b.OrderNum,0)>IsNull(m.InNum,0) group by a.PrvId,c.PrvName
  end
  if  @sKindName='销售订单未发货客户查询'  --未发完货客户
  begin
     Exec('select 客户编号=a.CustId,客户名称=c.CustName,未发货总数=Sum(IsNull(b.OrderNum,0))-Sum(IsNull(m.SenderNum,0)),
		 订单数=Sum(IsNull(b.OrderNum,0)),已发货数=Sum(IsNull(m.SenderNum,0)) 
		 from SaleOrderHDTB a left join SaleOrderDTTB b on a.SaleOrderNO=b.SaleOrderNo 
		 left join (select SenderNum=SUM(ISNULL(b.SenderNum,0)),b.SaleOrderId from SaleSenderHDTB a left join SaleSenderDTTB b on a.SenderNo=b.SenderNo
		 where  b.SaleOrderId is not null group by b.SaleOrderId)m on b.AutoNo=m.SaleOrderId  
		 left join CustTB c on a.CustId=c.CustId 
		 where IsNull(b.bStop,0)=0 and IsNull(b.OrderNum,0)>IsNull(m.SenderNum,0) '+@sWhere+'
		 group by a.CustId,c.CustName')
  end
  if  @sKindName='销售订单未出库客户查询'  --未销售出库客户
  begin
     select 客户编号=a.CustId,客户名称=d.CustName,订单未出库总数=Sum(IsNull(b.OrderNum,0))-Sum(IsNull(m.OutNum,0)),
            订单数=Sum(IsNull(b.OrderNum,0)),已出库数=Sum(IsNull(m.OutNum,0))
     from SaleOrderHDTB a left join SaleOrderDTTB b on a.SaleOrderNo=b.SaleOrderNo
     left join CustTB d on a.CustId=d.CustId
     left join (select OutNum=SUM(ISNULL(b.MainNum,0)),b.SaleOrderId from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO
     where a.WKindID='SaleOut' and b.SaleOrderId is not null group by b.SaleOrderId)m on b.AutoNo=m.SaleOrderId 
     where IsNull(b.bStop,0)=0 and IsNull(b.OrderNum,0)>IsNull(m.OutNum,0)
     group by a.CustId,d.CustName
  end
  if  @sKindName='销售发货单未出库客户查询'  --未销售出库客户
  begin
     select 客户编号=a.CustId,客户名称=d.CustName,发货未出库总数=Sum(IsNull(b.SenderNum,0))-Sum(IsNull(m.OutNum,0)),
            发货数=Sum(IsNull(b.SenderNum,0)),已出库数=Sum(IsNull(m.OutNum,0))
     from SaleSenderHDTB a left join SaleSenderDTTB b on a.SenderNo=b.SenderNo
     left join CustTB d on a.CustId=d.CustId
     left join (select OutNum=SUM(ISNULL(b.MainNum,0)),b.SaleSenderId from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO
     where a.WKindID='SaleOut' and b.SaleSenderId is not null group by b.SaleSenderId)m on b.AutoNo=m.SaleSenderId 
     where IsNull(b.bStop,0)=0 and  IsNull(b.SenderNum,0)>IsNull(m.OutNum,0)
     group by a.CustId,d.CustName
  end     
  if  @sKindName='采购入库未记账供应商查询'   --未应付记账供应商
  begin
      select 供应商编号=a.ObjectID,供应商名称=d.ObjectName,未记账总数=Sum(IsNull(b.MainNum,0))-Sum(IsNull(m.InvoiceNum,0)),
      入库未记账总金额=Sum(IsNull(b.AllMOney,0))-Sum(IsNull(m.AllMOney,0))
      from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO
      left join vwObject d on a.ObjectID=d.ObjectID
      left join (select InvoiceNum=SUM(ISNULL(b.InvoiceNum,0)),AllMOney=SUM(ISNULL(b.AllMOney,0)),b.IoNo,b.IoId from SaleInvoiceHDTB a left join SaleInvoiceDTTB b on a.InvoiceNo=b.InvoiceNo 
      where b.IoId is not null group by b.IoNo,b.IoId)m on b.BillNO=m.IoNo and b.AutoNo=m.IoId
      where a.WKindID='StockIn' and IsNull(a.bMaxAudit,0)=1 and ISNULL(a.bCashDeal,0)=0
      and IsNull(b.MainNum,0)>IsNull(m.InvoiceNum,0)
      group by a.ObjectID,d.ObjectName 
  end
  if  @sKindName='销售出库未记账客户查询'   --未应收记账客户
  begin
      select 客户编号=a.ObjectId,客户名称=d.ObjectName,出库未记账总数=Sum(IsNull(b.MainNum,0))-Sum(IsNull(m.InvoiceNum,0)), 
      出库未记账总金额=Sum(IsNull(b.AllMOney,0))-Sum(IsNull(m.AllMOney,0))
      from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO 
      left join ItemTB c on b.ItemId=c.ItemId 
      left join vwObject d on a.ObjectID=d.ObjectID
      left join (select InvoiceNum=SUM(ISNULL(b.InvoiceNum,0)),AllMOney=SUM(ISNULL(b.AllMOney,0)),b.IoNo,b.IoId from SaleInvoiceHDTB a left join SaleInvoiceDTTB b on a.InvoiceNo=b.InvoiceNo 
      where b.IoId is not null group by b.IoNo,b.IoId)m on b.BillNO=m.IoNo and b.AutoNo=m.IoId 
      where a.WKindID='SaleOut' and IsNull(a.bMaxAudit,0)=1 and ISNULL(a.bCashDeal,0)=0 
      and IsNull(b.MainNum,0)>IsNull(m.InvoiceNum,0)
      group by a.ObjectId,d.ObjectName 
  end 
  if  @sKindName='应收记账未收款客户查询'   --未收款客户
  begin 
	    select 客户编号=a.ObjectId,客户名称=c.ObjectName,未收款金额=Sum(a.SignFlag*ISNULL(b.MainMoney,0))-ISNULL(m.PayMoney,0),
		记账金额=Sum(a.SignFlag*ISNULL(b.MainMoney,0)),已收款金额=ISNULL(m.PayMoney,0),
		收款率=ISNULL(m.PayMoney,0)/dbo.IsZero(Sum(a.SignFlag*ISNULL(b.MainMoney,0)),null)*100
		from WareInOutHDTB a left join WareInOutDTTB b on a.BillNo=b.BillNo
		left join vwObject c on a.ObjectId=c.ObjectId
		left join (select InvoiceNo,PayMoney=SUM(ISNULL(NowPayMoney,0)) from SalePayDTTB group by InvoiceNo)m on a.BillNo=m.InvoiceNo
		where 1=1
		group by a.ObjectId,c.ObjectName,m.PayMoney
		Having Sum(a.SignFlag*ISNULL(b.MainMoney,0))>ISNULL(m.PayMoney,0)
  end   
  if  @sKindName='应付记账未付款供应商查询'   --未付款供应商
  begin 
	    select 供应商编号=a.PrvId,供应商名称=c.PrvName,未付款金额=Sum(a.SignFlag*ISNULL(b.InvoiceMoney,0))-ISNULL(m.PayMoney,0),
		记账金额=Sum(a.SignFlag*ISNULL(b.InvoiceMoney,0)),已付款金额=ISNULL(m.PayMoney,0),
		付款率=ISNULL(m.PayMoney,0)/dbo.IsZero(Sum(a.SignFlag*ISNULL(b.InvoiceMoney,0)),null)*100
		from StockInvoiceHDTB a left join StockInvoiceDTTB b on a.InvoiceNo=b.InvoiceNO
		left join ProviderTB c on a.PrvId=c.PrvId
		left join (select InvoiceNo,PayMoney=SUM(ISNULL(NowPayMoney,0)) from StockPayDTTB group by InvoiceNo)m on a.InvoiceNo=m.InvoiceNo
		where ISNULL(a.bMaxAudit,0)=1 
		group by a.PrvId,c.PrvName,m.PayMoney
		Having Sum(a.SignFlag*ISNULL(b.InvoiceMoney,0))>ISNULL(m.PayMoney,0)
  end     
  if  @sKindName='产品工序查询'  
  begin 
      Exec (' select [工序号]=b.Ordinal,[工序名称]=b.TechName,[上道工序]=b.TopTech,[下道工序]=b.NextTech,[工序属性]=b.TechParam,[是否首道]=b.bFirst,
      [产品代号]=c.ItemCode,[产品名称]=c.ItemName,[产品规格]=c.ItemSpc,[产品编号]=a.ItemId
      from ItemTechHDTB a left join ItemTechDTTB b on a.TechNo=b.TechNo
      left join ItemTB c on a.ItemId=c.ItemId
      where 1=1 '+@sWhere)
  end     
end

--Exec prGeneralQ '应收记账未收款客户查询',''
go

if Exists (select Name from Sysobjects Where Name='PrSalePaySaleInvoiceRf' and type='P')
  Drop Procedure PrSalePaySaleInvoiceRf
go
Create Procedure PrSalePaySaleInvoiceRf @sWhere Varchar(2000)
As  --未收款应收记账查询
begin
  exec('select a.bSelect,a.BillNo,a.BillDate,a.ObjectId,c.ObjectName,
		NoPayMoney=Sum(a.SignFlag*ISNULL(b.MainMoney,0))-ISNULL(m.PayMoney,0),
		InvoiceMoney=Sum(a.SignFlag*ISNULL(b.MainMoney,0)),HasPayMoney=ISNULL(m.PayMoney,0),
		PayPre=ISNULL(m.PayMoney,0)/dbo.IsZero(Sum(a.SignFlag*ISNULL(b.MainMoney,0)),null)*100
		from WareInOutHDTB a left join WareInOutDTTB b on a.BillNo=b.BillNo
		left join vwObject c on a.ObjectId=c.ObjectId
		left join (select InvoiceNo,PayMoney=SUM(ISNULL(NowPayMoney,0)) from SalePayDTTB group by InvoiceNo)m on a.BillNo=m.InvoiceNo
		where 1=1 '+@sWhere+'
		group by a.bSelect,a.BillNo,a.BillDate,a.ObjectId,c.ObjectName,m.PayMoney
		Having Sum(a.SignFlag*ISNULL(b.MainMoney,0))>ISNULL(m.PayMoney,0)')
end
--exec PrSalePaySaleInvoiceRf ''
go


if Exists (select Name from Sysobjects Where Name='PrInvoiceToPay' and type='P')
  Drop Procedure PrInvoiceToPay
go
Create procedure PrInvoiceToPay @BillNo varchar(30),@IFlag int
as
begin
  DECLARE @PayNo VARCHAR(50),@String varchar(100),@MaxAudit smallint,@bMaxAudit bit

  Set @PayNo=''

  BEGIN TRANSACTION
  --结算
  if @IFlag=1 
  begin
      --如果已经存在就直接更新金额
      select @PayNo=PayNo from SalePayHDTB where SubjoinNo=@BillNo
      if @PayNo<>''
      begin
          Update SalePayHDTB Set PayMode=m.PayMode,PayMoney=IsNull(m.PayMoney,0),FactMoney=IsNull(m.PayMoney,0),CustId=m.ObjectId,CustName=m.ObjectName,
                 PayDate=Convert(varchar(20),BillDate,23),SignFlag=m.SignFlag
          from WareInOutHDTB m where SalePayHDTB.PayNo=@PayNo and m.BillNo=@BillNo and SalePayHDTB.SubjoinNo=m.BillNo

          Update SalePayDTTB Set InvoiceMoney=m.PayMoney,NowPayMoney=m.PayMoney
          from WareInOutHDTB m where SalePayDTTB.PayNo=@PayNo and SalePayDTTB.InvoiceNo=m.BillNo and IsNull(HasPayMoney,0)=0
      end
      else
      begin
          Set @PayNo=''
	  exec prGetTableNo 'SalePayHDTB','PayNo',@PayNo OUTPUT
	  if @PayNo is null
	  begin
		  ROLLBACK TRANSACTION 
		  set @string='收款单前缀没有设置!'
		  RAISERROR(@string,16,1)
		  return     
	  end
	  --select @MaxAudit=MaxAuditLevel from SysTableSetTB where TableId='SalePayHDTB'
	  --收款单表头
	  insert into SalePayHDTB(PayNO,PayDate,SignFlag,CustId,CustName,SubjoinNo,BillKind,PayMode,PayMoney,FactMoney,
							  MakeDate,MakeMan,MakeManName,AuditFlag,bMaxAudit,AuditManName,AuditDate,MaxAuditDate,Remark)       
	  select @PayNo,Convert(varchar(20),BillDate,23),SignFlag,CustId=a.ObjectId,CustName=a.ObjectName,BillNo,BillKind='发货收款',PayMode,PayMoney,PayMoney,
	          getdate(),MakeMan,MakeManName,0,0,AuditManName,null,null,'' 
	   from WareInOutHDTB a where IsNull(a.WKindId,'')='SaleOut' and  BillNo=@BillNo
	  if @@error<>0
	  begin
		  ROLLBACK TRANSACTION 
		  set @string='生成收款单表头出错！'
		  RAISERROR(@string,16,1)
		  return 
	  end
	  --收款单表体
	  insert into SalePayDTTB (AutoNo,PayNo,InvoiceNo,HasPayMoney,InvoiceMoney,NowPayMoney)
	  select dbo.fnGetAutoNo('SalePayHDTB',GetDate()),@PayNo,a.BillNo,HasPayMoney=0,a.PayMoney,a.PayMoney
	  from WareInOutHDTB a 
	  where IsNull(a.WKindId,'')='SaleOut' and a.BillNo=@BillNo
      end   
  end
  --取消记账
  else if @IFlag=-1 
  begin  
     set @PayNo=''
     select @PayNo=PayNo,@bMaxAudit=bMaxAudit from SalePayHDTB where SubjoinNo=@BillNo 
     
     delete SalePayDTTB where PayNo=@PayNo     
     delete SalePayHDTB where PayNo=@PayNo
  end
  commit Tran
  select null
end 

--Exec PrInvoiceToPay 'KPSK1412140001',-1 

GO

--销售单查询
if Exists (select Name from Sysobjects Where Name='PrSaleOutQ' and type='P')
  Drop Procedure PrSaleOutQ
go
Create Procedure PrSaleOutQ @sWhere Varchar(2000)
As
begin
  exec('select a.BillNo,a.BillDate,SingFlag=Case a.SignFlag when 1 then ''出货'' else ''退货'' end,a.ObjectId,a.ObjectName,
	b.ItemCode,b.ItemName,b.ItemSpc,b.ItemUnit,b.MainNum,b.MainPrice,b.MainMoney,b.Remark
	from WareInOutHDTB a left join WareInOutDTTB b on a.BillNo=b.BillNo
	where a.WKindId=''SaleOut'''+@sWhere+' order by a.BillNo Desc')
end
--exec PrSaleOutQ ''
go


--收款单查询
if Exists (select Name from Sysobjects Where Name='PrSalePayQ' and type='P')
  Drop Procedure PrSalePayQ
go
Create Procedure PrSalePayQ @sWhere Varchar(2000)
As
begin
  exec('select a.PayNo,a.PayDate,a.BillKind,SignFlag=Case a.SignFlag when 1 then ''收款'' else ''退款'' end,
	a.CustId,a.CustName,a.PayMode,a.PayMoney,b.NoPayM,a.Remark
	from SalePayHDTB a left join vwCustNoPayM b on a.CustId=b.CustId
	where 1=1  '+@sWhere+' order by a.PayNo Desc')
end
--exec PrSalePayQ ''
go
