Use master
go
if Exists (Select * From SysDataBases Where Name='HJBusiness')
   Drop DataBase HJBusiness
go
   Create DataBase HJBusiness
GO
 Use HJBusiness
GO                                        
                                        --by 恒捷  2010-05-20                                      
/*------------------------------------------系统管理模块-----------------------------------------------------*/

--1.系统用户表(SysUserTB):
if exists(select Name from sysobjects where name='SysUserTB' and type='U')
  Drop Table dbo.SysUserTB
Create Table dbo.SysUserTB
       (AutoId int not null Identity(1,1),UserID varchar(20) not null primary key,UserName varchar(20) not null,UserPass varchar(20) Default(''),
        EmpId varchar(20) not null,MakeDate DateTime default(GetDate()),LoginFlag bit default(0),Remark varchar(50))
Alter Table dbo.SysUserTB add constraint Un_SysUserTB Unique(UserID)
go
--1.系统菜单表（SysMenuTB）
if exists(select Name from sysobjects where name='SysMenuTB' and type='U')
  Drop Table dbo.SysMenuTB
Create Table dbo.SysMenuTB
  (AutoId int Identity(1,1) not nulL,Tag varchar(20) not null Primary Key ,pTag varchar(20) not null,MenuName varchar (50)not null,
   MouldId varchar(20),MouldName varchar(20),bPublic bit)
go
--1.系统表设置表(SysTableSetTB):
if exists(select Name from sysobjects where name='SysTableSetTB' and type='U')
  Drop Table dbo.SysTableSetTB
Create Table dbo.SysTableSetTB
       (AutoId int Identity(1,1) not null,bSelect bit default(0),TableID varchar(50) not null Primary Key,TableName varchar(50) not null,TableDesc varchar(50) not null,
        MaxAuditLevel smallint not null default(0),TablePreFix varchar(20),bAudit bit default(0),bRight bit default(0),bMenu bit Default(1),
        ModuleId smallint not null,ModuleName varchar(50) not null,Tag varchar (20) not null,pTag varchar(20)not null)

--1.用户权限表(UserRightTB):
if exists(select Name from sysobjects where name='UserRightTB' and type='U')
   Drop Table dbo.UserRightTB
Create Table dbo.UserRightTB
       (AutoId int Identity(1,1) not null,UserId varchar(20) not null,TableId varchar(50) not null,ModuleId varchar(50) not null,Tag varchar(30) not null,pTag varchar(20) not null,
        bShow bit default(0),bCheck bit default(0),bUnCheck bit default(0),SumRightLevel varchar(20) Default('1'),HasRightLevel varchar(20) Default('1'),bAdd bit default(1),bEditPart bit Default(1),bEditAll bit Default(0),bDelPart bit Default(1),bDelAll bit Default(0),
        bFindPart bit Default(1),bFindAll bit Default(0),bShowPrice bit Default(0),bEditPrice bit Default(0),bPrint bit Default(1),
        bExpand bit Default(1),bInvoice bit Default(0),bOther1 bit Default(0),bOther2 bit Default(0),bOther3 bit Default(0))
Alter Table dbo.UserRightTB add constraint Pk_UserRightTB primary Key Clustered(UserId,TableId)

--2.产品类别权限表（ItemKindRightTB）
if exists (select name from sysobjects where Name='ItemKindRightTB' and type='U')
   Drop Table dbo.ItemKindRightTB
Create Table dbo.ItemKindRightTB
  (AutoId int not null Identity(1,1) primary key,ParentId varchar(30)not null ,ItemKindId varchar(30)not null ,UserId varchar(30),bAdd bit Default(0),bEdit bit Default(0),bDel bit Default(0),Remark varchar(50))    
go
        
--1.服务器设置表(ServerSetTB)
if exists(select Name from sysobjects where name='ServerSetTB' and type='U')
  Drop Table dbo.ServerSetTB
Create Table dbo.ServerSetTB
       (AutoId int identity(1,1)not null Primary Key,SharePath varchar(50) not null,PicPath varchar(50),MsgServer varchar(50),UserName varchar(20),Pass varchar(30))
go

--1.系统参数设置表(SysParamTB)
if exists(select Name from sysobjects where name='SysParamTB' and type='U')
  Drop Table dbo.SysParamTB
Create Table dbo.SysParamTB
       (AutoId int identity(1,1) not null Primary Key,CoName varchar(100),CoShortName varchar(50),CoAddress varchar(200),CoTel varchar(50),CoFax varchar(50),
        CoNetAddress varchar(100),CoEMail varchar(50),CoQQ varchar(50),CoBankAccountNo varchar(50),CoTaxNo varchar(50),CoLogoPath varchar(100),CoLogoName varchar(50),
        StartDate DateTime,iNumPoint tinyint,iPricePoint tinyint,iMoneyPoint tinyint,iQPageSize int,iTaxRate Numeric(19,6),sVer varchar(50),LastExecSQLDate DateTime,
        sFTPUserName varchar(50),sFTPPassWord varchar(50),sFTPHost varchar(50),sFTPPort varchar(50),sFTPDir varchar(1000),
        sHostName nvarchar(50),sHostPort nvarchar(50),
        SaleOutRfKind varchar(50),ProductInRfKind nvarchar(50),StockInAutoInvoice bit Default(0),SaleOutAutoInvoice bit Default(0),bMRPCalCanUseNum bit Default(0),
        bMRPMakeRequire bit Default(0),MatOutMode varchar(50),ProMode varchar(50),UseEndDate DateTime,
        bPayToCN  bit,
        WareStartMon varchar(50),StockStartMon varchar(50),SaleStartMon varchar(50),CWStartMon varchar(50),CNStartMon varchar(50))
go

--参数初始化
if not exists (select CoName from SysParamTB where IsNull(CoName,'')='')
  InSert into  SysParamTB (CoName,CoShortName,CoAddress,CoQQ,iNumPoint,iPricePoint,iMoneyPoint,iQPageSize,iTaxRate,sVer) 
    Values ('恒捷信息科技有限公司','恒捷软件','浙江台州','1348699188',5,5,5,1000,0,'')
go

--1.打印报表设置表
if exists(select Name from sysobjects where name='ReportSetTB' and type='U')
  Drop Table dbo.ReportSetTB
Create Table dbo.ReportSetTB
       (AutoId int identity(1,1),FMId varchar(30) not null,FMName varchar(30),ReportName varchar(30),ReportFile varchar(30) not null,ReportKind SmallInt,Tag varchar(20),ParentTag varchar(20))
Alter Table dbo.ReportSetTB add constraint Pk_ReportSetTB primary Key Clustered(FMId,ReportFile)

--1.系统日志表(SysLogTB)
if exists(select Name from sysobjects where name='SysLogTB' and type='U')
  Drop Table dbo.SysLogTB
Create Table dbo.SysLogTB
       (AutoId int identity(1,1) not null Primary Key,BillName varchar(30),BillNo varchar(30),ActionEmpId varchar(30),ActionEmpName varchar(30),
        ActionKind varchar(30),ActionDate DateTime,IPAddress varchar(30),ComputerName varchar(30),Remark varchar (100))
go
/*------------------------------基础资料模块------------------------------*/

--2.地区资料表（AreaTB）
if exists (select name from sysobjects where Name='AreaTB' and type='U')
   Drop Table dbo.AreaTB
Create Table dbo.AreaTB
  (AutoId int Identity(1,1)not null,bSelect bit Default(0),AreaId varchar(20)not null primary key,AreaCode varchar(20)not null Unique ,AreaName varchar(30),ParentId varchar(20),Remark varchar(50))
--插入顶级树防止出错
if not exists (select AreaId from AreaTB where AreaId='00')
  InSert into  AreaTB (AreaId,AreaCode,AreaName,ParentId,Remark) 
    Values ('00','00','地区资料','','')

--2.仓库档案表（WareTB):
if exists (select * from sysobjects where name='FK_ItemStorageTB_WareTB_WareID' and type='F')
  Alter Table dbo.ItemStorageTB DROP Constraint FK_ItemStorageTB_WareTB_WareID
if exists (select * from sysobjects where name='FK_InOutBillDTTB_WareTB_WareID' and type='F')
  Alter Table dbo.InOutBillDTTB DROP Constraint FK_InOutBillDTTB_WareTB_WareID
go
if exists(select Name from sysobjects where name='WareTB' and type='U')
  Drop Table dbo.WareTB
Create Table dbo.WareTB
       (AutoId int Identity(1,1) not null,bSelect bit Default(0),WareId varchar(20) not null Primary Key,WareCode VarChar(20) not null,WareName varchar(30) not null,WareKind varchar(30),
        ParentId varchar(20),PriceStyle varchar(20),IsCalcNum bit not null default(1),bNoCheck bit default(0),Remark varchar(100))
--插入顶级树防止出错
if not exists (select WareId from WareTB where WareId='00')
  InSert into  WareTB( WareId,WareCode,WareName,WareKind,ParentId) 
    Values ('00','00','仓库资料','','')
    
--2.仓库员工表（WareEmpTB）
if exists (select name from sysobjects where Name='WareEmpTB' and type='U')
   Drop Table dbo.WareEmpTB
Create Table dbo.WareEmpTB
  (AutoId int Identity(1,1)not null primary key,WareId varchar(30)not null ,EmpId varchar(30),EmpCode varchar(30),Remark varchar(50))    
    

--2.属性表(ProTypeTB):
if exists(select Name from sysobjects where name='ProTypeTB' and type='U')
  Drop Table dbo.ProTypeTB
Create Table dbo.ProTypeTB
       (AutoId int Identity(1,1) not null,bSelect bit Default(0),TypeId varchar(20) not null Primary Key,
        TypeName varchar(30) not null,TypeKind varchar(30),ParentId varchar(20),Remark varchar(100))
--插入顶级树防止出错
if not exists (select TypeId from ProTypeTB where TypeId='00')
  InSert into  ProTypeTB( TypeId,TypeName,ParentId) 
    Values ('00','属性资料','')
    
--2.颜色表(ColorTB):
if exists(select Name from sysobjects where name='ColorTB' and type='U')
  Drop Table dbo.ColorTB
Create Table dbo.ColorTB
       (AutoId int Identity(1,1) not null,bSelect bit Default(0),ColorId varchar(20) not null Primary Key,
        ColorName varchar(30) not null,ParentId varchar(20),Remark varchar(100))
--插入顶级树防止出错
if not exists (select ColorId from ColorTB where ColorId='00')
  InSert into  ColorTB( ColorId,ColorName,ParentId) 
    Values ('00','颜色资料','')    
        

--2.供应商类别表（PrvKindTB）：
  --删除外键
if exists (select * from sysobjects where name='FK_ProviderTB_PrvKindTB_PrvKindID' and type='F')
  Alter Table dbo.ProviderTB DROP Constraint FK_ProviderTB_PrvKindTB_PrvKindID
if exists(select Name from sysobjects where name='PrvKindTB' and type='U')
  Drop Table dbo.PrvKindTB
Create Table dbo.PrvKindTB
       (AutoId int Identity(1,1) not null,bSelect bit Default(0),PrvKindId varchar(20) not null primary key,PrvKindCode varchar(20) not null,PrvKindName varchar(30) not null,ParentId varchar(20),PrvParam VarChar(10),Remark varchar(300))
--插入顶级树防止出错
if not exists (select PrvKindId from PrvKindTB where PrvKindId='00')
  InSert into  PrvKindTB( PrvKindId,PrvKindCode,PrvKindName,ParentId) 
    Values ('00','00','供应商类别','')
  
--2. 供应商资料表（ProviderTB）：
if exists(select Name from sysobjects where name='ProviderTB' and type='U')
  Drop Table dbo.ProviderTB
Create Table dbo.ProviderTB
       (AutoId int Identity(1,1) not null,bSelect bit Default(0),PrvId varchar(20) not null primary key,PrvCode varchar(30),PrvPYCode varchar(50),PrvName varchar(100) not null,PrvShort varchar(30),
        PrvKindId varchar(20) not null Constraint FK_ProviderTB_PrvKindTB_PrvKindID Foreign Key(PrvKindId) References PrvKindTB(PrvKindId),PrvKindName nvarchar(30),
        AreaId varchar(20),AreaName nvarchar(30),EmpId VarChar(20),Principal varchar(20),LinkMan varchar(20),Mobile varchar(40),Tel varchar(40),Fax varchar(40),CreditMoney Numeric(19,6) default(0),
        TaxRate Numeric(19,6),Bank varchar(100),BankAcc varchar(30),PosCode varchar(20),TaxCode varchar(100),TrafficMode varchar(100),E_Mail varchar(50),WWW varchar(50),
        PrvAddress varchar(120),bStop bit Default(0),Remark varchar(300),MakeMan VarChar(20),MakeManName VarChar(20),MakeDate Datetime,EditMan varchar(20),EditManName varchar(20),EditDate DateTime)

--2.客户类别表（CustKindTB）：
  --删除外键
if exists (select * from sysobjects where name='FK_CustTB_CustKindTB_CustKindID' and type='F')
  Alter Table dbo.CustTB DROP Constraint FK_CustTB_CustKindTB_CustKindID
if exists(select Name from sysobjects where name='CustKindTB' and type='U')
  Drop Table dbo.CustKindTB
Create Table dbo.CustKindTB
       (AutoId int Identity(1,1) not null,bSelect bit Default(0),CustKindId varchar(20) not null primary key,CustKindCode varchar(20) not null,CustKindName varchar(30) not null,ParentId varchar(20),CustParam VarChar(10),Remark varchar(300))
--插入顶级树防止出错
if not exists (select CustKindId from CustKindTB where CustKindId='00')
  InSert into  CustKindTB( CustKindId,CustKindCode,CustKindName,ParentId) 
    Values ('00','00','客户类别','')
  
--2. 客户资料表（CustTB）：
if exists(select Name from sysobjects where name='CustTB' and type='U')
  Drop Table dbo.CustTB
Create Table dbo.CustTB
    (AutoId int Identity(1,1) not null,bSelect bit Default(0),CustId varchar(20) not null primary key,CustCode varchar(30),
     CustPYCode varchar(50),CustName varchar(100) not null,CustShort varchar(30),
     CustKindId varchar(20),CustKindName varchar(20),
     Principal varchar(20),LinkMan varchar(20),AreaId varchar(20),AreaName varchar(20),Mobile varchar(40),Tel varchar(40),Fax varchar(40),Bank varchar(100),CreditMoney Numeric(19,6) default(0),
     TaxRate Numeric(19,6),BankAcc varchar(30),PosCode varchar(20),TaxCode varchar(50),PayMode varchar(50),EmpId VarChar(20),EmpCode VarChar(20),
     EmpName VarChar(20),TrafficMode varchar(100),E_Mail varchar(50),WWW varchar(50),CustAddress varchar(120),bStop bit Default(0),Remark varchar(300),
     MakeMan VarChar(20),MakeManName VarChar(20),MakeDate Datetime,EditMan varchar(20),EditManName varchar(20),EditDate DateTime)


--2.部门资料表（DeptTB）
if exists (select * from sysobjects where name='FK_EmployeeTB_DeptTB_DeptID' and type='F')
  Alter Table dbo.EmployeeTB DROP Constraint FK_EmployeeTB_DeptTB_DeptID
if exists (select name from sysobjects where Name='DeptTB' and type='U')
   Drop Table dbo.DeptTB
Create Table dbo.DeptTB
  (AutoId int Identity(1,1)not null,bSelect bit Default(0),DeptId varchar(20)not null primary key,DeptCode varchar(20)not null,
   DeptName varchar(30),ParentId varchar(20),Principal varchar(30),WareId varchar(50),Remark varchar(50))
--插入顶级树防止出错
if not exists (select DeptId from DeptTB where DeptId='00')
  InSert into  DeptTB( DeptId,DeptCode,DeptName,ParentId) 
    Values ('00','00','部门资料','')
 
 --2.员工档案设置(EmployeeTB)
if exists(select Name from sysobjects where name='EmployeeTB' and type='U')
  Drop Table dbo.EmployeeTB
Create Table dbo.EmployeeTB
   (AutoID int Identity(1,1) not null,bSelect bit Default(0),EmpId varchar(20) not null Primary Key,EmpCode varchar(20),
    EmpName varchar(20) not null,PYCode varchar(50),EmpSex varchar(4),BirthDay datetime,NativePlace varchar(100),IdCard varchar(20),
    Address varchar(50),Mobile varchar(50),Tel varchar(50),Educate varchar(20),Nation varchar(50),PhotoPath Varchar(100),PhotoName Varchar(50),
    DeptID varchar(20) not null Constraint FK_EmployeeTB_DeptTB_DeptID Foreign Key(DeptID) References DeptTB(DeptID),ZtNo varchar(20),
    EmpDuty varchar(20),bMarry bit default(0),iState Smallint Default(0),InDate datetime,OutDate datetime,
    MakeDate DateTime ,MakeMan varchar(20),MakeManName varchar(20),Remark varchar(300))


--2.产品类别表（ItemKindTB）
if exists (select Id from sysobjects where name='FK_ItemTB_ItemKindTB_ItemKindID' and type='F')
  Alter Table dbo.ItemTB DROP Constraint FK_ItemTB_ItemKindTB_ItemKindID
if exists (select name from sysobjects where Name='ItemKindTB' and type='U')
   Drop Table dbo.ItemKindTB
Create Table dbo.ItemKindTB
  (AutoId int Identity(1,1)not null,bSelect bit Default(0),ItemKindId varchar(20)not null primary key,
  ItemKindCode varchar(20),ItemKindName varchar(30),ParentId varchar(20),Param varchar(30),
  KindWare varchar(20),Remark varchar(50))

--插入顶级树防止出错
if not exists (select ItemKindId from ItemKindTB where ItemKindId='000')
  InSert into  ItemKindTB( ItemKindId,ItemKindCode,ItemKindName,ParentId) 
    Values ('00','00','产品类别','')  
    

--2.产品资料表(ItemTB): 
if exists(select Name from sysobjects where name='ItemTB' and type='U')
  Drop Table dbo.ItemTB
Create Table dbo.ItemTB
       (AutoId int Identity(1,1) not null,bSelect bit default(0),ItemId varchar(30) not null Primary Key,ItemCode varchar(50),
        ItemName varchar(100) not null,ItemSpc varchar(100),WareId varchar(20),WareName varchar(30),ItemSource varchar(20),Color varchar(50),ItemPYCode varchar(50),
        ItemParam varchar(20),ItemUnit varchar(10),ExchRate numeric(18,9) default(1),SubUnit varchar(10),iFlag Smallint default(0),    
        ItemKindId varchar(20),ItemKindName varchar(30),
        VolLong numeric(19,6) default(0),VolWidth numeric(19,6) default(0),VolHeight numeric(19,6) default(0),VolumeIs numeric(19,6),Weight Numeric(19,6),
        ItemPrice numeric(19,6) default(0),TaxPrice numeric(19,6) default(0),TaxRate numeric(19,6),PriceKind smallint,ItemState smallint default(1),
        PicPath varchar(500),PicName varchar(80),Material VarChar(100),ItemBatch varchar(100),ItemPic varchar(100),ItemPlace VarChar(100),ISBN varchar(50),
        StockMode varchar(20),SendMode varchar(20),SafeStore numeric(19,6),MinStore Numeric(19,6),MaxStore Numeric(19,6),bBom bit,bEdit bit,
        bNoCheckWareNum bit Default(0),TempNum Numeric(19,6),bStop bit Default(0),TakeEmpId varchar(30),TakeEmpName varchar(30),
        MakeMan varchar(20),MakeManName varchar(20),MakeDate Datetime,EditMan varchar(50),EditManName varchar(50),EditDate datetime,Remark varchar(300))
    
go

--2.单位表(UnitSetTB):
if exists (select name from sysobjects where Name='UnitSetTB' and type='U')
   Drop Table dbo.UnitSetTB
Create Table dbo.UnitSetTB
  (AutoId int Identity(1,1)not null primary key,UnitId varchar(20),UnitName varchar(30),Remark varchar(50))
  
--2.币种表(CurrencyTB):
if exists (select name from sysobjects where Name='CurrencyTB' and type='U')
   Drop Table dbo.CurrencyTB
Create Table dbo.CurrencyTB
  (AutoId int Identity(1,1)not null primary key,CurrId varchar(20),CurrName varchar(30),CurrGlyph varchar(10),
   bLocal bit,ExchangeRate Numeric(19,6),Remark varchar(50))
   
--2.开户银行表(BankTB):
if exists (select name from sysobjects where Name='BankTB' and type='U')
   Drop Table dbo.BankTB
Create Table dbo.BankTB
  (AutoId int Identity(1,1)not null primary key,BankId varchar(20),BankName varchar(30),Remark varchar(50))

--2.运输方式表(TraffModeTB):
if exists (select name from sysobjects where Name='TraffModeTB' and type='U')
   Drop Table dbo.TraffModeTB
Create Table dbo.TraffModeTB
  (AutoId int Identity(1,1)not null primary key,ModeId varchar(20),ModeName varchar(30),TraffPay nvarchar(50),Remark varchar(50))
  
--2.结算方式表(PayModeTB):
if exists (select name from sysobjects where Name='PayModeTB' and type='U')
   Drop Table dbo.PayModeTB
Create Table dbo.PayModeTB
  (AutoId int Identity(1,1)not null primary key,PayModeId varchar(20),PayModeName varchar(30),PayModeKind varchar(30),Remark varchar(50))  

--1.Bom主表:(ItemBomHDTB)
if exists (select * from sysobjects where name='FK_ItemBomHDTB_ItemBomHDTB_BillNo' and type='F')
  Alter Table dbo.ItemBomDTTB DROP Constraint FK_ItemBomHDTB_ItemBomHDTB_BillNo
if exists(select Name from sysobjects where name='ItemBomHDTB' and type='U')
  Drop Table dbo.ItemBomHDTB
Create Table dbo.ItemBomHDTB
       (AutoID Bigint Identity(1,1) not null,BillNo VarChar(50) not null PriMary Key,BillDate DateTime,
        ItemID varchar(30) not null,ItemCode varchar(50),ProType VarChar(100),Color varchar(100) Default(''),ItemVer varchar(50),bMRP bit default(1),bVirtual bit Default(0),Remark varchar(300),
        bPrint bit,PrintNum Smallint,MakeDate DateTime,MakeMan varchar(20),MakeManName varchar(30),EditMan varchar(30),EditManName varchar(30),EditDate datetime,
        AuditFlag Smallint default(0),bMaxAudit bit,AuditManName varchar(50),AuditDate VarChar(100),MaxAuditDate DateTime
        )
Alter Table ItemBomHDTB add Constraint Un_ItemBomHDTB Unique(ItemId,ProType,ItemVer)

--1.Bom从表:(ItemBomDTTB)
if exists(select Name from sysobjects where name='ItemBomDTTB' and type='U')
  Drop Table dbo.ItemBomDTTB
Create Table dbo.ItemBomDTTB
       (AutoID Bigint Identity(1,1) not null primary key,AutoNo varchar(100),BillNo VarChar(50) not null Constraint FK_ItemBomHDTB_ItemBomHDTB_BillNo Foreign Key(BillNo) References ItemBomHDTB(BillNo),
        ItemID varchar(30) not null,ItemCode varchar(50),ProType VarChar(100),Color varchar(100) Default(''),ItemVer varchar(50),
        ChildId varchar(30) not null,ChildCode varchar(50) not null,ChildPYCode varchar(50),ChildName varchar(100),ChildSpc varchar(100),
        ChildPic varchar(50),ChildUnit varchar(10),ChildSubUnit varchar(10),ChildExchrate numeric(18,9) default(1),ChildiFlag Smallint default(0),ChildMaterial varchar(100),
        ChildProType varchar(100),ChildColor varchar(100) Default(''),Dosage numeric(19,6) not null,SubDosage Numeric(19,6),WasteRate numeric(18,5) default(0),iFlag smallint,DrawDept varchar(20),TechName VarChar(100),ChildVer varchar(50),
        bKeyChild bit default(0),bReplace bit default(0),bDefault bit default(0),bUse bit default(1),ReplaceItem varchar(30),Remark varchar(300))
Alter Table ItemBomDTTB add Constraint Un_ItemBomDTTB Unique(ItemId,ProType,ChildId,ChildProType)
go

--产品工艺表主表 ItemTechHDTB:
if exists (select Id from sysobjects where name='FK_ItemTechDTTB_ItemTechHDTB_TechNo' and type='F')
  Alter Table dbo.ItemTechDTTB DROP Constraint FK_ItemTechDTTB_ItemTechHDTB_TechNo
if exists(select Name from sysobjects where name='ItemTechHDTB' and type='U')
  Drop Table dbo.ItemTechHDTB
Create Table dbo.ItemTechHDTB
   (AutoID Bigint Identity(1,1) not null,AutoNo varchar(100),bSelect bit Default(0),
    TechNo varchar(20) not null Primary Key,BuildDate Datetime not null,TechVerName varchar(100),
    ItemId varchar(30) not null ,ItemCode varchar(50),ItemPYCode varchar(50),ItemName varchar(100) not null,ItemSpc varchar(100),ItemPic varchar(100),
    ItemUnit varchar(10),SubUnit varchar(10),iFlag int,ExchRate numeric(19,6),Remark varchar(300),
    bPrint bit,PrintNum smallint default(0),MakeDate DateTime,MakeMan varchar(20),MakeManName varchar(30),
    EditMan varchar(30),EditManName varchar(30),EditDate datetime,AuditFlag Smallint,bMaxAudit bit,AuditManName varchar(50),
    AuditDate VarChar(100),MaxAuditDate DateTime)
go

--产品工艺表从表 ItemTechDTTB:
if exists(select Name from sysobjects where name='ItemTechDTTB' and type='U')
  Drop Table dbo.ItemTechDTTB
Create Table dbo.ItemTechDTTB
   (AutoID Bigint Identity(1,1) not null primary key,AutoNo varchar(100),bSelect bit Default(0),RecNo smallint,
    TechNo varchar(20) not null Constraint FK_ItemTechDTTB_ItemTechHDTB_TechNo Foreign Key(TechNo) References ItemTechHDTB(TechNo),
    ItemId varchar(50) not null,ItemCode varchar(50),ItemPYCode varchar(50),ItemName varchar(100),ItemSpc varchar(100),ItemPic varchar(100),
    ItemUnit varchar(10),SubUnit varchar(10),iFlag int,ExchRate numeric(19,6),
    Ordinal Smallint not null,TechName VarChar(100) not null Default(''),TopTech VarChar(100)  Default(''),NextTech VarChar(100)  Default(''),
    TechParam varchar (50),DeptId VarChar(50),DeptName VarChar(100),bFirst bit,bLast bit,
    CurePrice numeric(19,6),SpoilPrice Numeric(19,6),WastePrice Numeric(19,6),Remark varchar(300))
go


/*------------------------------采购模块------------------------------*/

--3.采购价格表(StockPriceTB):
if exists (select name from sysobjects where Name='StockPriceTB' and type='U')
   Drop Table dbo.StockPriceTB
Create Table dbo.StockPriceTB
  (AutoId int Identity(1,1)not null primary key,PrvId varchar(20),PrvName varchar(100),
   ItemId varchar(30),ItemCode varchar(50),ItemName varchar(100),ItemSpc varchar(100),ItemUnit varchar(10),Weight Numeric(19,6),
   MainPrice Numeric(18,5),TaxPrice Numeric(18,5),SubPrice Numeric(18,5),SubTaxPrice Numeric(18,5),TaxRate Numeric(18,5),
   PriceKind Int,bKey bit, Remark varchar(100))  
  
  
--3. 请购单表主表 RequireHDTB:
if exists (select Id from sysobjects where name='FK_RequireDTTB_RequireHDTB_ReqNO' and type='F')
  Alter Table dbo.RequireDTTB DROP Constraint FK_RequireDTTB_RequireHDTB_ReqNO
if exists(select Name from sysobjects where name='RequireHDTB' and type='U')
  Drop Table dbo.RequireHDTB
Create Table dbo.RequireHDTB
   (AutoID Bigint Identity(1,1) not null,bSelect bit Default(0),ReqNO varchar(20) not null Primary Key,ReqDate Datetime not null,DeptId varchar(20),
    ReqKind smallint default(0),ReqMan varchar(20),SubjoinNo varchar(20),Theme varchar(200),Remark varchar(300),
    bPrint bit,PrintNum smallint default(0),MakeDate DateTime,MakeMan varchar(20),MakeManName varchar(30),
    EditMan varchar(30),EditManName varchar(30),EditDate datetime,AuditFlag Smallint,bMaxAudit bit,AuditManName varchar(50),
    AuditDate VarChar(100),MaxAuditDate DateTime)

--3. 请购单表从表 RequireDTTB:
if exists(select Name from sysobjects where name='RequireDTTB' and type='U')
  Drop Table dbo.RequireDTTB
Create Table dbo.RequireDTTB
   (AutoID Bigint Identity(1,1) not null primary key,AutoNo varchar(100),bSelect bit Default(0),
    ReqNo varchar(20) not null Constraint FK_RequireDTTB_RequireHDTB_ReqNO Foreign Key(ReqNO) References RequireHDTB(ReqNO),
    ItemId varchar(50) not null,ItemCode varchar(50),ItemPYCode varchar(50),ItemName varchar(100),ItemSpc varchar(100),ItemPic varchar(100),
    ItemUnit varchar(10),SubUnit varchar(10),iFlag int,ExchRate numeric(19,6),NeedDate DateTime,
    ProOrderNo varchar(100),ProOrderId varchar(100),
    Color varchar(50),ProType VarChar(100),ReqNum numeric(19,6) not null,SubNum Numeric(19,6),LastNum Numeric(19,6),Remark varchar(300))


--3. 采购订单表主表 StockOrderHDTB:
if exists (select Id from sysobjects where name='FK_StockOrderDTTB_StockOrderHDTB_StockOrderNo' and type='F')
  Alter Table dbo.StockOrderDTTB Drop Constraint FK_StockOrderDTTB_StockOrderHDTB_StockOrderNo
if exists(select Name from sysobjects where name='StockOrderHDTB' and type='U')
  Drop Table dbo.StockOrderHDTB
Create Table dbo.StockOrderHDTB
    (AutoID Bigint Identity(1,1) not null,bSelect bit Default(0),StockOrderNO varchar(30) not null Primary Key,OrderDate Datetime not null,
     PrvId varchar(30),EmpId varchar(30),SubjoinNo varchar(20),PayMode varchar(30),Theme varchar(200),Remark varchar(300),
     bPrint bit,PrintNum smallint default(0),bAllIn bit Default(0),
     MakeDate DateTime,MakeMan varchar(20),MakeManName varchar(30),
     EditMan varchar(30),EditManName varchar(30),EditDate datetime,AuditFlag Smallint,bMaxAudit bit,AuditManName varchar(50),
     AuditDate VarChar(100),MaxAuditDate DateTime)
        
--3. 采购订单表从表 StockOrderDTTB:
if exists(select Name from sysobjects where name='StockOrderDTTB' and type='U')
  Drop Table dbo.StockOrderDTTB
Create Table dbo.StockOrderDTTB
    (AutoID Bigint Identity(1,1) not null primary key,AutoNo varchar(100),bSelect bit Default(0),
     StockOrderNo varchar(30) not null Constraint FK_StockOrderDTTB_StockOrderHDTB_StockOrderNo Foreign Key(StockOrderNo) References StockOrderHDTB(StockOrderNo),
     ItemID varchar(50) not null,ItemCode varchar(50),ItemPYCode varchar(50),ItemName varchar(100),ItemSpc varchar(100),ItemPic varchar(100),
     ItemUnit varchar(10),SubUnit varchar(10),iFlag int,ExchRate numeric(19,6),
     sColor VarChar(50),ProType VarChar(100),DeliverDate DateTime,
     OrderNum numeric(19,6) not null,OrderPrice Numeric(19,6),TaxRate Numeric(19,6),TaxPrice Numeric(19,6),
     TaxMoney Numeric(19,6),OrderMoney Numeric(19,6),SubNum Numeric(19,6),SubPrice Numeric(19,6),SubTaxPrice Numeric(19,6),
     SubMoney Numeric(19,6),AllMoney Numeric(19,6),bTax bit,RfNo varchar(30),RfId varchar(100),bAllIn bit Default(0),Remark varchar(200))



--3. 采购收货单表主表 StockReceiptHDTB:
if exists (select Id from sysobjects where name='FK_StockReceDTTB_StockReceHDTB_StockReceNo' and type='F')
  Alter Table dbo.StockReceDTTB Drop Constraint FK_StockReceDTTB_StockReceHDTB_StockReceNo
if exists(select Name from sysobjects where name='StockReceHDTB' and type='U')
  Drop Table dbo.StockReceHDTB
Create Table dbo.StockReceHDTB
    (AutoID Bigint Identity(1,1) not null,bSelect bit Default(0),StockReceNo varchar(30) not null Primary Key,ReceDate Datetime not null,
     PrvId varchar(30),EmpId varchar(30),SubjoinNo varchar(20),PayMode varchar(30),Theme varchar(200),Remark varchar(300),
     bPrint bit,PrintNum smallint default(0),bAllIn bit Default(0),
     MakeDate DateTime,MakeMan varchar(20),MakeManName varchar(30),
     EditMan varchar(30),EditManName varchar(30),EditDate datetime,AuditFlag Smallint,bMaxAudit bit,AuditMan varchar(100),AuditManName varchar(50),
     AuditDate VarChar(100),MaxAuditDate DateTime)
        
--3. 采购收货单表从表 StockReceiptDTTB:
if exists(select Name from sysobjects where name='StockReceDTTB' and type='U')
  Drop Table dbo.StockReceDTTB
Create Table dbo.StockReceDTTB
    (AutoID Bigint Identity(1,1) not null primary key,AutoNo varchar(100),bSelect bit Default(0),
     StockReceNo varchar(30) not null Constraint FK_StockReceDTTB_StockReceHDTB_StockReceNo Foreign Key(StockReceNo) References StockReceHDTB(StockReceNo),
     ItemID varchar(50) not null,ItemCode varchar(50),ItemPYCode varchar(50),ItemName varchar(100),ItemSpc varchar(100),ItemPic varchar(100),
     ItemUnit varchar(10),SubUnit varchar(10),iFlag int,ExchRate numeric(19,6),DeliveDate DateTime,
     ProType varchar(100),Color varchar(100),BatchNo varchar(30),PlaceNo varchar(30),CompactNo varchar(100),ObjectId varchar(30),
     SjNo varchar(30),sOrderNo varchar(30),TechName varchar(100),InDate varchar(30),PState varchar(30),TempNo varchar(30),ReceDate DateTime,
     ReceNum numeric(19,6) not null,ReceWareId varchar(50),NoPassNum numeric(19,6), NoPassWareId varchar(50),BackNum numeric(19,6),
     RecePrice Numeric(19,6),TaxRate Numeric(19,6),TaxPrice Numeric(19,6),
     TaxMoney Numeric(19,6),ReceMoney Numeric(19,6),SubNum Numeric(19,6),SubPrice Numeric(19,6),SubTaxPrice Numeric(19,6),
     SubMoney Numeric(19,6),AllMoney Numeric(19,6),bTax bit,StockOrderNo varchar(30),StockOrderId varchar(100),RfNum numeric(19,6),RfNo varchar(30),RfId varchar(100),bAllIn bit Default(0),Remark varchar(200))
go


/*------------------------------销售模块------------------------------*/


--1.销售价格表(SalePriceTB):
if exists (select name from sysobjects where Name='SalePriceTB' and type='U')
   Drop Table dbo.SalePriceTB
Create Table dbo.SalePriceTB
  (AutoId int Identity(1,1)not null primary key,CustId varchar(20),CustName varchar(100),
   ItemId varchar(30),ItemCode varchar(50),ItemName varchar(100),ItemSpc varchar(100),ItemUnit varchar(10),
   MainPrice Numeric(18,5),TaxPrice Numeric(18,5),SubPrice Numeric(18,5),SubTaxPrice Numeric(18,5),TaxRate Numeric(18,5),
   PriceKind Int,bKey bit, Remark varchar(100)) 
   

--2. 销售订单表主表 SaleOrderHDTB:
if exists (select Id from sysobjects where name='FK_SaleOrderDTTB_SaleOrderHDTB_SaleOrderNo' and type='F')
  Alter Table dbo.SaleOrderDTTB Drop Constraint FK_SaleOrderDTTB_SaleOrderHDTB_SaleOrderNo
if exists (select Name from Sysobjects where name='SaleOrderHDTB' and type='U')
   Drop Table dbo.SaleOrderHDTB
Create Table dbo.SaleOrderHDTB
   (AutoId Bigint Identity (1,1) not null,bSelect bit Default(0),SaleOrderNo varchar(30) not null Primary Key,OrderDate DateTime not null,
    OrderStyle varchar(30),CompactNo varchar(30),CustId varchar(30),SendAdd varchar(200),EmpId varchar(30),SubjoinNo varchar(20),ItemNo varchar(100),
    PayMode varchar(30),TraffMode nvarchar(50),TraffPay nvarchar(50),CurrName varchar(30),ExchangeRate Numeric(19,6),bTax bit,Theme varchar(200),FjPath varchar(500),bSubmit bit,
    FjName varchar(30),Remark varchar(300),bStop bit Default(0),bPrint bit,PrintNum smallint default(0),bAllSend bit Default(0),bAllOut bit Default(0),
    MakeDate DateTime,MakeMan varchar(20),MakeManName varchar(30),EditMan varchar(30),EditManName varchar(30),EditDate datetime,AuditFlag Smallint,bMaxAudit bit,
    AuditManName varchar(50),AuditDate VarChar(100),MaxAuditDate DateTime)

--3. 销售订单表从表 SaleOrderDTTB:
if exists(select Name from sysobjects where name='SaleOrderDTTB' and type='U')
  Drop Table dbo.SaleOrderDTTB
Create Table dbo.SaleOrderDTTB
    (AutoID Bigint Identity(1,1) not null primary key,AutoNo varchar(100),bSelect bit Default(0),
     SaleOrderNo varchar(30) not null Constraint FK_SaleOrderDTTB_SaleOrderHDTB_SaleOrderNo Foreign Key(SaleOrderNo) References SaleOrderHDTB(SaleOrderNo),
     ItemID varchar(50) not null,ItemCode varchar(50),ItemPYCode varchar(50),
     ItemName varchar(100),ItemSpc varchar(100),ItemPic varchar(100),ItemUnit varchar(10),SubUnit varchar(10),iFlag int,ExchRate numeric(19,6),
     sColor VarChar(50),ProType VarChar(100),Color varchar(50),
     OrderNum numeric(19,6) not null,OrderPrice Numeric(19,6),TaxRate Numeric(19,6),TaxPrice Numeric(19,6),
     TaxMoney Numeric(19,6),OrderMoney Numeric(19,6),SubNum Numeric(19,6),SubPrice Numeric(19,6),SubTaxPrice Numeric(19,6),
     CurrName varchar(30),ExchangeRate Numeric(19,6),FOrderPrice Numeric(18,5),FTaxPrice Numeric(18,5),FTaxMoney Numeric(18,5),FOrderMoney Numeric(18,5),FAllMoney Numeric(18,5),
     SubMoney Numeric(19,6),AllMoney Numeric(19,6),bTax bit,CompactNo varchar(100),DeliverDate Datetime,
     bStop bit Default(0),bAllSend bit Default(0),bAllOut bit Default(0),Remark varchar(200)) 
     
--4. 销售发货单主表 SaleSenderHDTB:
if exists (select Id from sysobjects where name='FK_SaleSenderDTTB_SaleSenderHDTB_SenderNo' and type='F')
  Alter Table dbo.SaleSenderDTTB Drop Constraint FK_SaleSenderDTTB_SaleSenderHDTB_SenderNo
if exists (select Name from Sysobjects where name='SaleSenderHDTB' and type='U')
   Drop Table dbo.SaleSenderHDTB
Create Table dbo.SaleSenderHDTB
   (AutoId Bigint Identity (1,1) not null,bSelect bit Default(0),SenderNo varchar(50) not null Primary Key,SenderDate DateTime not null,
    OrderStyle varchar(30),CompactNo varchar(30),CustId varchar(30),CustName varchar(100),CustMobile varchar(40),SendAdd varchar(200),EmpId varchar(30),SubjoinNo varchar(20),
    PayMode varchar(30),CurrName varchar(30),ExchangeRate Numeric(19,6),bTax bit,Theme varchar(200),FjPath varchar(500),
    FjName varchar(30),Remark varchar(300),bPrint bit,PrintNum smallint default(0),bAllOut bit Default(0),
    MakeDate DateTime,MakeMan varchar(20),MakeManName varchar(30),EditMan varchar(30),EditManName varchar(30),EditDate datetime,AuditFlag Smallint,bMaxAudit bit,
    AuditManName varchar(50),AuditDate VarChar(100),MaxAuditDate DateTime)

--5. 销售发货单从表 SaleSenderDTTB:
if exists(select Name from sysobjects where name='SaleSenderDTTB' and type='U')
  Drop Table dbo.SaleSenderDTTB
Create Table dbo.SaleSenderDTTB
    (AutoID Bigint Identity(1,1) not null primary key,AutoNo varchar(100),bSelect bit Default(0),
     SenderNo varchar(50) not null Constraint FK_SaleSenderDTTB_SaleSenderHDTB_SenderNo Foreign Key(SenderNo) References SaleSenderHDTB(SenderNo),
     ItemID varchar(50),ItemCode varchar(50),ItemPYCode varchar(50),
     ItemName varchar(100),ItemSpc varchar(100),ItemPic varchar(100),ItemUnit varchar(10),SubUnit varchar(10),iFlag int,ExchRate numeric(19,6),
     sColor VarChar(50),ProType VarChar(100),bStop bit,DeliverDate DateTime,
     SenderNum numeric(19,6) not null,SenderPrice Numeric(19,6),TaxRate Numeric(19,6),TaxPrice Numeric(19,6),
     TaxMoney Numeric(19,6),SenderMoney Numeric(19,6),SubNum Numeric(19,6),SubPrice Numeric(19,6),SubTaxPrice Numeric(19,6),SubMoney Numeric(19,6),AllMoney Numeric(19,6),
     SaleOrderNo varchar(100),SaleOrderId varchar(100),bTax bit,CompactNo varchar(100),bAllOut bit Default(0),Remark varchar(200)) 
go    
/*------------------------------仓库模块------------------------------*/

--删除外键约束
if exists (select * from sysobjects where name='FK_WareAccountTB_ItemTB_ItemID' and type='F')
  Alter Table dbo.WareAccountTB DROP Constraint FK_WareAccountTB_ItemTB_ItemID
  
 if exists (select * from sysobjects where name='FK_WareAccountTB_WareTB_WareID' and type='F')
  Alter Table dbo.WareAccountTB DROP Constraint FK_WareAccountTB_WareTB_WareID
  
--期初表  
if exists (select Name from Sysobjects where name='WareAccountTB' and type='U')
  Drop Table dbo.WareAccountTB
Create Table dbo.WareAccountTB
  (AutoId Int Identity(1,1) not null Primary Key,AccountNo varchar(30) not null,AccountFlag varchar(10),WareId varchar(20) not Null  Constraint FK_WareAccountTB_WareTB_WareID Foreign Key(WareID) References WareTB(WareID),
   ItemId varchar(30) not null  Constraint FK_WareAccountTB_ItemTB_ItemID Foreign Key(ItemID) References ItemTB(ItemId),
   ItemCode varchar(30),ProType varchar(100),Color varchar(100),BatchNo varchar(30),PlaceNo varchar(30),CompactNo varchar(100),ObjectId varchar(30),
   SjNo varchar(30),sOrderNo varchar(30),TechName varchar(100),InDate varchar(30),PState varchar(30),TempNo varchar(30),
   FirstNum numeric(19,6),FirstPrice numeric(19,6),FirstMoney numeric(19,6),InNum numeric(19,6),InPrice numeric(19,6),InMoney numeric(19,6),
   OutNum numeric(19,6),OutPrice numeric(19,6),OutMoney numeric(19,6),LastNum numeric(19,6),LastPrice numeric(19,6),LastMoney numeric(19,6),
   MakeMan varchar(30),MakeManName varchar(30),MakeDate DateTime) 
--创建唯一约束
Alter Table dbo.WareAccountTB add constraint Un_WareAccountTB Unique(AccountNo,WareId,ItemId,ProType,Color,BatchNo,PlaceNo,CompactNo,ObjectId,SjNo,sOrderNo,TechName,InDate,PState,TempNo)


if exists (select * from sysobjects where name='FK_WareInOutHDTB_WareKindTB_WKindID' and type='F')
  Alter Table dbo.WareInOutHDTB DROP Constraint FK_WareInOutHDTB_WareKindTB_WKindID
          
--业务类型表(WareKindTB)
if exists(select Name from sysobjects where name='WareKindTB' and type='U')
  Drop Table dbo.WareKindTB
Create Table dbo.WareKindTB
       (AutoID Int Identity(1,1),bSelect bit Default(0),WKindId varchar(30) not null Primary Key,WKindName varchar(30) not null,WFlag smallint not null,
        sDefWare varchar(30),bOther bit Default(0),bInOther bit Default(0),bOutOther bit default(0) ,bChangePrice bit default(1),bDefault bit)
  
go

--出入库主表(主表WareInOutHDTB)                   
 if exists(select Name from sysobjects where name='WareInOutHDTB' and type='U')
  Drop Table dbo.WareInOutHDTB
Create Table dbo.WareInOutHDTB
       (AutoID Int Identity(1,1),BillNO varchar(20) not null Primary Key,WKindID varchar(30) Not Null Constraint FK_WareInOutHDTB_WareKindTB_WKindID Foreign Key(WKindID) References WareKindTB(WKindID),
        bSelect bit Default(0),PayMode varchar(30),WFlag Smallint not null,SignFlag Smallint not null,BillDate DateTime not null,ObjectID varchar(20),ObjectName nvarchar(200),WareMan varchar(20),SendMan varchar(20),DrawMan varchar(20),Seller varchar(20),
        CoinName varchar(20),ExchangeRate numeric(19,6),AccName varchar(50),bCashDeal bit Default(0),HWareId nvarchar(20),HWareName nvarchar(50),
        bAuto bit,bTax bit,bInvoice bit,bRed bit,bFuHe bit Default(0),
        bPrint bit default(0),PrintNum int,SubjoinNo varchar(20),SubjoinTableId varchar(50),SourceNo varchar(30),Address varchar(200),
        MakeDate DateTime Default(getdate()),MakeMan varchar(20),MakeManName varchar(30),
        AuditFlag Smallint default(0),AuditMan varchar(50),AuditManName varchar(50),AuditDate varchar(80),bMaxAudit bit,MaxAuditDate DateTime,EditMan varchar(30),EditManName varchar(30),EditDate DateTIme,
        FinaMan varchar(20),FinaDate datetime,YearMon varchar(6),PzWord varchar(50),PzNo varchar(50),PzId varchar(50),Remark varchar(200))
      

if exists (select * from sysobjects where name='FK_WareInOutDTTB_ItemTB_ItemID' and type='F')
  Alter Table dbo.WareInOutDTTB DROP Constraint FK_WareInOutDTTB_ItemTB_ItemID
  
if exists (select * from sysobjects where name='FK_WareInOutDTTB_WareB_WareID' and type='F')
  Alter Table dbo.WareInOutDTTB DROP Constraint FK_WareInOutDTTB_WareB_WareID
  
--2.4出入库单表(从表WareInOutDTTB)
if exists(select Name from sysobjects where name='WareInOutDTTB' and type='U')
  Drop Table dbo.WareInOutDTTB
Create Table dbo.WareInOutDTTB
       (AutoID Int Identity(1,1) Primary Key ,AutoNo varchar(100),BillNO varchar(20) not null,iNo int,bSelect bit Default(0),
        ItemId varchar(30) not null Constraint FK_WareInOutDTTB_ItemTB_ItemID Foreign Key(ItemID) References ItemTB(ItemId),ItemCode varchar(30) not null,
        ItemName varchar(100),ItemSpc varchar(100),ItemPic varchar(100),ItemUnit varchar(10),SubUnit varchar(10),ItemPYCode varchar(50),iFlag int,ExchRate numeric(19,6),
        WareId varchar(20) not null Constraint FK_WareInOutDTTB_WareB_WareID Foreign Key(WareID) References WareTB(WareID),
        ProType varchar(100),Color varchar(100),BatchNo varchar(30),PlaceNo varchar(30),CompactNo varchar(100),ObjectId varchar(30),
        SjNo varchar(30),sOrderNo varchar(30),TechName varchar(100),InDate varchar(30),PState varchar(30),TempNo varchar(30),Weight Numeric(19,6),AllWeight Numeric(19,6),
        EmpId varchar(50),EmpName varchar(50),MasterNo varchar(100),
        MainNum numeric(19,6),MainPrice numeric(19,6),TaxPrice numeric(19,6),MainMoney numeric(19,6),SubNum numeric(19,6),SubPrice numeric(19,6),SubTaxPrice numeric(19,6),SubMoney numeric(19,6),
        TaxRate numeric(19,6),TaxMoney numeric(19,6),AllMoney numeric(19,6),OkPrice numeric(19,6),OkMoney numeric(19,6),
        MadePrice Numeric(19,6),MadeTaxPrice Numeric(19,6),MadeMoney Numeric(19,6),MadeTaxRate Numeric(19,6),MadeTaxMoney Numeric(19,6),MadeAllMoney Numeric(19,6),
        CurrName varchar(30),ExchangeRate Numeric(19,6),FMainPrice Numeric(19,6),FTaxPrice Numeric(19,6),FTaxMoney Numeric(19,6),FMainMoney Numeric(19,6),FAllMoney Numeric(19,6),
        HtNo varchar(100),SubjoinNo varchar(100),bEnd bit,EndNum numeric(19,6),RfNo varchar(100),RfId int,RfNum numeric(19,6),
        TaskNo varchar(20),TaskID varchar(100),QcStockNo varchar(20),QcStockId varchar(100),StockRecNo varchar(100),StockRecID varchar(100),
        StockNo varchar(100),StockID varchar(100),SaleOrderNo varchar(100),SaleOrderId varchar(100),SaleSenderNo varchar(100),SaleSenderId varchar(100),
        ProOrderNo varchar(100),ProOrderId varchar(100),DispatchNo varchar(100),DispatchId varchar(100),MatOutNo varchar(100),MatOutId varchar(100),
        Remark varchar(100))
go  
   
if exists(select Name from sysobjects where name='BomMatOutDTTB' and type='U')
  Drop Table dbo.BomMatOutDTTB
Create Table dbo.BomMatOutDTTB
       (AutoID Bigint Identity(1,1) not null primary key,AutoNo varchar(100),BillNo varchar(50) not null,
        ItemId varchar(30) not null,ItemCode varchar(30) not null,ItemName varchar(100),ItemSpc varchar(100),ItemPic varchar(100),
        ItemUnit varchar(10),SubUnit varchar(10),ItemPYCode varchar(50),iFlag int,ExchRate numeric(19,6),Color varchar(50),
        MainNum numeric(19,6),Remark varchar(300)
        )

--形态转换单主表(ItemSwithcHDTB):
if exists (select * from sysobjects where name='FK_ItemSwitchDTTB_ItemSwitchHDTB_SwitchNO' and type='F')
  Alter Table dbo.ItemSwitchDTTB DROP Constraint FK_ItemSwitchDTTB_ItemSwitchHDTB_SwitchNO
if exists (select * from sysobjects where name='FK_ItemSwitchDT2TB_ItemSwitchHDTB_SwitchNO' and type='F')
  Alter Table dbo.ItemSwitchDT2TB DROP Constraint FK_ItemSwitchDT2TB_ItemSwitchHDTB_SwitchNO
go  
if exists(select Name from sysobjects where name='ItemSwitchHDTB' and type='U')
  Drop Table dbo.ItemSwitchHDTB
Create Table dbo.ItemSwitchHDTB   
       (AutoId int not null Identity(1,1),AutoNo varchar(100) not null,SwitchNo varchar(50) not null Primary Key,
        bSelect bit default(0),SwitchDate datetime not null,SFlag Smallint not null,OutWare varchar(20) not null,InWare varchar(20) not null,
        bPrint bit default(0),PrintNum int,SubjoinNo varchar(50),SubjoinTableId varchar(50),
        MakeDate DateTime Default(getdate()),MakeMan varchar(20),MakeManName varchar(30),
        AuditFlag Smallint default(0),AuditMan varchar(50),AuditManName varchar(50),AuditDate varchar(80),bMaxAudit bit,MaxAuditDate DateTime,EditMan varchar(30),EditManName varchar(30),EditDate DateTIme,
        FinaMan varchar(20),FinaDate datetime,YearMon varchar(6),PzWord varchar(50),PzNo varchar(50),PzId varchar(50),Remark varchar(500))


--形态转换单从表(ItemSwitchDTTB):  
if exists(select Name from sysobjects where name='ItemSwitchDTTB' and type='U')
  Drop Table dbo.ItemSwitchDTTB
Create Table dbo.ItemSwitchDTTB
       (AutoId int not null Identity(1,1),AutoNo varchar(100) not null primary key,SwitchNo varchar(50) not null Constraint FK_ItemSwitchDTTB_ItemSwitchHDTB_SwitchNO Foreign Key(SwitchNo) References ItemSwitchHDTB(SwitchNo),
        ItemId varchar(30) not null ,ItemCode varchar(30) not null,ItemName varchar(100),ItemSpc varchar(100),ItemPic varchar(100),
        ItemUnit varchar(10),SubUnit varchar(10),ItemPYCode varchar(50),iFlag int,ExchRate numeric(19,6),      
        ProType varchar(100),Color varchar(100),BatchNo varchar(30),PlaceNo varchar(30),CompactNo varchar(100),ObjectId varchar(30),SjNo varchar(30),
        sOrderNo varchar(30),TechName varchar(100),InDate varchar(30),PState varchar(30),TempNo varchar(30),       
        SwitchNum numeric(19,6),SwitchPrice numeric(19,6),TaxPrice numeric(19,6),SwitchMoney numeric(19,6),
        SubNum numeric(19,6),SubPrice numeric(19,6),SubTaxPrice numeric(19,6),SubMoney numeric(19,6),
        TaxRate numeric(19,6),TaxMoney numeric(19,6),AllMoney numeric(19,6),Remark varchar(500) 
        )


--形态转换单从从表(ItemSwitchDT2TB):  
if exists(select Name from sysobjects where name='ItemSwitchDT2TB' and type='U')
  Drop Table dbo.ItemSwitchDT2TB
Create Table dbo.ItemSwitchDT2TB
       (AutoId int not null Identity(1,1),AutoNo varchar(100) not null primary key,SwitchNo varchar(50) not null Constraint FK_ItemSwitchDT2TB_ItemSwitchHDTB_SwitchNO Foreign Key(SwitchNo) References ItemSwitchHDTB(SwitchNo),
        DetAutoNo varchar(100),ItemId varchar(30) not null,ItemCode varchar(30) not null,ItemName varchar(100),ItemSpc varchar(100),ItemPic varchar(100),
        ItemUnit varchar(10),SubUnit varchar(10),ItemPYCode varchar(50),iFlag int,ExchRate numeric(19,6),
        ProType varchar(100),Color varchar(100),BatchNo varchar(30),PlaceNo varchar(30),CompactNo varchar(100),ObjectId varchar(30),
        SjNo varchar(30),sOrderNo varchar(30),TechName varchar(100),InDate varchar(30),PState varchar(30),TempNo varchar(30),
        SwitchNum numeric(19,6),SwitchPrice numeric(19,6),TaxPrice numeric(19,6),SwitchMoney numeric(19,6), 
        SubNum numeric(19,6),SubPrice numeric(19,6),SubTaxPrice numeric(19,6),SubMoney numeric(19,6),
        TaxRate numeric(19,6),TaxMoney numeric(19,6),AllMoney numeric(19,6),Remark varchar(500)
        )
go
        
 
if exists (select * from sysobjects where name='FK_WareStorageTB_ItemTB_ItemID' and type='F')
  Alter Table dbo.WareStorageTB DROP Constraint FK_WareStorageTB_ItemTB_ItemID
go  
 if exists (select * from sysobjects where name='FK_WareStorageTB_WareTB_WareID' and type='F')
  Alter Table dbo.WareStorageTB DROP Constraint FK_WareStorageTB_WareTB_WareID
go   
--库存表 

if exists (select Name from Sysobjects where name='WareStorageTB' and type='U')
  Drop Table dbo.WareStorageTB
Create Table dbo.WareStorageTB
  (AutoId Int Identity(1,1),WareId varchar(20) not Null  Constraint FK_WareStorageTB_WareTB_WareID Foreign Key(WareID) References WareTB(WareID),
   ItemId varchar(30) not null  Constraint FK_WareStorageTB_ItemTB_ItemID Foreign Key(ItemID) References ItemTB(ItemId),
   ItemCode varchar(30),ProType varchar(100),Color varchar(100),BatchNo varchar(30),PlaceNo varchar(30),CompactNo varchar(100),ObjectId varchar(30),
   SjNo varchar(30),sOrderNo varchar(30),TechName varchar(100),InDate varchar(30),PState varchar(30),TempNo varchar(30),
   WareNum Numeric(19,6),WarePrice Numeric(19,6))
--创建唯一约束
Alter Table dbo.WareStorageTB add constraint Un_WareStorageTB Unique(WareId,ItemId,ProType,Color,BatchNo,PlaceNo,CompactNo,ObjectId,SjNo,sOrderNo,TechName,InDate,PState,TempNo)




--仓库盘点主表WareCheckHDTB
if exists (select * from sysobjects where name='FK_WareCheckDTTB_WareCheckHDTB_BillNo' and type='F')
  Alter Table dbo.WareCheckDTTB DROP Constraint FK_WareCheckDTTB_WareCheckHDTB_BillNo
if exists(select Name from sysobjects where name='WareCheckHDTB' and type='U')
  Drop Table dbo.WareCheckHDTB
Create Table dbo.WareCheckHDTB
       (AutoID Bigint Identity(1,1) not null,bSelect bit Default(0),BillNo varchar(30) not null Primary Key,CheckDate datetime not null,WareId varchar(20) not null,
        ItemKindId Varchar(30),CheckMan varchar(20),CheckKind Smallint,bPrint bit,PrintNum Smallint,Remark varchar(300),
        MakeDate datetime,MakeMan varchar(20),MakeManName varchar(30),EditMan varchar(30),EditManName varchar(30),EditDate datetime,
        AuditFlag Smallint default(0),bMaxAudit bit,AuditMan varchar(50),AuditManName varchar(50),AuditDate VarChar(100),MaxAuditDate DateTime)

--仓库盘点从表WareCheckDTTB
if exists (select * from sysobjects where name='Un_WareCheckDTTB' and type='UQ')
  Alter Table dbo.WareCheckDTTB DROP Constraint Un_WareCheckDTTB
if exists(select Name from sysobjects where name='WareCheckDTTB' and type='U')
  Drop Table dbo.WareCheckDTTB
Create Table dbo.WareCheckDTTB
       (AutoID Bigint Identity(1,1) not null primary key,AutoNo varchar(100),BillNo varchar(30) not null Constraint FK_WareCheckDTTB_WareCheckHDTB_BillNo Foreign Key(BillNo) References WareCheckHDTB(BillNo),
       ItemID varchar(30) not null,ItemCode varchar(30),ItemPYCode varchar(30),
       ItemName varchar(100),ItemSpc varchar(100),ItemPic varchar(100),ItemUnit varchar(10),SubUnit varchar(10),iFlag int,ExchRate numeric(19,6),
       ProType varchar(100) Default(''),Color varchar(100) Default(''),BatchNo varchar(30) Default(''),PlaceNo varchar(30) Default(''),CompactNo varchar(100) Default(''),ObjectId varchar(30) Default(''),
       SjNo varchar(30) Default(''),sOrderNo varchar(30) Default(''),TechName varchar(100) Default(''),InDate varchar(30) Default(''),PState varchar(30 ) Default(''),TempNo varchar(30) Default(''),
       WareNum Numeric(19,6),WarePrice Numeric(19,6),WareMoney Numeric(19,6),FactNum Numeric(19,6),FactPrice Numeric(19,6),FactMoney Numeric(19,6),
       MoreNum Numeric(19,6),MoreMoney Numeric(19,6),LossNum Numeric(19,6),LossMoney Numeric(19,6))
--创建唯一约束
Alter Table dbo.WareCheckDTTB add constraint Un_WareCheckDTTB Unique(BillNo,ItemId,ProType,Color,BatchNo,PlaceNo,CompactNo,ObjectId,SjNo,sOrderNo,TechName,InDate,PState,TempNo)

go

--财务日期表
if exists(select Name from sysobjects where name='FinanceDateTB' and type='U')
  Drop Table dbo.FinanceDateTB
Create Table dbo.FinanceDateTB
       (AutoId int Identity(1,1) not null,MonthNo varchar(10) not null Primary Key,BeginDate DateTime not null,EndDate DateTime not null,
        bNow bit default(0),bAccount bit,bStockAccount bit,bSaleAccount bit,bCWAccount bit,bCNAccount bit)

/*------------------------------生产模块------------------------------*/

--基本工序表（BaseTechTB):
if exists(select Name from sysobjects where name='BaseTechTB' and type='U')
  Drop Table dbo.BaseTechTB
Create Table dbo.BaseTechTB
       (AutoID Int Identity(1,1) not null,bSelect bit Default(0),TechId VarChar(20) not null ,TechCode VarChar(20) not null ,TechName varchar(100) not null primary key,Ordinal smallint,ParentID varchar(20),
        TechParam varchar(50),DeptId varchar(50),DeptName varchar(100),CurePrice Numeric(18,5),SpoilPrice Numeric(18,5),WastePrice Numeric(18,5),Remark varchar(300))
go
--插入顶级树防止出错
if not exists (select TechId from BaseTechTB where TechId='00')
  InSert into  BaseTechTB( TechId,TechCode,TechName,TechParam,ParentId) 
    Values ('00','00','基础工序','','')
go   
    
--生产订单主表 ProOrderHDTB:
if exists (select Id from sysobjects where name='FK_ProOrderDTTB_ProOrderHDTB_ProOrderNo' and type='F')
  Alter Table dbo.ProOrderDTTB Drop Constraint FK_ProOrderDTTB_ProOrderHDTB_ProOrderNo
if exists (select Id from sysobjects where name='FK_ProOrderProTB_ProOrderHDTB_ProOrderNo' and type='F')
  Alter Table dbo.ProOrderProTB Drop Constraint FK_ProOrderProTB_ProOrderHDTB_ProOrderNo
if exists (select Id from sysobjects where name='FK_ProOrderTechTB_ProOrderHDTB_ProOrderNo' and type='F')
  Alter Table dbo.ProOrderTechTB Drop Constraint FK_ProOrderTechTB_ProOrderHDTB_ProOrderNo
if exists (select Id from sysobjects where name='FK_ProOrderMatTB_ProOrderHDTB_ProOrderNo' and type='F')
  Alter Table dbo.ProOrderMatTB Drop Constraint FK_ProOrderMatTB_ProOrderHDTB_ProOrderNo
go  
if exists (select Name from Sysobjects where name='ProOrderHDTB' and type='U')
   Drop Table dbo.ProOrderHDTB
Create Table dbo.ProOrderHDTB
   (AutoId int not null Identity(1,1),AutoNo varchar(100) not null,ProOrderNo varchar(30) not null Primary Key,
    bSelect bit Default(0),MrpDate DateTime not null,bComp bit,Remark varchar(300),
    bPrint bit,PrintNum smallint default(0),
    MakeDate DateTime,MakeMan varchar(20),MakeManName varchar(30),
    EditMan varchar(30),EditManName varchar(30),EditDate datetime,
    AuditFlag Smallint,bMaxAudit bit,AuditManName varchar(50),AuditDate VarChar(100),MaxAuditDate DateTime)

--生产订单从表 ProOrderDTTB:
if exists(select Name from sysobjects where name='ProOrderDTTB' and type='U')
  Drop Table dbo.ProOrderDTTB
Create Table dbo.ProOrderDTTB
    (AutoId int not null Identity(1,1),AutoNo varchar(100) not null primary key,bSelect bit Default(0),bBom varchar(20),
     ProOrderNo varchar(30) not null Constraint FK_ProOrderDTTB_ProOrderHDTB_ProOrderNo Foreign Key(ProOrderNo) References ProOrderHDTB(ProOrderNo),
     ItemID varchar(50) not null,ItemCode varchar(50),ItemPYCode varchar(50),
     ItemName varchar(100),ItemSpc varchar(100),ItemPic varchar(100),Material varchar(100),ItemUnit varchar(10),SubUnit varchar(10),iFlag int,ExchRate numeric(19,6),
     ProType VarChar(100),Color VarChar(50),CompactNO VarChar(50),SaleOrderNo varchar(100),SaleOrderId varchar(100),
     ProduceNum numeric(19,6),AdjustNum Numeric(19,6),WareNum Numeric(19,6),CanUseNum Numeric(19,6),UseNum Numeric(19,6),FinalNum Numeric(19,6),
     BeforeNum Numeric(19,6),MRPResult varchar(100),Remark varchar(200))
     
--生产订单产品表 ProOrderProTB:
if exists(select Name from sysobjects where name='ProOrderProTB' and type='U')
  Drop Table dbo.ProOrderProTB
Create Table dbo.ProOrderProTB
    (AutoId int not null Identity(1,1)  primary key,AutoNo varchar(100) not null,bSelect bit Default(0),PId varchar(1000),CId varchar(1000),
     ProOrderNo varchar(30) not null Constraint FK_ProOrderProTB_ProOrderHDTB_ProOrderNo Foreign Key(ProOrderNo) References ProOrderHDTB(ProOrderNo),
     ItemID varchar(50) not null,ItemCode varchar(50),ItemPYCode varchar(50),
     ItemName varchar(100),ItemSpc varchar(100),ItemPic varchar(100),Material varchar(100),ItemUnit varchar(10),SubUnit varchar(10),iFlag int,ExchRate numeric(19,6),   
     ItemParam varchar(20),ItemSource varchar(20), 
     ProType VarChar(100),Color VarChar(50),CompactNO VarChar(50),SaleOrderNo varchar(100),SaleOrderId varchar(100),bBom varchar(20),
     CpId  varchar(50),CpCode varchar(50),CpName varchar(100),CpProType  VarChar(100),CpNum Numeric(19,6),
     TopId varchar(50),TopCode varchar(50),TopName varchar(100),TopProType  VarChar(100),TopNum Numeric(19,6),
     ProduceNum numeric(19,6),AdjustNum Numeric(19,6),WareNum Numeric(19,6),CanUseNum Numeric(19,6),UseNum Numeric(19,6),FinalNum Numeric(19,6),
     bSum bit,iLevel smallint,BeforeNum Numeric(19,6),MRPResult varchar(100),bDel bit,Remark varchar(200)) 

--生产工艺表 ProOrderTechTB:
if exists(select Name from sysobjects where name='ProOrderTechTB' and type='U')
  Drop Table dbo.ProOrderTechTB
Create Table dbo.ProOrderTechTB
    (AutoId int not null Identity(1,1)  primary key,AutoNo varchar(100) not null,bSelect bit Default(0),
     ProOrderNo varchar(30) not null Constraint FK_ProOrderTechTB_ProOrderHDTB_ProOrderNo Foreign Key(ProOrderNo) References ProOrderHDTB(ProOrderNo),
     ItemID varchar(50) not null,ItemCode varchar(50),ItemPYCode varchar(50),
     ItemName varchar(100),ItemSpc varchar(100),ItemPic varchar(100),Material varchar(100),ItemUnit varchar(10),SubUnit varchar(10),iFlag int,ExchRate numeric(18,5),   
     ItemParam varchar(20),ItemSource varchar(20), 
     ProType VarChar(100),Color VarChar(50),CompactNO VarChar(50),SaleOrderNo varchar(100),SaleOrderId varchar(100),ProOrderProId varchar(100),
     Ordinal Smallint,TechName VarChar(100) not null Default(''),TopTech VarChar(100)  Default(''),NextTech VarChar(100)  Default(''),
     TechParam varchar (50),DeptId VarChar(50),DeptName VarChar(100),bFirst bit,bLast bit,
     CurePrice numeric(18,5),SpoilPrice numeric(18,5),WastePrice numeric(18,5),FinalNum numeric(18,5),bDel bit,Remark varchar(300) 
     )
    
--生产订单物料表 ProOrderMatTB:
if exists(select Name from sysobjects where name='ProOrderMatTB' and type='U')
  Drop Table dbo.ProOrderMatTB
Create Table dbo.ProOrderMatTB
    (AutoId int not null Identity(1,1) primary key,AutoNo varchar(100) not null,bSelect bit Default(0),PId varchar(1000),CId varchar(1000),
     ProOrderNo varchar(30) not null Constraint FK_ProOrderMatTB_ProOrderHDTB_ProOrderNo Foreign Key(ProOrderNo) References ProOrderHDTB(ProOrderNo),
     ItemID varchar(50) not null,ItemCode varchar(50),ItemPYCode varchar(50),
     ItemName varchar(100),ItemSpc varchar(100),ItemPic varchar(100),Material varchar(100),ItemUnit varchar(10),SubUnit varchar(10),iFlag int,ExchRate numeric(19,6),
     ItemParam varchar(20),ItemSource varchar(20),StockMode varchar(20),ReqNo varchar(50),   
     ProType VarChar(100),Color VarChar(50),CompactNO VarChar(50),
     CpId  varchar(50),CpCode varchar(50),CpName varchar(100),CpProType  VarChar(100),CpNum Numeric(19,6),
     TopId varchar(50),TopCode varchar(50),TopName varchar(100),TopProType  VarChar(100),TopNum Numeric(19,6),
     ProduceNum numeric(19,6),AdjustNum Numeric(19,6),WareNum Numeric(19,6),CanUseNum Numeric(19,6),UseNum Numeric(19,6),FinalNum Numeric(19,6),
     DrawDept varchar(20),bSum bit,iLevel Smallint,BeforeNum Numeric(19,6),MRPResult varchar(100),bDel bit,Remark varchar(200))          
  
--生产派工单主表 ProDispatchHDTB
if exists (select * from sysobjects where name='FK_ProDispatchDTTB_ProDispatchHDTB_DispatchNo' and type='F')
  Alter Table dbo.ProDispatchDTTB DROP Constraint FK_ProDispatchDTTB_ProDispatchHDTB_DispatchNo
if exists (select * from sysobjects where name='FK_ProDispatchMatTB_ProDispatchHDTB_DispatchNo' and type='F')
  Alter Table dbo.ProDispatchMatTB DROP Constraint FK_ProDispatchMatTB_ProDispatchHDTB_DispatchNo
if exists(select Name from sysobjects where name='ProDispatchHDTB' and type='U')
  Drop Table dbo.ProDispatchHDTB
Create Table dbo.ProDispatchHDTB
       (AutoID Bigint Identity(1,1),AutoNo varchar(100) not null,bSelect bit default(0),
        DispatchNo varchar(30) not null Primary Key,DispatchDate DateTime,
        DispatchMan varchar(20),DispatchManName varchar(20),bEnd bit,
        ItemID varchar(50),ItemCode varchar(50),ItemName varchar(100),ItemSpc varchar(100),ItemPic varchar(100),Material varchar(100),ItemUnit varchar(10),SubUnit varchar(10),iFlag int,ExchRate numeric(19,6),
        ProType VarChar(100),Color VarChar(50),CompactNO VarChar(50),SaleOrderNo varchar(100),SaleOrderId varchar(100),ProOrderNo varchar(100),ProOrderId varchar(100),
        DispatchNum numeric(19,6),Remark varchar(200),
        bPrint bit,PrintNum smallint default(0),bStop bit,bComplete bit,
		MakeDate DateTime,MakeMan varchar(20),MakeManName varchar(30),
		EditMan varchar(30),EditManName varchar(30),EditDate datetime,
		AuditFlag Smallint,bMaxAudit bit,AuditManName varchar(50),AuditDate VarChar(100),MaxAuditDate DateTime)

--生产派工单从表 ProDispatchDTTB
if exists(select Name from sysobjects where name='ProDispatchDTTB' and type='U')
  Drop Table dbo.ProDispatchDTTB
Create Table dbo.ProDispatchDTTB

    (AutoId Bigint  Identity(1,1)  primary key,AutoNo varchar(100) not null,bSelect bit Default(0),
     DispatchNo varchar(30) not null Constraint FK_ProDispatchDTTB_ProDispatchHDTB_DispatchNo Foreign Key(DispatchNo) References ProDispatchHDTB(DispatchNo),
     ItemID varchar(50) not null,ItemCode varchar(50),ItemPYCode varchar(50),
     ItemName varchar(100),ItemSpc varchar(100),ItemPic varchar(100),Material varchar(100),ItemUnit varchar(10),SubUnit varchar(10),iFlag int,ExchRate numeric(19,6),   
     ItemParam varchar(20),ItemSource varchar(20), 
     ProType VarChar(100),Color VarChar(50),CompactNO VarChar(50),SaleOrderNo varchar(100),SaleOrderId varchar(100),ProOrderNo varchar(100),ProOrderId varchar(100),
     Ordinal Smallint,TechName varchar(100),TopTech VarChar(100),NextTech VarChar(100),TechParam varchar(50),bFirst bit,bLast bit,bTakeMat bit,iNo int,
     EmpId varchar(20),EmpCode varchar(20),EmpName varchar(20),ObjectId varchar(50),ObjectName varchar(100),
     DispatchNum numeric(19,6),ProOrderNum numeric(19,6),RfNum  numeric(19,6),
     PassNum numeric(19,6),PassPrice numeric(19,6),PassMoney numeric(19,6),
     SpoilNum numeric(19,6),SpoilPrice numeric(19,6),SpoilMoney numeric(19,6),
     WasteNum numeric(19,6),WastePrice numeric(19,6),WasteMoney numeric(19,6),
     BackNum Numeric(18,5),bStop bit,bComplete bit,Remark varchar(200)) 
     
--生产派工单物料表 ProDispatchyMatTB
if exists(select Name from sysobjects where name='ProDispatchMatTB' and type='U')
  Drop Table dbo.ProDispatchMatTB
Create Table dbo.ProDispatchMatTB
       (AutoID BigInt Identity(1,1) Primary key,AutoNo varchar(100) not null,DetAutoNo varchar(100),bSelect bit Default(0),
        DispatchNo varchar(30) not null Constraint FK_ProDispatchyMatTB_ProDispatchHDTB_DispatchNo Foreign Key(DispatchNo) References ProDispatchHDTB(DispatchNo),
        TakeObjectId varchar(20),TakeObjectName varchar(100),WareId varchar(20),bTake bit,Dosage numeric(19,6),WasteRate numeric(19,6),SendMode varchar(50),
        ItemID varchar(50) not null,ItemCode varchar(50),ItemName varchar(100),ItemSpc varchar(100),ItemPic varchar(100),Material varchar(100),ItemUnit varchar(10),SubUnit varchar(10),iFlag int,ExchRate numeric(19,6), 
        ProType VarChar(100),Color VarChar(50),CompactNO VarChar(50),SaleOrderNo varchar(100),SaleOrderId varchar(100),ProOrderNo varchar(100),ProOrderId varchar(100),
        pItemId varchar(100),pItemCode varchar(100),pItemName varchar(100),
        TakeNum numeric(19,6),SendNum numeric(19,6),bStop bit,bComplete bit,Remark varchar(300))    
go


--员工生产记录单
if exists (select Id from sysobjects where name='FK_EmpWorkRecordDTTB_EmpWorkRecordHDTB_BillNo' and type='F')
  Alter Table dbo.EmpWorkRecordDTTB DROP Constraint FK_EmpWorkRecordDTTB_EmpWorkRecordHDTB_BillNo
if exists (select name from sysobjects where Name='EmpWorkRecordHDTB' and type='U')
   Drop Table dbo.EmpWorkRecordHDTB
Create Table dbo.EmpWorkRecordHDTB
  (AutoId int not null Identity(1,1),AutoNo varchar(100),bSelect bit Default(0),
   BillNo varchar(100) not null Primary Key,BillDate DateTime,StartDate DateTime,EndDate DateTime,Remark varchar(500),
   bPrint bit,PrintNum smallint default(0),MakeDate DateTime,MakeMan varchar(20),MakeManName varchar(30),
   EditMan varchar(30),EditManName varchar(30),EditDate datetime,AuditFlag Smallint,bMaxAudit bit,AuditManName varchar(50),
   AuditDate VarChar(100),MaxAuditDate DateTime)   
go


if exists (select name from sysobjects where Name='EmpWorkRecordDTTB' and type='U')
   Drop Table dbo.EmpWorkRecordDTTB
Create Table dbo.EmpWorkRecordDTTB
  (AutoId int not null Identity(1,1)  primary key,AutoNo varchar(100),bSelect bit Default(0),
   BillNo varchar(100) not null Constraint FK_EmpWorkRecordDTTB_EmpWorkRecordHDTB_BillNo Foreign Key(BillNo) References EmpWorkRecordHDTB(BillNo),
   BillDate DateTime,SourceNo varchar(100),SourceAutoNo varchar(100),CompactNo varchar(100),
   ItemID varchar(50) not null,ItemCode varchar(100),ItemPYCode varchar(100),ItemName varchar(500),ItemSpc varchar(500),ItemPic varchar(500),ItemUnit varchar(10),SubUnit varchar(10),iFlag int,ExchRate numeric(19,6),
   EmpId varchar(100),EmpCode varchar(100),EmpName VarChar(100),MainNum Numeric(18,5),
   ProOrderNo varchar(100),ProOrderId varchar(100),DispatchNo varchar(100),DispatchId varchar(100),
   Remark varchar(500)
   )   
go




/*------------------------------车间模块------------------------------*/



--调拔单主表(ItemMoveHDTB):
if exists (select * from sysobjects where name='FK_ItemMoveDTTB_ItemMoveHDTB_MoveNO' and type='F')
  Alter Table dbo.ItemMoveDTTB DROP Constraint FK_ItemMoveDTTB_ItemMoveHDTB_MoveNO
if exists (select * from sysobjects where name='FK_ItemMoveDT2TB_ItemMoveHDTB_MoveNO' and type='F')
  Alter Table dbo.ItemMoveDT2TB DROP Constraint FK_ItemMoveDT2TB_ItemMoveHDTB_MoveNO
go  
if exists(select Name from sysobjects where name='ItemMoveHDTB' and type='U')
  Drop Table dbo.ItemMoveHDTB
Create Table dbo.ItemMoveHDTB   
       (AutoNo varchar(100) not null,MoveNo varchar(50) not null Primary Key,bSelect bit default(0),MKindId varchar(50) not null,MoveDate datetime not null,OutWare varchar(20) not null,InWare varchar(20) not null,
        AcceptId varchar(30),SendId varchar(30),SourceNo varchar(30),
        bPrint bit default(0),PrintNum int,SubjoinNo varchar(50),SubjoinTableId varchar(50),
        MakeDate DateTime Default(getdate()),MakeMan varchar(20),MakeManName varchar(30),
        AuditFlag Smallint default(0),AuditMan varchar(50),AuditManName varchar(50),AuditDate varchar(80),bMaxAudit bit,MaxAuditDate DateTime,EditMan varchar(30),EditManName varchar(30),EditDate DateTIme,
        FinaMan varchar(20),FinaDate datetime,YearMon varchar(6),PzWord varchar(50),PzNo varchar(50),PzId varchar(50),Remark varchar(500))


--调拔单从表(ItemMoveDTTB):
if exists(select Name from sysobjects where name='ItemMoveDTTB' and type='U')
  Drop Table dbo.ItemMoveDTTB
Create Table dbo.ItemMoveDTTB
       (AutoNo varchar(100) not null primary key,MoveNo varchar(50) not null Constraint FK_ItemMoveDTTB_ItemMoveHDTB_MoveNO Foreign Key(MoveNo) References ItemMoveHDTB(MoveNo),
        ItemId varchar(30) not null ,ItemCode varchar(30) not null,ItemName varchar(100),ItemSpc varchar(100),ItemPic varchar(100),
        ItemUnit varchar(10),SubUnit varchar(10),ItemPYCode varchar(50),iFlag int,ExchRate numeric(19,6),      
        OutWare varchar(20),InWare varchar(20),ProType varchar(100),InProType varchar(100),Color varchar(100),InColor varchar(100),BatchNo varchar(30),InBatchNo varchar(30),
        PlaceNo varchar(30),InPlaceNo varchar(30),CompactNo varchar(100),InCompactNo varchar(100),ObjectId varchar(30),InObjectId varchar(30),SjNo varchar(30),InSjNo varchar(30),
        sOrderNo varchar(30),InsOrderNo varchar(30),Ordinal Smallint,TechName varchar(100),InTechName varchar(100),InDate varchar(30),InInDate varchar(30),PState varchar(30),InPState varchar(30),TempNo varchar(30),InTempNo varchar(30),
        EmpId varchar(50),EmpName varchar(50),TopTech varchar(100),bDelTech  bit,bFirst  bit,bLast  bit,        
        MoveNum numeric(19,6),MovePrice numeric(19,6),TaxPrice numeric(19,6),MoveMoney numeric(19,6),
        SubNum numeric(19,6),SubPrice numeric(19,6),SubTaxPrice numeric(19,6),SubMoney numeric(19,6),
        SpoilWareId varchar(50) Default(''),SpoilNum numeric(19,6),SpoilPrice numeric(19,6),SpoilMoney numeric(19,6),
        WasteWareId varchar(50) Default(''),WasteNum numeric(19,6),WastePrice numeric(19,6),WasteMoney numeric(19,6),
        ScrapWareId varchar(50) Default(''),ScrapNum Numeric(19,6),ScrapPrice Numeric(19,6),ScrapMoney Numeric(19,6),
        TaxRate numeric(19,6),TaxMoney numeric(19,6),AllMoney numeric(19,6),Weight Numeric(18,5),
        TopId varchar(30),TopCode varchar(50),TopName varchar(100),TopDosage Numeric(19,6),CpId varchar(30),CpCode varchar(50),CpName varchar(100),
        pItemId varchar(100),pItemCode varchar(100),pItemName varchar(100),pDosage Numeric(18,5),RfNum Numeric(18,5),
        SaleOrderNo varchar(100),SaleOrderId varchar(100),MrpNo varchar(20),MrpID varchar(100),TicketNo varchar(20),TicketID varchar(100),
        ProOrderNo varchar(100) Default(''),ProOrderId varchar(100) Default(''),DispatchNo varchar(100),DispatchId varchar(100),
        Remark varchar(500) 
        )

--调拔单从从表(ItemMoveDT2TB):
  
if exists(select Name from sysobjects where name='ItemMoveDT2TB' and type='U')
  Drop Table dbo.ItemMoveDT2TB
Create Table dbo.ItemMoveDT2TB
       (AutoNo varchar(100) not null primary key,MoveNo varchar(50) not null Constraint FK_ItemMoveDT2TB_ItemMoveHDTB_MoveNO Foreign Key(MoveNo) References ItemMoveHDTB(MoveNo),DetAutoNo varchar(100),
        ItemId varchar(30) not null,ItemCode varchar(30) not null,ItemName varchar(100),ItemSpc varchar(100),ItemPic varchar(100),
        ItemUnit varchar(10),SubUnit varchar(10),ItemPYCode varchar(50),iFlag int,ExchRate numeric(19,6),
        ProType varchar(100),Color varchar(100),BatchNo varchar(30),PlaceNo varchar(30),CompactNo varchar(100),ObjectId varchar(30),
        SjNo varchar(30),sOrderNo varchar(30),Ordinal Smallint,TechName varchar(100),InDate varchar(30),PState varchar(30),TempNo varchar(30),
        Dosage Numeric(19,6),WasteRate Numeric(19,6),TopTech VarChar(100),NextTech varchar(100),
        MoveNum numeric(19,6),MovePrice numeric(19,6),TaxPrice numeric(19,6),MoveMoney numeric(19,6), 
        SubNum numeric(19,6),SubPrice numeric(19,6),SubTaxPrice numeric(19,6),SubMoney numeric(19,6),
        TaxRate numeric(19,6),TaxMoney numeric(19,6),AllMoney numeric(19,6),
        Remark varchar(300)
        )


/*------------------------------账款模块------------------------------*/


--应付期初表
if exists(Select Name from SysObjects where Name='StockAccountTB')
   Drop Table dbo.StockAccountTB
Create Table dbo.StockAccountTB
       (AutoId int Identity(1,1) not null Primary Key,AccountNo VarChar(20) not null,AccountFlag varchar(30),PrvId VarChar(20) not null,
        FirstM Numeric(18,5),StockM Numeric(18,5),BackM Numeric(18,5),DebitM Numeric(18,5),CreditM Numeric(18,5),LastM Numeric(18,5),
        MakeMan VarChar(20),MakeManName VarChar(20),MakeDate DateTime)
Alter Table dbo.StockAccountTB add Constraint Un_StockAccountTB Unique(AccountNo,PrvId)

  
     
--应付记账主表
if exists (select * from sysobjects where name='FK_StockInvoiceDTTB_StockInvoiceHDTB_InvoiceNO' and type='F')
  Alter Table dbo.StockInvoiceDTTB DROP Constraint FK_StockInvoiceDTTB_StockInvoiceHDTB_InvoiceNO
if exists(select Name from sysobjects where name='StockInvoiceHDTB' and type='U')
  Drop Table dbo.StockInvoiceHDTB
Create Table dbo.StockInvoiceHDTB
       (AutoID Bigint Identity(1,1) not null,InvoiceNo varchar(20) not null Primary Key,SourceDate DateTime,InvoiceDate DateTime not null,SignFlag smallint not null,
        BillKind varchar(30),PrvId varchar(20) not null,EmpId varchar(20),PayMode varchar(30),CompactNo VarChar(50),SubjoinNo varchar(20),bSelect bit default(0),Remark varchar(300),
        bPrint bit,PrintNum Smallint,MakeDate DateTime,MakeMan varchar(20),MakeManName varchar(30),EditMan varchar(30),EditManName varchar(30),EditDate datetime,
        AuditFlag Smallint default(0),bMaxAudit bit,AuditManName varchar(50),AuditDate VarChar(100),MaxAuditDate DateTime
        )


--应付记账从表
if exists(select Name from sysobjects where name='StockInvoiceDTTB' and type='U')
  Drop Table dbo.StockInvoiceDTTB
Create Table dbo.StockInvoiceDTTB
       (AutoID Bigint Identity(1,1) not null primary key,AutoNo varchar(100),
        InvoiceNO varchar(20) not null Constraint FK_StockInvoiceDTTB_StockInvoiceHDTB_InvoiceNO Foreign Key(InvoiceNO) References StockInvoiceHDTB(InvoiceNO),
        ItemID varchar(30) not null,ItemCode varchar(30) not null,ItemPYCode varchar(50),
        ItemName varchar(100),ItemSpc varchar(100),ItemPic varchar(100),ItemUnit varchar(10),SubUnit varchar(10),iFlag int,ExchRate numeric(19,6),
        ProType varchar(100),Color varchar(100),BatchNo varchar(30),PlaceNo varchar(30),CompactNo varchar(100),ObjectId varchar(30),
        SjNo varchar(30),sOrderNo varchar(30),TechName varchar(100),InDate varchar(30),PState varchar(30),TempNo varchar(30),
        InvoiceNum numeric(18,5) not null,InvoicePrice numeric(18,5) not null,TaxPrice Numeric(18,5),InvoiceMoney numeric(18,5),
        SubNum Numeric(18,5),SubPrice Numeric(18,5),SubTaxPrice Numeric(18,5),SubMoney Numeric(18,5),TaxRate Numeric(18,5),TaxMoney numeric(18,5),AllMoney numeric(18,5),
        OrderNo varchar(30),OrderId varchar(100),SendNo varchar(30),SendId varchar(100),IoNo varchar(30),IoId varchar(100), Remark varchar(300)
        )
        
go


--付款单主表
if exists (select * from sysobjects where name='FK_StockPayDTTB_StockPayHDTB_PayNO' and type='F')
  Alter Table dbo.StockPayDTTB DROP Constraint FK_StockPayDTTB_StockPayHDTB_PayNO
if exists(select Name from sysobjects where name='StockPayHDTB' and type='U')
  Drop Table dbo.StockPayHDTB
Create Table dbo.StockPayHDTB
       (AutoID Bigint Identity(1,1) not null,PayNO varchar(20) not null Primary Key,PayDate DateTime not null,BillKind varchar(30) not null,SignFlag smallint  not null,
        PrvId varchar(20) not null,EmpId varchar(20),PayMode varchar(30),PayMoney Numeric(18,5) not null,FactMoney numeric(18,5) not null,
        CompactNo VarChar(50),SubjoinNo varchar(20),bSelect bit default(0),Remark varchar(400),
        AccName nvarchar(50),CNItemName nvarchar(200),
        bPrint bit,PrintNum Smallint,MakeDate DateTime,MakeMan varchar(20),MakeManName varchar(30),EditMan varchar(30),EditManName varchar(30),EditDate datetime,
        AuditFlag Smallint default(0),bMaxAudit bit,AuditManName varchar(50),AuditDate VarChar(100),MaxAuditDate DateTime)


--付款单从表
if exists(select Name from sysobjects where name='StockPayDTTB' and type='U')
  Drop Table dbo.StockPayDTTB
Create Table dbo.StockPayDTTB
       (AutoID Bigint Identity(1,1) not null primary key,AutoNo varchar(100),
        PayNO varchar(20) not null Constraint FK_StockPayDTTB_StockPayHDTB_PayNO Foreign Key(PayNO) References StockPayHDTB(PayNO),
        InvoiceNo varchar(20) not null,InvoiceId varchar(100),CompactNo VarChar(50),bPrint bit,bPay bit Default(0),
        InvoiceMoney Numeric(18,5) not null,HasPayMoney Numeric(18,5) not null,NoPayMoney Numeric(18,5),NowPayMoney Numeric(18,5),Remark varchar(300)
        )
 
--应收期初表
if exists(Select Name from SysObjects where Name='SaleAccountTB')
   Drop Table dbo.SaleAccountTB
Create Table dbo.SaleAccountTB
       (AutoId int Identity(1,1) not null Primary Key,
        AccountNo VarChar(20) not null,AccountFlag varchar(30),CustId VarChar(20) not null,
        FirstM Numeric(18,5),SaleM Numeric(18,5),BackM Numeric(18,5),DebitM Numeric(18,5),CreditM Numeric(18,5),LastM Numeric(18,5),
        MakeMan VarChar(20),MakeManName VarChar(20),MakeDate DateTime)
Alter Table dbo.SaleAccountTB add Constraint Un_SaleAccountTB Unique(AccountNo,CustId)

  
     
--应收记账主表
if exists (select * from sysobjects where name='FK_SaleInvoiceDTTB_SaleInvoiceHDTB_InvoiceNO' and type='F')
  Alter Table dbo.SaleInvoiceDTTB DROP Constraint FK_SaleInvoiceDTTB_SaleInvoiceHDTB_InvoiceNO
if exists(select Name from sysobjects where name='SaleInvoiceHDTB' and type='U')
  Drop Table dbo.SaleInvoiceHDTB
Create Table dbo.SaleInvoiceHDTB
       (AutoID Bigint Identity(1,1) not null,InvoiceNo varchar(20) not null Primary Key,SourceDate DateTime,InvoiceDate DateTime not null,SignFlag smallint not null,
        BillKind varchar(30),CustId varchar(20) not null,EmpId varchar(20),PayMode varchar(30),CompactNo VarChar(50),SubjoinNo varchar(20),bSelect bit default(0),Remark varchar(300),
        bPrint bit,PrintNum Smallint,MakeDate DateTime,MakeMan varchar(20),MakeManName varchar(30),EditMan varchar(30),EditManName varchar(30),EditDate datetime,
        AuditFlag Smallint default(0),bMaxAudit bit,AuditManName varchar(50),AuditDate VarChar(100),MaxAuditDate DateTime
        )


--应收记账从表
if exists(select Name from sysobjects where name='SaleInvoiceDTTB' and type='U')
  Drop Table dbo.SaleInvoiceDTTB
Create Table dbo.SaleInvoiceDTTB
       (AutoID Bigint Identity(1,1) not null primary key,AutoNo varchar(100),
        InvoiceNO varchar(20) not null Constraint FK_SaleInvoiceDTTB_SaleInvoiceHDTB_InvoiceNO Foreign Key(InvoiceNO) References SaleInvoiceHDTB(InvoiceNO),
        ItemID varchar(30) not null,ItemCode varchar(30) not null,ItemPYCode varchar(50),
        ItemName varchar(100),ItemSpc varchar(100),ItemPic varchar(100),ItemUnit varchar(10),SubUnit varchar(10),iFlag int,ExchRate numeric(19,6),
        ProType varchar(100),Color varchar(100),BatchNo varchar(30),PlaceNo varchar(30),CompactNo varchar(100),ObjectId varchar(30),
        SjNo varchar(30),sOrderNo varchar(30),TechName varchar(100),InDate varchar(30),PState varchar(30),TempNo varchar(30),
        InvoiceNum numeric(18,5) not null,InvoicePrice numeric(18,5) not null,TaxPrice Numeric(18,5),InvoiceMoney numeric(18,5),
        SubNum Numeric(18,5),SubPrice Numeric(18,5),SubTaxPrice Numeric(18,5),SubMoney Numeric(18,5),TaxRate Numeric(18,5),TaxMoney numeric(18,5),AllMoney numeric(18,5),
        OrderNo varchar(30),OrderId varchar(100),SendNo varchar(30),SendId varchar(100),IoNo varchar(30),IoId varchar(100), Remark varchar(300)
        )

--收款单主表
if exists (select * from sysobjects where name='FK_SalePayDTTB_SalePayHDTB_PayNO' and type='F')
  Alter Table dbo.SalePayDTTB DROP Constraint FK_SalePayDTTB_SalePayHDTB_PayNO
if exists(select Name from sysobjects where name='SalePayHDTB' and type='U')
  Drop Table dbo.SalePayHDTB
Create Table dbo.SalePayHDTB
       (AutoID Bigint Identity(1,1) not null,PayNO varchar(20) not null Primary Key,PayDate DateTime not null,BillKind varchar(30) not null,SignFlag smallint  not null,
        CustId varchar(20) not null,EmpId varchar(20),PayMode varchar(30),PayMoney Numeric(18,5) not null,FactMoney numeric(18,5) not null,
        InvoiceId varchar(100),CompactNo VarChar(50),SubjoinNo varchar(20),bSelect bit default(0),Remark varchar(400),
        AccName nvarchar(50),CNItemName nvarchar(200),
        bPrint bit,PrintNum Smallint,MakeDate DateTime,MakeMan varchar(20),MakeManName varchar(30),EditMan varchar(30),EditManName varchar(30),EditDate datetime,
        AuditFlag Smallint default(0),bMaxAudit bit,AuditManName varchar(50),AuditDate VarChar(100),MaxAuditDate DateTime)


--收款单从表
if exists(select Name from sysobjects where name='SalePayDTTB' and type='U')
  Drop Table dbo.SalePayDTTB
Create Table dbo.SalePayDTTB
       (AutoID Bigint Identity(1,1) not null primary key,AutoNo varchar(100),
        PayNO varchar(20) not null Constraint FK_SalePayDTTB_SalePayHDTB_PayNO Foreign Key(PayNO) References SalePayHDTB(PayNO),
        InvoiceNo varchar(20) not null,CompactNo VarChar(50),bPrint bit,bPay bit Default(0),
        InvoiceMoney Numeric(18,5) not null,HasPayMoney Numeric(18,5) not null,NoPayMoney Numeric(18,5),NowPayMoney Numeric(18,5),Remark varchar(300)
        )
  
  
  
  
 --出纳账户
if exists (select * from sysobjects where name='FK_CNBillTB_CNAccNameTB_AccName' and type='F')
  Alter Table dbo.CNBillTB DROP Constraint FK_CNBillTB_CNAccNameTB_AccName 
if exists(select Name from sysobjects where name='CNAccNameTB' and type='U')
  Drop Table dbo.CNAccNameTB
Create Table dbo.CNAccNameTB
   (AutoID int Identity(1,1) not null,bSelect bit Default(0),AccName varchar(50) not null Primary Key,
    AccKind varchar(50),BankName varchar(100),BankId varchar(50),CurName varchar(20),AccSubjectId varchar(50),Remark varchar(300),
    MakeDate DateTime ,MakeMan varchar(20),MakeManName varchar(20)
    )

go

 --收支项目
if exists(select Name from sysobjects where name='CNItemTB' and type='U')
  Drop Table dbo.CNItemTB
Create Table dbo.CNItemTB
   (AutoID int Identity(1,1) not null ,ID varchar(50) not null,ParentId varchar(50) not null,bSelect bit Default(0),CNItemName varchar(200) not null Primary Key,
    sFlag varchar(10),iFlag Smallint,FZObject varchar(50),AccSubjectId varchar(50),Remark varchar(300),MakeDate DateTime ,MakeMan varchar(20),MakeManName varchar(20)
    )

go
--插入顶级树防止出错
if not exists (select ID from CNItemTB where ID='000')
  InSert into  CNItemTB (ID,CNItemName,sFlag,iFlag,ParentId,Remark) 
    Values ('000','收支项目','',0,'','')
    

 --常用摘要
if exists(select Name from sysobjects where name='CWRemarkTB' and type='U')
  Drop Table dbo.CWRemarkTB
Create Table dbo.CWRemarkTB
   (AutoID int Identity(1,1) not null  Primary Key,bSelect bit Default(0),CWRemark varchar(500))

go

 --核算项目
if exists(select Name from sysobjects where name='AccItemTB' and type='U')
  Drop Table dbo.AccItemTB
Create Table dbo.AccItemTB
   (AutoID int Identity(1,1) not null  Primary Key,bSelect bit Default(0),ItemName varchar(200),Remark varchar(500))

go


--出纳月结表
if exists(Select Name from SysObjects where Name='CNAccountTB')
   Drop Table dbo.CNAccountTB
Create Table dbo.CNAccountTB
       (AutoId int Identity(1,1) not null Primary Key,
        AccountNo VarChar(20) not null,AccountFlag varchar(30),AccName VarChar(100) not null,
        FirstM Numeric(18,5),DebitM Numeric(18,5),CreditM Numeric(18,5),LastM Numeric(18,5),
        MakeMan VarChar(20),MakeManName VarChar(20),MakeDate DateTime)
Alter Table dbo.CNAccountTB add Constraint Un_CNAccountTB Unique(AccountNo,AccName)
go

--出纳记账表(CNBillTB)
if exists(select Name from sysobjects where name='CNBillTB' and type='U')
  Drop Table dbo.CNBillTB
Create Table dbo.CNBillTB
       (AutoID int Identity(1,1) not null primary key,bSelect bit default(0),AutoNo varchar(100),CWZTNo varchar(20),CNKind varchar(20),
        AccName varchar(50) not null Constraint FK_CNBillTB_CNAccNameTB_AccName Foreign Key(AccName) References CNAccNameTB(AccName),
        BillDate DateTime not null,BillNo varchar(50),CNItemName varchar(200) not null,iFlag smallint,sFlag varchar(10),CNMoney numeric(18,5),
        FZObjectId varchar(50),FZObjectName varchar(100),HandMan varchar(50),HandManName varchar(100),AccSubjectId varchar(50),
        PayMode varchar(50),PayDate DateTime,VoucherWord varchar(30),VoucherNo varchar(30),VoucherId varchar(50),YearMon varchar(6),Remark varchar(500),
		CNMoveNo varchar(100),CNMoveId varchar(100),PZNo varchar(50),bOtherToCN bit,SubJoinNo Nvarchar(100),bBorrow bit,
		bPrint bit,PrintNum smallint default(0),
		MakeDate DateTime,MakeMan varchar(20),MakeManName varchar(30),
		EditMan varchar(30),EditManName varchar(30),EditDate datetime,
		AuditFlag Smallint,bMaxAudit bit,AuditManName varchar(50),AuditDate VarChar(100),MaxAuditDate DateTime,
		bCheck bit,CheckMan varchar(30),CheckManName varchar(30),CheckDate datetime
		)
go  

--出纳转账(CNMoveTB)
if exists(select Name from sysobjects where name='CNMoveTB' and type='U')
  Drop Table dbo.CNMoveTB
Create Table dbo.CNMoveTB
       (AutoID int Identity(1,1) not null primary key,bSelect bit default(0),AutoNo varchar(100),CWZTNo varchar(20),
        BillNo varchar(50),BillDate DateTime not null,CNMoveMoney numeric(18,5),bBorrow bit,CarNo varchar(50),
        OutCNKind varchar(20),OutAccName varchar(50) not null Constraint FK_CNMoveTB_CNAccNameTB_OutAccName Foreign Key(OutAccName) References CNAccNameTB(AccName),
        OutCNItemName varchar(200) not null,OutFZObjectId varchar(50),OutFZObjectName varchar(100),
        OutHandMan varchar(50),OutHandManName varchar(100),OutAccSubjectId varchar(50),OutPzNo varchar(50),OutRemark varchar(500),  
        InCNKind varchar(20),InAccName varchar(50) not null Constraint FK_CNMoveTB_CNAccNameTB_InAccName Foreign Key(InAccName) References CNAccNameTB(AccName),
        InCNItemName varchar(200) not null,InFZObjectId varchar(50),InFZObjectName varchar(100),
        InHandMan varchar(50),InHandManName varchar(100),InAccSubjectId varchar(50),InPzNo varchar(50),InRemark varchar(500),
        PayMode varchar(50),PayDate DateTime,VoucherWord varchar(30),VoucherNo varchar(30),VoucherId varchar(50),YearMon varchar(6),
		bPrint bit,PrintNum smallint default(0),
		MakeDate DateTime,MakeMan varchar(20),MakeManName varchar(30),
		EditMan varchar(30),EditManName varchar(30),EditDate datetime,
		AuditFlag Smallint,bMaxAudit bit,AuditManName varchar(50),AuditDate VarChar(100),MaxAuditDate DateTime,
		bCheck bit,CheckMan varchar(30),CheckManName varchar(30),CheckDate datetime
		)
go
  
        
        
--预设消息设置
if exists(select Name from sysobjects where name='PreSendMsgTB' and type='U')
  Drop Table dbo.PreSendMsgTB
Create Table dbo.PreSendMsgTB
       (AutoId int Identity(1,1) not null Primary Key,SendId varchar(100) not null,FMId varchar(50) ,FMName VarChar(50),
        AcitonKind varchar(100) not null,Title1 varchar(100),Title2 varchar(100),Content1 varchar(1000),Content2 varchar(500),
        bStart bit default(1),Remark varchar(100))

--预设消息设置人员列表
if exists(select Name from sysobjects where name='PreSendMsgEmpTB' and type='U')
  Drop Table dbo.PreSendMsgEmpTB
Create Table dbo.PreSendMsgEmpTB
       (AutoId int Identity(1,1) not null Primary Key,SendId varchar(100) not null,AcitonKind varchar(100) not null,UserId varchar(50) ,UserName VarChar(50),
        DeptName varchar(50),Remark varchar(100))

go

--通知公告表
if exists(select Name from sysobjects where name='SysInformTB' and type='U')
  Drop Table dbo.SysInformTB
Create Table dbo.SysInformTB
  (AutoId int Identity(1,1),InformTitle varchar(200),InformContent varchar(1000),SendName varchar(20),SendDate DateTime,bTop bit Default(0))
  
go



--系统预警表
if exists(select Name from sysobjects where name='SysNoticeTB' and type='U')
  Drop Table dbo.SysNoticeTB
Create Table dbo.SysNoticeTB
       (AutoId int Identity(1,1) not null Primary Key,NoticeKind varchar(100) not null,FMId varchar(50) ,FMName VarChar(50),
        NoticeContent varchar(2000),bStart bit default(1),bAllOpen bit Default(1),SqlText varchar(8000),
        EmpId varchar(500) ,EmpName VarChar(500),Remark varchar(100))
go   


--系统预警表人员列表
if exists(select Name from sysobjects where name='SysNoticeEmpTB' and type='U')
  Drop Table dbo.SysNoticeEmpTB
Create Table dbo.SysNoticeEmpTB
       (AutoId int Identity(1,1) not null Primary Key,NoticeKind varchar(100) not null,UserId varchar(50) ,UserName VarChar(50),
        DeptName varchar(50),Remark varchar(100))

go
     
     
/*------------------------------视图------------------------------*/       

--这个函数放前面
if exists (select Name from sysobjects where name='IsZero' and type='FN')
  Drop function dbo.IsZero
go
create function IsZero(@Num1 real,@Num2 real)
returns real
as
begin
  declare @Re real
  set @Re=@Num1
  if @Num1=0 
    set @Re=@Num2
  return (@Re)
end
go

if exists(select Name from sysobjects where name='IsNegative' and type='FN')
  drop function dbo.IsNegative
go
create function dbo.IsNegative(@Num1 real,@Num2 real)
returns real
as
begin
  declare @Re real
  set @Re=@Num1
  if @Num1<0 
    set @Re=@Num2
  return (@Re)
end
go


--将随机数存到视图中 这样其他函数就可以引用
if object_id('vwRandom') is not null
 drop view vwRandom
go
create view vwRandom
as
  select iRandom=rand()
go


--往来对象
if exists (Select Name from SysObjects where Name='vwObject' and type='V')
 drop View dbo.vwObject
go
Create View dbo.vwObject
as
  Select  ObjectID=CustID,ObjectCode=CustCode,ObjectPYCode=CustPYCode,ObjectName=CustName,ObjectLinkMan=LinkMan,ObjectMobile=Mobile,ObjectTel=Tel,ObjectFax=Fax from CustTB
  Union all
  select ObjectID=PrvID,ObjectCode=PrvCode,ObjectPYCode=PrvPYCode,ObjectName=PrvName,ObjectLinkMan=LinkMan,ObjectMobile=Mobile,ObjectTel=Tel,ObjectFax=Fax from ProviderTB
  Union all
  select ObjectID=DeptID,ObjectCode=DeptCode,ObjectPYCode='',ObjectName=DeptName,ObjectLinkMan='',ObjectMobile='',ObjectTel='',ObjectFax='' from DeptTB
  Union all
  select ObjectID=EmpID,ObjectCode=EmpCode,ObjectPYCode=PYCode,ObjectName=EmpName,ObjectLinkMan='',ObjectMobile='',ObjectTel='',ObjectFax='' from EmployeeTB
go

--往来业务
if exists (Select Name from SysObjects where Name='vwWKind' and type='V')
 drop View dbo.vwWKind
go
Create View dbo.vwWKind
as
  Select  WKindId,WKindName,WFlag from WareKindTB
go

 
 --库存数量
 if exists(select name from sysobjects where name='vwItemStorage' and type='V')
  Drop view dbo.vwItemStorage
go
create view dbo.vwItemStorage
as
   select ItemId,WareNum=Sum(Isnull(WareNum,0)),ItemPrice=Sum(Isnull(WareNum*WarePrice,0))/dbo.IsZero(Sum(Isnull(WareNum,0)),1),ItemMoney=Sum(Isnull(WareNum*WarePrice,0))
    from WareStorageTB a left join WareTB b on a.WareId=b.WareId where b.IsCalcNum=1 Group by ItemId
go
 
 --仓库月结
if exists (select name from sysobjects where name = 'vwWareAccount' and type = 'V')
  drop view dbo.vwWareAccount
go
create view vwWareAccount
as
	select MonthNo, BeginDate, EndDate,bAccount=ISNULL(bAccount,0)
	from FinanceDateTB where MonthNo >=(select WareStartMon from SysParamTB)
go

--出入库单单据
if exists (Select Name from SysObjects where Name='vwInOut' and type='V')
 drop View dbo.vwInOut
go
Create View dbo.vwInOut
as
  Select a.BillDate,b.WareId,b.ItemId,b.ItemCode,ProType=Isnull(b.ProType,''),Color=Isnull(b.Color,''),BatchNo=Isnull(b.BatchNo,''),PlaceNo=Isnull(b.PlaceNo,''),
         CompactNo=Isnull(b.CompactNo,''),ObjectId=Isnull(b.ObjectId,''),SjNo=Isnull(b.SjNo,''),sOrderNo=Isnull(b.sOrderNo,''),TechName=Isnull(b.TechName,''),
         InDate=Isnull(b.InDate,''),PState=Isnull(b.PState,''),TempNo=Isnull(b.TempNo,''),
         InNum=case when a.WFlag=1 then Isnull(b.MainNum,0) else 0 end,InPrice=Case when a.WFlag=1 then Isnull(b.MainPrice,0) else 0 end,
         InMoney=Case when a.WFlag=1 then Isnull(b.MainMoney,0) else 0 end,OutNum=case when a.WFlag=-1 then Isnull(b.MainNum,0) else 0 end,
         OutPrice=Case when a.WFlag=-1 then Isnull(b.MainPrice,0) else 0 end,OutMoney=Case when a.WFlag=-1 then Isnull(b.MainMoney,0) else 0 end
    from WareInOutHDTB a inner join WareInOutDTTB b on a.BillNO=b.BillNO where Isnull(a.bMaxAudit,0)=1
go

 --应付月份视图
if exists (select name from sysobjects where name = 'vwStockAccount' and type = 'V')
  drop view dbo.vwStockAccount
go
create view vwStockAccount
as
	select MonthNo, BeginDate, EndDate,bStockAccount=ISNULL(bStockAccount,0)
	from FinanceDateTB where MonthNo >=(select StockStartMon from SysParamTB)
go

 --应收月份视图
if exists (select name from sysobjects where name = 'vwSaleAccount' and type = 'V')
  drop view dbo.vwSaleAccount
go
create view vwSaleAccount
as
	select MonthNo, BeginDate, EndDate,bSaleAccount=ISNULL(bSaleAccount,0)
	from FinanceDateTB where MonthNo >=(select SaleStartMon from SysParamTB)
go

--出纳月份视图
if exists (select name from sysobjects where name = 'vwCNAccount' and type = 'V')
  drop view dbo.vwCNAccount
go
create view vwCNAccount
as
	select MonthNo, BeginDate, EndDate,bCNAccount=ISNULL(bCNAccount,0)
	from FinanceDateTB where MonthNo >=(select CNStartMon from SysParamTB)
go

--磁贴按钮显示信息
if exists (Select Name from SysObjects where Name='vwMetroInfo' and type='V')
 drop View dbo.vwMetroInfo
go
Create View dbo.vwMetroInfo
as
  Select  Tag='1012',MetroInfo='记录数:'+Convert(varchar(20),COUNT(ItemId)) from ItemTB 
  Union all
  Select  Tag='1203',MetroInfo='未审核数:'+Convert(varchar(20),COUNT(AutoId)) from SaleOrderHDTB where IsNull(bMaxAudit,0)=0
  Union all
  Select  Tag='1204',MetroInfo='未发货:'+Convert(varchar(20),Convert(Numeric(18,2),n.NoSenderNum)) from 
  (select NoSenderNum=Sum(IsNull(b.OrderNum,0)-IsNull(m.SenderNum,0))
   from SaleOrderHDTB a left join SaleOrderDTTB b on a.SaleOrderNo=b.SaleOrderNo
   left join (select SenderNum=SUM(ISNULL(b.SenderNum,0)),b.SaleOrderId  from SaleSenderHDTB a left join SaleSenderDTTB b on a.SenderNo=b.SenderNo
   where  b.SaleOrderId  is not null group by b.SaleOrderId)m on b.AutoNo=m.SaleOrderId 
   where IsNull(b.bStop,0)=0 and IsNull(b.OrderNum,0)>IsNull(m.SenderNum,0)) n
  Union all
  Select  Tag='130304',MetroInfo='未出库:'+Convert(varchar(20),Convert(Numeric(18,2),n.NoOutNum)) from 
  (select NoOutNum=Sum(IsNull(b.SenderNum,0)-IsNull(m.OUtNum,0))
   from SaleSenderHDTB a left join SaleSenderDTTB b on a.SenderNo=b.SenderNo
   left join (select OutNum=SUM(ISNULL(b.MainNum,0)),b.SaleSenderId  from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO
   where a.WKindID='SaleOut' and b.SaleSenderId is not null group by b.SaleSenderId)m on b.AutoNo=m.SaleSenderId 
   where IsNull(b.SenderNum,0)>IsNull(m.OutNum,0)) n
go

/*------------------------------函数------------------------------*/



--14.根据日期取得是属于哪个财务日期
if exists (select name from sysobjects where name = 'fnGetMonth' and type = 'FN')
  drop function dbo.fnGetMonth
go
create function fnGetMonth(@Date datetime) 
   returns varchar(6)
as
begin
	declare @MonthNo varchar(6)
	select @MonthNo =MonthNo from FinanceDateTB where @Date between BeginDate and EndDate
	return (@MonthNo)
end
go


if exists (select * from sysobjects where name='fnGetPY' and type='FN') 
drop function fnGetPY 
go 
create function fnGetPY(@str nvarchar(4000)) 
RETURNS  varchar(500)
as   
  begin   
    declare @strLen int
    declare @index int
    declare @VChControl char(2)
    DECLARE @VChSpell VARCHAR(30)
    declare @return varchar(500)
    set @return=''
    set @strlen=len(@str)
    set @index=1
    while @index<=@strlen
    begin
        select @VChControl=substring(@str,@index,1)
         IF @VChControl>'啊' AND @VChControl<'芭' 
            SELECT @VChSpell='A'
        ELSE IF @VChControl>='芭' AND @VChControl<'擦' 
            SELECT @VChSpell='B'
        ELSE IF @VChControl>='擦' AND @VChControl<'搭' 
            SELECT @VChSpell='C'
        ELSE IF @VChControl>='搭' AND @VChControl<'娥' 
            SELECT @VChSpell='D'
        ELSE IF @VChControl>='娥' AND @VChControl<'发' 
            SELECT @VChSpell='E'
        ELSE IF @VChControl>='发' AND @VChControl<='嘎'
            SELECT @VChSpell='F'
        ELSE IF @VChControl>'嘎' AND @VChControl<'哈' 
            SELECT @VChSpell='G'
        ELSE IF @VChControl>='哈' AND @VChControl<'击' 
            SELECT @VChSpell='H'
        ELSE IF @VChControl>='击' AND @VChControl<'喀'
            SELECT @VChSpell='J'
        ELSE IF @VChControl>='喀' AND @VChControl<'垃' 
            SELECT @VChSpell='K'
        ELSE IF @VChControl>='垃' AND @VChControl<'妈' 
            SELECT @VChSpell='L'
        ELSE IF @VChControl>='妈' AND @VChControl<'拿' 
            SELECT @VChSpell='M'
        ELSE IF @VChControl>='拿' AND @VChControl<'哦' 
            SELECT @VChSpell='N'
        ELSE IF @VChControl>='哦' AND @VChControl<'啪' 
            SELECT @VChSpell='O'
        ELSE IF @VChControl>='啪' AND @VChControl<'期'
            SELECT @VChSpell='P'
        ELSE IF @VChControl>='期' AND @VChControl<'然' 
            SELECT @VChSpell='Q'
        ELSE IF @VChControl>='然' AND @VChControl<'撒' 
            SELECT @VChSpell='R'
        ELSE IF @VChControl>='撒' AND @VChControl<'塌' 
            SELECT @VChSpell='S'
        ELSE IF @VChControl>='塌' AND @VChControl<'挖'
            SELECT @VChSpell='T'
        ELSE IF @VChControl>='挖' AND @VChControl<'昔' 
            SELECT @VChSpell='W'
        ELSE IF @VChControl>='昔' AND @VChControl<'压'
            SELECT @VChSpell='X'
        ELSE IF @VChControl>='压' AND @VChControl<'匝' 
            SELECT @VChSpell='Y'
        ELSE IF @VChControl>='匝' AND @VChControl<='座' 
            SELECT @VChSpell='Z'
        ELSE
            SELECT @VChSpell=@VChControl

        SELECT @return=@return + RTRIM(UPPER(@VChSpell))
        set @index=@index+1
    end
  return(@return)   
end
go

if exists (select * from sysobjects where name='fnStrSplit' and type='TF')
  Drop function fnStrSplit
go
CREATE   function  fnStrSplit(@aString varchar(8000),@pattern varchar(10))   
  returns   @temp   table( sId int IDENTITY(1,1)NOT NULL,StrValues varchar(100))   
--实现split功能的函数   
--说明：@aString，字符串，如"27,28,29";@pattern，分隔标志，如 ","
as     
begin   
      declare   @i   int   
      set   @aString=rtrim(ltrim(@aString))   
      set   @i=charindex(@pattern,@aString)   
      while   @i>=1   
      begin   
              insert   @temp   values(left(@aString,@i-1))   
              set   @aString=substring(@aString,@i+1,len(@aString)-@i)   
              set   @i=charindex(@pattern,@aString)   
      end   
      if   @aString<>''     
            insert   @temp   values(@aString)   
      return     
end   
--SELECT StrValues FROM fnStrSplit('自制,采购',',')
GO

if exists (select * from sysobjects where name='fnGetTimeNo' and type='FN') 
drop function fnGetTimeNo 
go 
create function fnGetTimeNo( @InDateTime DATETIME )
returns varchar(20)
as
begin
  declare @Re varchar(20)

  select @Re=CONVERT(varchar(12) , @InDateTime, 12 )+LEFT(replace(CONVERT(varchar(12) , @InDateTime, 14 ),':',''),8)
  
  return (@Re)
  
  --select dbo.GetDNH(GetDate()) 
end

GO

--根据日期获得带前缀的内码
if exists (select * from sysobjects where name='fnGetAutoNo' and type='FN') 
drop function fnGetAutoNo 
go 
create function fnGetAutoNo(@TableId nvarchar(100), @InDateTime DateTime)
  returns nvarchar(100) 
as 
begin 
    declare @Pre varchar(20),@TableName varchar(20),@TableDesc varchar(50)
	set @Pre='' 
	select @Pre=TablePreFix,@TableName=TableName,@TableDesc=TableDesc from SysTableSetTB where TableId=@TableId

    return @Pre+CONVERT(varchar(20) , @InDateTime, 12 )+Left(replace(CONVERT(varchar(12) , @InDateTime, 14 ),':',''),4)+cast(cast((select iRandom from vwRandom) *100000 as int) as varchar(5))  
	--由 表单前缀+年月日+时分+5位随机数
end
--select dbo.fnGetAutoNo('OtherIn',GetDate())
go

if exists(select name from sysobjects where name='fGetTechRecNo' and type='FN')
    Drop Function dbo.fGetTechRecNo
go
Create function fGetTechRecNo(@TechNo VarChar(30),@Ordinal int) returns Smallint
as
begin
  declare @i int,@Re Smallint,@TempNo int--返回值
  Select @i=1
  Select @TempNo=Count(TechNo) from ItemTechDTTB where TechNO=@TechNO and Ordinal<=@Ordinal

  Return @TempNo
end
go



/*------------------------------存储过程------------------------------*/
--获得树形控件主键编号
if Exists (select Name from Sysobjects Where Name='PrGetTrvId' and type='P')
  Drop Procedure PrGetTrvId
go
Create Procedure PrGetTrvId @sTableId varchar(50),@InId Varchar(30),@iFlag Smallint,@ParentId varchar(30) OutPut,@OutId varchar(30) OutPut
As
begin
  Declare @MaxId  varchar(30)
  if @iFlag=2 --添加下级
  begin
     set @ParentId=@InId 
     --基础工序
     if @sTableId='BaseTechTB'
     select @MaxId=Max(TechId) from BaseTechTB where ParentId=@InId 
     --颜色资料
     if @sTableId='ColorTB'
     select @MaxId=Max(ColorId) from ColorTB where ParentId=@InId 
     if (@MaxId is null) 
        set @MaxId=0
     if @InId='00'  --如果是顶级添加下级则不加父级编号
     begin
       select @OutId=Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))  
     end
     else 
     begin
       select @OutId=@ParentId+Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))
     end
  end
  Print @ParentId
  Print @OutId
end
--exec PrGetTrvId 'BaseTechTB','00',2,'',''   
go

--获得树形编号
if Exists (select Name from Sysobjects Where Name='PrGetTreeId' and type='P')
  Drop Procedure PrGetTreeId
go
Create Procedure PrGetTreeId @InId Varchar(30),@iFlag Smallint,@TableName varchar(50)
As
begin
  Declare @MaxId  varchar(30),@ParentId varchar(30),@OutId varchar(30)
  
  if @iFlag=1  --添加同级 
  begin 
     if @TableName='CNItemTB'
     begin
		 select @ParentId=IsNull(ParentId,'') from CNItemTB where Id=@InId
		 select @MaxId=Max(Id) from CNItemTB where ParentId=@ParentId
	 end
	 	
	 if @ParentId<>'000'
	   select ParentId=@ParentId,OutId=@ParentId+Convert(varchar(30),Right(Convert(Int,@MaxId)+1001,3))
	 else 
	   select ParentId=@ParentId,OutId=Convert(varchar(30),Right(Convert(Int,@MaxId)+1001,3))
  end 
  else if @iFlag=2 --添加下级
  begin
     set @ParentId=@InId 
     if @TableName='CNItemTB'
     begin
		 select @MaxId=Max(Id) from CNItemTB where ParentId=@InId 
		 if (@MaxId is null) 
			set @MaxId=0
	 end
	 if @InId='000'  --如果是顶级添加下级则不加父级编号
	 begin
	   select ParentId=@InId,OutId=Convert(varchar(30),Right(Convert(Int,@MaxId)+1001,3))  
	 end
	 else 
	 begin
	   select ParentId=@InId,OutId=@ParentId+Convert(varchar(30),Right(Convert(Int,@MaxId)+1001,3))
	 end
  end
  --Print @ParentId
  --Print @OutId
end
--exec PrGetTreeId '000',2,'CNItemTB'
go


--获得地区编号
if Exists (select Name from Sysobjects Where Name='PrGetAreaId' and type='P')
  Drop Procedure PrGetAreaId
go
Create Procedure PrGetAreaId @InId Varchar(30),@iFlag Smallint
As
begin
  Declare @MaxId  varchar(30),@ParentId varchar(30),@OutId varchar(30)
  
  if @iFlag=1  --添加同级 
  begin
     select @ParentId=IsNull(ParentId,'') from AreaTB where AreaId=@InId
     select @MaxId=Max(AreaId) from AreaTB where ParentId=@ParentId
     if @ParentId<>'00'
       select ParentId=@ParentId,OutId=@ParentId+Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))
     else 
       select ParentId=@ParentId,OutId=Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))
  end 
  else if @iFlag=2 --添加下级
  begin
     set @ParentId=@InId 
     select @MaxId=Max(AreaId) from AreaTB where ParentId=@InId 
     if (@MaxId is null) 
        set @MaxId=0
     if @InId='00'  --如果是顶级添加下级则不加父级编号
     begin
       select ParentId=@InId,OutId=Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))  
     end
     else 
     begin
       select ParentId=@InId,OutId=@ParentId+Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))
     end
  end
  --Print @ParentId
  --Print @OutId
end
go
--exec PrGetAreaId '',2

--获得仓库编号
if Exists (select Name from Sysobjects Where Name='PrGetWareId' and type='P')
  Drop Procedure PrGetWareId
go
Create Procedure PrGetWareId @InId Varchar(30),@iFlag Smallint,@ParentId varchar(30) OutPut,@OutId varchar(30) OutPut
As
begin
  Declare @MaxId  varchar(30)
  if @iFlag=1  --添加同级 
  begin
     select @ParentId=IsNull(ParentId,'') from WareTB where WareId=@InId
     if (@ParentId<>'') --不是顶级树的可以添加同级树
     begin
         select @MaxId=Max(WareId) from WareTB where ParentId=@ParentId
         if @ParentId<>'00'
           select @OutId=@ParentId+Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))
         else 
           select @OutId=Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))
     end
  end 
  else if @iFlag=2 --添加下级
  begin
     set @ParentId=@InId 
     select @MaxId=Max(WareId) from WareTB where ParentId=@InId 
     if (@MaxId is null) 
        set @MaxId=0
     if @InId='00'  --如果是顶级添加下级则不加父级编号
     begin
       select @OutId=Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))  
     end
     else 
     begin
       select @OutId=@ParentId+Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))
     end
  end
  Print @ParentId
  Print @OutId
end
go
--exec PrGetWareId '01',1,'',''

--获得属性编号
if Exists (select Name from Sysobjects Where Name='PrGetTypeId' and type='P')
  Drop Procedure PrGetTypeId
go
Create Procedure PrGetTypeId @InId Varchar(30),@iFlag Smallint,@ParentId varchar(30) OutPut,@OutId varchar(30) OutPut
As
begin
  Declare @MaxId  varchar(30)
  if @iFlag=1  --添加同级 
  begin
     select @ParentId=IsNull(ParentId,'') from ProTypeTB where TypeId=@InId
     if (@ParentId<>'') --不是顶级树的可以添加同级树
     begin
         select @MaxId=Max(TypeId) from ProTypeTB where ParentId=@ParentId
         if @ParentId<>'00'
           select @OutId=@ParentId+Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))
         else 
           select @OutId=Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))
     end
  end 
  else if @iFlag=2 --添加下级
  begin
     set @ParentId=@InId 
     select @MaxId=Max(TypeId) from ProTypeTB where ParentId=@InId 
     if (@MaxId is null) 
        set @MaxId=0
     if @InId='00'  --如果是顶级添加下级则不加父级编号
     begin
       select @OutId=Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))  
     end
     else 
     begin
       select @OutId=@ParentId+Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))
     end
  end
  Print @ParentId
  Print @OutId
end
go
--exec PrGetTypeId '00',2,'',''

--获得颜色编号
if Exists (select Name from Sysobjects Where Name='PrGetColorId' and type='P')
  Drop Procedure PrGetColorId
go
Create Procedure PrGetColorId @InId Varchar(30),@iFlag Smallint,@ParentId varchar(30) OutPut,@OutId varchar(30) OutPut
As
begin
  Declare @MaxId  varchar(30)
  if @iFlag=1  --添加同级 
  begin
     select @ParentId=IsNull(ParentId,'') from ColorTB where ColorId=@InId
     if (@ParentId<>'') --不是顶级树的可以添加同级树
     begin
         select @MaxId=Max(ColorId) from ColorTB where ParentId=@ParentId
         if @ParentId<>'00'
           select @OutId=@ParentId+Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))
         else 
           select @OutId=Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))
     end
  end 
  else if @iFlag=2 --添加下级
  begin
     set @ParentId=@InId 
     select @MaxId=Max(ColorId) from ColorTB where ParentId=@InId 
     if (@MaxId is null) 
        set @MaxId=0
     if @InId='00'  --如果是顶级添加下级则不加父级编号
     begin
       select @OutId=Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))  
     end
     else 
     begin
       select @OutId=@ParentId+Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))
     end
  end
  Print @ParentId
  Print @OutId
end
go
--exec PrGetColorId '00',2,'',''

--获得供应商类别编号
if Exists (select Name from Sysobjects Where Name='PrGetPrvId' and type='P')
  Drop Procedure PrGetPrvId
go
Create Procedure PrGetPrvId @InId Varchar(30),@iFlag Smallint,@ParentId varchar(30) OutPut,@OutId varchar(30) OutPut
As
begin
  Declare @MaxId  varchar(30)
  if @iFlag=1  --添加同级 
  begin
     select @ParentId=IsNull(ParentId,'') from PrvKindTB where PrvKindId=@InId
     if (@ParentId<>'') --不是顶级树的可以添加同级树
     begin
         select @MaxId=Max(PrvKindId) from PrvKindTB where ParentId=@ParentId
         if @ParentId<>'00'
           select @OutId=@ParentId+Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))
         else 
           select @OutId=Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))
     end
  end 
  else if @iFlag=2 --添加下级
  begin
     set @ParentId=@InId 
     select @MaxId=Max(PrvKindId) from PrvKindTB where ParentId=@InId 
     if (@MaxId is null) 
        set @MaxId=0
     if @InId='00'  --如果是顶级添加下级则不加父级编号
     begin
       select @OutId=Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))  
     end
     else 
     begin
       select @OutId=@ParentId+Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))
     end
  end
  Print @ParentId
  Print @OutId
end
go
--exec PrGetPrvId '00',2,'',''


--获得供应商类别编号
if Exists (select Name from Sysobjects Where Name='PrGetCustId' and type='P')
  Drop Procedure PrGetCustId
go
Create Procedure PrGetCustId @InId Varchar(30),@iFlag Smallint,@ParentId varchar(30) OutPut,@OutId varchar(30) OutPut
As
begin
  Declare @MaxId  varchar(30)
  if @iFlag=1  --添加同级 
  begin
     select @ParentId=IsNull(ParentId,'') from CustKindTB where CustKindId=@InId
     if (@ParentId<>'') --不是顶级树的可以添加同级树
     begin
         select @MaxId=Max(CustKindId) from CustKindTB where ParentId=@ParentId
         if @ParentId<>'00'
           select @OutId=@ParentId+Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))
         else 
           select @OutId=Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))
     end
  end 
  else if @iFlag=2 --添加下级
  begin
     set @ParentId=@InId 
     select @MaxId=Max(CustKindId) from CustKindTB where ParentId=@InId 
     if (@MaxId is null) 
        set @MaxId=0
     if @InId='00'  --如果是顶级添加下级则不加父级编号
     begin
       select @OutId=Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))  
     end
     else 
     begin
       select @OutId=@ParentId+Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))
     end
  end
  Print @ParentId
  Print @OutId
end
go
--exec PrGetCustId '00',2,'',''

--获得供部门编号
if Exists (select Name from Sysobjects Where Name='prGetDeptId' and type='P')
  Drop Procedure prGetDeptId
go
Create Procedure prGetDeptId @InId Varchar(30),@iFlag Smallint,@ParentId varchar(30) OutPut,@OutId varchar(30) OutPut
As
begin
  Declare @MaxId  varchar(30)
  if @iFlag=1  --添加同级 
  begin
     select @ParentId=IsNull(ParentId,'') from DeptTB where DeptId=@InId
     if (@ParentId<>'') --不是顶级树的可以添加同级树
     begin
         select @MaxId=Max(DeptId) from DeptTB where ParentId=@ParentId
         if @ParentId<>'00'
           select @OutId=@ParentId+Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))
         else 
           select @OutId=Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))
     end
  end 
  else if @iFlag=2 --添加下级
  begin
     set @ParentId=@InId 
     select @MaxId=Max(DeptId) from DeptTB where ParentId=@InId 
     if (@MaxId is null) 
        set @MaxId=0
     if @InId='00'  --如果是顶级添加下级则不加父级编号
     begin
       select @OutId=Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))  
     end
     else 
     begin
       select @OutId=@ParentId+Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))
     end
  end
  Print @ParentId
  Print @OutId
end
go
--exec prGetDeptId '00',2,'',''


if Exists (select Name from Sysobjects Where Name='prGetItemKindId' and type='P')
  Drop Procedure prGetItemKindId
go
Create Procedure prGetItemKindId @InId Varchar(30),@iFlag Smallint,@ParentId varchar(30) OutPut,@OutId varchar(30) OutPut
As
begin
  Declare @MaxId  varchar(30)
  if @iFlag=1  --添加同级 
  begin
     select @ParentId=IsNull(ParentId,'') from ItemKindTB where ItemKindId=@InId
     if (@ParentId<>'') --不是顶级树的可以添加同级树
     begin
         select @MaxId=Max(ItemKindId) from ItemKindTB where ParentId=@ParentId
         if @ParentId<>'00'
           select @OutId=@ParentId+Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))
         else 
           select @OutId=Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))
     end
  end 
  else if @iFlag=2 --添加下级
  begin
     set @ParentId=@InId 
     select @MaxId=Max(ItemKindId) from ItemKindTB where ParentId=@InId 
     if (@MaxId is null) 
        set @MaxId=0
     if @InId='00'  --如果是顶级添加下级则不加父级编号
     begin
       select @OutId=Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))  
     end
     else 
     begin
       select @OutId=@ParentId+Convert(varchar(30),Right(Convert(Int,@MaxId)+101,2))
     end
  end
  Print @ParentId
  Print @OutId
end
go
--exec prGetItemKindId '00',2,'',''


--获得带前缀的5位编号
if exists(select Name from sysobjects where Name='prGetFiveNo' and type='P')
  Drop procedure dbo.prGetFiveNo
Go
Create Procedure prGetFiveNo @TableId varchar(20),@FieldName varchar(20),@BillNo varchar(20) Output
as
begin
	declare @Pre varchar(20),@TableName varchar(20),@TableDesc varchar(50) 
	set @BillNo=''
	set @Pre='' 
	select @Pre=TablePreFix,@TableName=TableName,@TableDesc=TableDesc from SysTableSetTB where TableId=@TableId
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
	--print @BillNo
end
go

--exec prGetFiveNo 'ProviderTB','PrvId',''


if exists(select name from sysobjects where name='prGetItemId' and type='p')
  Drop Procedure dbo.prGetItemId
go
create procedure dbo.prGetItemId @KindID varchar(50),@BillNo varchar(20) output

as
declare @TempItem varchar(20)         
set @BillNo=null
set @TempItem=@KindId+'____'
select @BillNo=max(right(ItemId,4)) from ItemTB where ItemId like @TempItem
if (@BillNo is null)
  Set @BillNo='0000'
set @BillNo=@KindId+Right(@BillNo+10001,4)
go

--exec prGetItemId '',''

--获得带前缀的5位编号
if exists(select Name from sysobjects where Name='prGetTableNo' and type='P')
  Drop procedure dbo.prGetTableNo
Go
Create Procedure prGetTableNo @TableId varchar(20),@FieldName varchar(20),@BillNo varchar(20) Output

as
begin
	declare @Pre varchar(20),@TableName varchar(20),@TableDesc varchar(50) 
	set @BillNo=''
	set @Pre='' 
	select @Pre=TablePreFix,@TableName=TableName,@TableDesc=TableDesc from SysTableSetTB where TableId=@TableId
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
	--print @BillNo
end
go

--exec prGetTableNo 'RequireHDTB','ReqNo',''

--根据日期获得带前缀的表单编号(表单编号方案2)
if exists(select Name from sysobjects where Name='prGetTimeNo' and type='P')
  Drop procedure dbo.prGetTimeNo
Go
Create Procedure prGetTimeNo @TableId varchar(20),@FieldName varchar(20)
as
begin
    declare @Pre varchar(20),@TableName varchar(20),@TableDesc varchar(50)
	set @Pre='' 
	select @Pre=TablePreFix,@TableName=TableName,@TableDesc=TableDesc from SysTableSetTB where TableId=@TableId
	if (@Pre='')
	begin
	  raiserror('请先到系统表单中设置该单据前缀',16,1)
	  return
	end

    --Select BillNo=@Pre+dbo.GetDNH(GetDate())
    Select BillNo=@Pre+CONVERT(varchar(12) , GETDATE(), 12 )+Left(replace(CONVERT(varchar(12) , GETDATE(), 14 ),':',''),6)
	--print @BillNo
end
--exec prGetTimeNo 'RequireHDTB','ReqNo'
go

--获得带前缀的5位编号
if exists(select Name from sysobjects where Name='prGetYearNo' and type='P')
  Drop procedure dbo.prGetYearNo
Go
Create Procedure prGetYearNo @TableId varchar(20),@FieldName varchar(20)

as
begin
	declare @Pre varchar(20),@TableName varchar(20),@TableDesc varchar(50),@BillNo varchar(100)
	set @BillNo=''
	set @Pre='' 
	select @Pre=TablePreFix,@TableName=TableName,@TableDesc=TableDesc from SysTableSetTB where TableId=@TableId
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

	select @BillNo=max(right(BillNo,8)) from #GetTableNo where SubString(Right(BillNo,8),1,4)=Year(GetDate()) 
	       
	if (@BillNo is null)
	  set @BillNo= left(CONVERT(varchar(20),GETDATE(),112),4)+'0000'
    set @BillNo=left(@BillNo,4)+right(right(@BillNo,4)+10001,4)
    select BillNo=@Pre+@BillNo
	--print @BillNo
end
--exec prGetYearNo 'SaleOrderHDTB','SaleOrderNo',''
go


if Exists (select Name from Sysobjects Where Name='PrItemQ' and type='P')
  Drop Procedure PrItemQ
go
Create Procedure PrItemQ @sWhere Varchar(2000)
As
begin
  exec(' select * from ItemTB where IsNull(bStop,0)=0 '+@sWhere+' ')
end
--exec PrItemQ ''
go

--产品BOM查找
if Exists (select Name from Sysobjects Where Name='PrItemBomFind' and type='P')
  Drop Procedure PrItemBomFind
go
Create Procedure PrItemBomFind @sWhere Varchar(2000)
As
begin
  exec('select a.ItemId,a.ItemCode,a.ItemSpc,a.ItemName,a.ItemUnit,a.ItemKindId,
		b.MakeManName,b.BillNo,bBom=Case when IsNull(b.BillNo,'''')='''' then ''未建'' else ''已建'' end,b.bVirtual
		from ItemTB a left join ItemBomHDTB b on a.ItemId=b.ItemID
		where a.ItemParam in (''成品'',''半成品'') '+@sWhere+' ')
end
--exec PrItemBomFind ''
go

--产品工艺查找
if Exists (select Name from Sysobjects Where Name='PrItemTechFind' and type='P')
  Drop Procedure PrItemTechFind
go
Create Procedure PrItemTechFind @sWhere Varchar(2000)
As
begin
  exec('select a.ItemId,a.ItemCode,a.ItemSpc,a.ItemName,a.ItemUnit,a.ItemKindId,
		b.MakeManName,b.TechNo,c.BillNo,
		bTech=Case when IsNull(b.TechNo,'''')='''' then '''' else ''是'' end,
		bBom=Case when IsNull(c.BillNo,'''')='''' then '''' else ''是'' end
		from ItemTB a left join ItemTechHDTB b on a.ItemId=b.ItemID
		left join ItemBomHDTB c on a.ItemId=c.ItemId
		where a.ItemParam in (''成品'',''半成品'') '+@sWhere+' ')
end
--exec PrItemTechFind ''
go

--BOM分析
if Exists (select Name from Sysobjects Where Name='PrBomItemQ' and type='P')
  Drop Procedure PrBomItemQ
go
Create Procedure PrBomItemQ @sWhere Varchar(2000)
As
begin
  exec('Select a.BillNo,b.ItemID,b.ItemCode,b.ItemName,b.ItemSpc,b.ItemPic,a.AutoId
		from ItemBomHDTB a left join  ItemTB b on a.ItemID=b.ItemId
		where b.ItemName is not null '+@sWhere+'')

end
--exec PrBomItemQ ''
go

if Exists (select Name from Sysobjects Where Name='PrBomChildQ' and type='P')
  Drop Procedure PrBomChildQ
go
Create Procedure PrBomChildQ @sWhere Varchar(2000)
As
begin
  exec('  Select a.BillNo,b.ChildId,ChildCode=c.ItemCode,ChildName=c.ItemName,ChildSpc=c.ItemSpc,b.Dosage,
          a.ItemID,d.ItemCode,d.ItemName,d.ItemSpc,b.AutoId
          from ItemBomHDTB a left join ItemBomDTTB b on a.BillNo=b.BillNo
          left join ItemTB c on b.ChildId=c.ItemId
		  left join ItemTB d on b.ItemID=d.ItemID
		  where c.ItemName is not null '+@sWhere+'
		  order by b.ItemID,b.ChildId ')

end
--exec PrBomChildQ ''
go

--更新产品工艺上下道工序
if exists(select name from sysobjects where name='prUpdateItemTech' and type='P')
    drop procedure dbo.prUpdateItemTech
go
create procedure dbo.prUpdateItemTech  @TechNo varchar(50)
as
begin
    Declare @MaxRecNo int

    --清空上下道工序信息
    Update ItemTechDTTB set TopTech='',NextTech='',bFirst=0,bLast=0 where TechNo=@TechNo
    --根据工序号更新行号
    Update ItemTechDTTB set RecNo=dbo.fGetTechRecNo(TechNO,Ordinal) where TechNo=@TechNo 
   
    select @MaxRecNo=MAX(RecNo) from ItemTechDTTB where TechNo=@TechNo
    
    --更新首末道标识
    Update ItemTechDTTB  Set bFirst=Case when RecNo=1 then 1 else 0 end,bLast=Case when RecNo=@MaxRecNo then 1 else 0 end where TechNo=@TechNo
    
    --更新下道工序
    Update ItemTechDTTB set NextTech=m.TechName from (select RecNO,TechName from ItemTechDTTB where TechNo=@TechNO)m
    where ItemTechDTTB.TechNo=@TechNo and ItemTechDTTB.RecNO+1=m.RecNo 
    --更新上道工序
    Update ItemTechDTTB set TopTech=m.TechName from (select RecNO,TechName from ItemTechDTTB where TechNo=@TechNO)m
    where ItemTechDTTB.TechNo=@TechNo and ItemTechDTTB.RecNO-1=m.RecNo     
    
    select * from ItemTechDTTB where TechNo=@TechNo
end

--Exec prUpdateItemTech 'GY130905213127'
go

--判断往来单位是否发生业务
if Exists(select Name from sysobjects where name='PrObjectDelCheck' and type='p')
  Drop procedure dbo.PrObjectDelCheck
go
Create Procedure dbo.PrObjectDelCheck @ObjectId varchar(100)
as
begin
	declare @PrintOut varchar(8000)
	Set @PrintOut=''
	
	if Exists (select AutoId from StockOrderHDTB where PrvId=@ObjectId)
	  select @PrintOut=@PrintOut+'采购订单,'
	if Exists (select AutoId from SaleOrderHDTB where CustId=@ObjectId)
	  select @PrintOut=@PrintOut+'销售订单,'
	if Exists (select AutoId from WareInOutHDTB where ObjectID=@ObjectId)
	  select @PrintOut=@PrintOut+'出入库单,'
	if Exists (select AutoNo from ItemMoveHDTB where (AcceptId=@ObjectId or SendId=@ObjectId ))
	  select @PrintOut=@PrintOut+'调拨单,'	  
	if Exists (select AutoId from StockInvoiceHDTB where PrvId=@ObjectId)
	  select @PrintOut=@PrintOut+'应付记账单,'
	if Exists (select AutoId from StockAccountTB where PrvId=@ObjectId)
	  select @PrintOut=@PrintOut+'应付期初登记,'
	if Exists (select AutoId from StockPayHDTB where PrvId=@ObjectId)
	  select @PrintOut=@PrintOut+'付款单,'	
	if Exists (select AutoId from SaleInvoiceHDTB where CustId=@ObjectId)
	  select @PrintOut=@PrintOut+'应收记账单,'
	if Exists (select AutoId from SaleAccountTB where CustId=@ObjectId)
	  select @PrintOut=@PrintOut+'应收期初登记,'
	if Exists (select AutoId from SalePayHDTB where CustId=@ObjectId)
	  select @PrintOut=@PrintOut+'收款单,'	  	  	  	  
	  
	select CheckResult=@PrintOut
end

--exec PrObjectDelCheck 'C10001'
go



--采购订单或销售订单审核自动更新采购或销售价格表
if exists(select Name from sysobjects where Name='prUpdateItemPrice' and type='P')
  Drop procedure dbo.prUpdateItemPrice
Go
Create Procedure prUpdateItemPrice @TableId varchar(20),@BillNo varchar(50)
as
begin
   Declare @bFuHe bit
   
   select @bFuHe=IsNull(bFuHe,0) from WareInOutHDTB where BillNO=@BillNo
   
   --更新采购价格表
   if @TableId='StockIn' 
   begin
       --插入没有的
       InSert into StockPriceTB(PrvId,PrvName,ItemId,ItemCode,ItemName,ItemSpc)
       Select a.ObjectID,c.PrvName,b.ItemID,b.ItemCode,d.ItemName,d.ItemSpc
       from WareInOutHDTB a left join WareInOutDTTB b on a.BillNo=b.BillNo
       left join ProviderTB c on a.ObjectID=c.PrvId
       left join ItemTB d on b.ItemID=d.ItemId
       where a.WKindID='StockIn'  and  a.BillNo=@BillNo and not Exists (select ItemID from StockPriceTB m where a.ObjectID=m.PrvId and b.ItemID=m.ItemId)
      
       --如果是复核的就更新单价否则只更新单重
      
       if @bFuHe=1 
       begin
		   --更新单价
		   Update StockPriceTB  Set MainPrice=m.MainPrice,TaxPrice=m.TaxPrice,TaxRate=m.TaxRate
		   from (select a.ObjectID,b.ItemID,b.MainPrice,b.TaxPrice,b.TaxRate  from WareInOutHDTB a left join WareInOutDTTB b on a.BillNo=b.BillNo and a.BillNo=@BillNo)m
		   where StockPriceTB.PrvId=m.ObjectID and StockPriceTB.ItemId=m.ItemID
       end
       else
       begin
			--更新单重
		   Update StockPriceTB  Set Weight=m.Weight 
		   from (select a.ObjectID,b.ItemID,b.Weight  from WareInOutHDTB a left join WareInOutDTTB b on a.BillNo=b.BillNo and a.BillNo=@BillNo)m
		   where StockPriceTB.PrvId=m.ObjectID and StockPriceTB.ItemId=m.ItemID      
       end    
   end
   --更新销售价格表
   if @TableId='SaleOut' 
   begin
       --插入没有的
       InSert into SalePriceTB(CustId,CustName,ItemId,ItemCode,ItemName,ItemSpc)
       Select a.ObjectID,c.CustName,b.ItemID,b.ItemCode,d.ItemName,d.ItemSpc
       from WareInOutHDTB a left join WareInOutDTTB b on a.BillNo=b.BillNo
       left join CustTB c on a.ObjectID=c.CustId 
       left join ItemTB d on b.ItemID=d.ItemId
       where a.WKindID='SaleOut' and IsNull(b.MainPrice,0)>0 and  a.BillNo=@BillNo and not Exists (select ItemID from SalePriceTB m where a.ObjectID=m.CustId and b.ItemID=m.ItemId)
      
       --更新单价
       Update SalePriceTB  Set MainPrice=m.MainPrice,TaxPrice=m.TaxPrice,TaxRate=m.TaxRate 
       from (select a.ObjectID,b.ItemID,b.MainPrice,b.TaxPrice,b.TaxRate  from WareInOutHDTB a left join WareInOutDTTB b on a.BillNo=b.BillNo and a.BillNo=@BillNo)m
       where SalePriceTB.CustId=m.ObjectID and SalePriceTB.ItemId=m.ItemID 
   end    
end
go

--采购订单查询
if Exists (select Name from Sysobjects Where Name='PrStockOrderQ' and type='P')
  Drop Procedure PrStockOrderQ
go
Create Procedure PrStockOrderQ @sWhere Varchar(2000)
As
begin
  exec('select a.OrderDate,a.StockOrderNo,a.PrvId,d.PrvName,e.EmpName,b.ItemCode,c.ItemName,c.ItemSpc,
		b.OrderNum,b.OrderPrice,b.OrderMoney,b.AllMoney,b.DeliverDate,b.ProType,b.sColor,
		NoInNum=IsNull(b.OrderNum,0)-IsNull(m.InNum,0),InNum=IsNull(m.InNum,0),b.Remark
		from StockOrderHDTB a left join StockOrderDTTB b on a.StockOrderNo=b.StockOrderNo
		left join ItemTB c on b.ItemID=c.ItemId
		left join ProviderTB d on a.PrvId=d.PrvId
		left join EmployeeTB e on a.EmpId=e.EmpId
		left join (select InNum=SUM(ISNULL(b.MainNum,0)),b.StockId from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO
		where a.WKindID=''StockIn'' and b.StockId is not null group by b.StockId)m on b.AutoNO=m.StockId
		where 1=1 '+@sWhere+' order by a.StockOrderNo Desc')
end
--exec PrStockOrderQ ''
go

--销售订单查询
if Exists (select Name from Sysobjects Where Name='PrSaleOrderQ' and type='P')
  Drop Procedure PrSaleOrderQ
go
Create Procedure PrSaleOrderQ @sWhere Varchar(2000)
As
begin
  exec('select a.OrderDate,a.SaleOrderNo,b.CompactNo,a.OrderStyle,a.CustId,d.CustName,e.EmpName,
		b.ItemCode,c.ItemName,c.ItemSpc,b.DeliverDate,b.ProType,b.Color,b.OrderNum,b.OrderPrice,b.OrderMoney,b.AllMoney,
		m.SenderNum,NoSenderNum=ISNULL(b.OrderNum,0)-ISNULL(m.SenderNum,0),
		n.OutNum,NoOutNum=ISNULL(b.OrderNum,0)-ISNULL(n.OutNum,0),
		o.InNum,NoInNum=ISNULL(b.OrderNum,0)-ISNULL(o.InNum,0),
		a.bSubmit,b.Remark
		from SaleOrderHDTB a left join SaleOrderDTTB b on a.SaleOrderNo=b.SaleOrderNo
		left join ItemTB c on b.ItemID=c.ItemId
		left join CustTB d on a.CustId=d.CustId
		left join EmployeeTB e on a.EmpId=e.EmpId
		left join (select SenderNum=SUM(ISNULL(b.SenderNum,0)),b.SaleOrderId from SaleSenderHDTB a left join SaleSenderDTTB b on a.SenderNo=b.SenderNo
		where  b.SaleOrderId is not null group by b.SaleOrderId)m on b.AutoNo=m.SaleOrderId
		left join (select OutNum=SUM(ISNULL(b.MainNum,0)),b.SaleOrderId from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO
		where a.WKindID=''SaleOut'' and b.SaleOrderId is not null group by b.SaleOrderId)n on b.AutoNo=n.SaleOrderId
		left join (select InNum=SUM(ISNULL(b.MainNum,0)),b.SaleOrderId from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO
		where a.WKindID=''ProductIn'' and b.SaleOrderId is not null group by b.SaleOrderId)o on b.AutoNo=o.SaleOrderId
		where 1=1 '+@sWhere+' order by a.SaleOrderNo Desc')
end
--exec PrSaleOrderQ ''
go

--销售发货单查询
if Exists (select Name from Sysobjects Where Name='PrSaleSenderQ' and type='P')
  Drop Procedure PrSaleSenderQ
go
Create Procedure PrSaleSenderQ @sWhere Varchar(2000)
As
begin
  exec('select a.SenderDate,a.SenderNo,a.CompactNo,a.OrderStyle,a.CustId,d.CustName,e.EmpName,
		b.ItemCode,b.ItemName,b.ItemSpc,b.ItemUnit,b.ProType,b.SenderNum,b.SenderPrice,b.SenderMoney,b.AllMoney,
		m.OutNum,NoOutNum=ISNULL(b.SenderNum,0)-ISNULL(m.OutNum,0),b.Remark
		from SaleSenderHDTB a left join SaleSenderDTTB b on a.SenderNo=b.SenderNo
		left join ItemTB c on b.ItemID=c.ItemId
		left join CustTB d on a.CustId=d.CustId
		left join EmployeeTB e on a.EmpId=e.EmpId
		left join (select OutNum=SUM(ISNULL(b.MainNum,0)),b.SaleSenderId from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO
		where a.WKindID=''SaleOut'' and b.SaleSenderId is not null group by b.SaleSenderId)m on b.AutoNo=m.SaleSenderId
		where 1=1 '+@sWhere+' order by a.SenderNo Desc')
end
--exec PrSaleSenderQ ''
go


--客户销售分析汇总
if exists(select name from sysobjects where name='prSaleSumQ' and type='P')
    drop procedure dbo.prSaleSumQ
go
create procedure dbo.prSaleSumQ 
  @sWhere varchar(1000)
as
begin
	Exec(' select [客户编号]=a.CustId,[客户名称]=c.ObjectName,[数量]=SUM(ISNULL(b.SenderNum,0)),[金额]=SUM(ISNULL(b.AllMoney,0))
	       from SaleSenderHDTB a left join SaleSenderDTTB b on a.SenderNo=b.SenderNo
	       left join vwObject c on a.CustId=c.ObjectId
               left join ItemTB d on b.ItemID=d.ItemId
	       where  a.bMaxAudit=1 '+@sWhere+'
	       group by a.CustId,c.ObjectName
	       Order by   数量 Desc ')
end
--exec prSaleSumQ ''
go

--客户销售分析明细
if exists(select name from sysobjects where name='prSaleMXQ' and type='P')
    drop procedure dbo.prSaleMXQ
go
create procedure dbo.prSaleMXQ 
  @sWhere varchar(1000)
as
begin
   Declare @Sql varchar(8000)
   Create table #tbSaleQ(CustId varchar(50),SaleDate DateTime,ItemID varchar(30),MainNum numeric(18,5),MainMoney numeric(18,5))
   Create table #tbCustSaleDate(sSaleDate varchar(50))
   
   InSert Into #tbSaleQ(CustId,SaleDate,ItemID,MainNum,MainMoney)
   Exec('select CustId=a.CustId,SaleDate=a.SenderDate,b.ItemID,MainNum=Sum(IsNull(b.SenderNum,0)),MainMoney=Sum(IsNull(b.AllMoney,0))
         from SaleSenderHDTB a left join SaleSenderDTTB b on a.SenderNo=b.SenderNo
         left join vwObject c on a.CustId=c.ObjectId
         where  a.bMaxAudit=1 '+@sWhere+'
         group by a.CustId,a.SenderDate,b.ItemID ')
   --Select * from #tbSaleQ Return
   Insert into #tbCustSaleDate 
     select distinct sSaleDate=Convert(varchar(20),SaleDate,23) from #tbSaleQ order by Convert(varchar(20),SaleDate,23)
     
   select @sql='select [客户编号]=a.CustId,[产品代号]=b.ItemCode,[产品名称]=b.ItemName,[产品规格]=b.ItemSpc,[单位]=b.ItemUnit,'
   select @sql=@sql+'Isnull(sum(case when Convert(varchar(20),SaleDate,23)='''+sSaleDate+''' then Isnull(MainNum,0) end),0) ['+'    '+Right(sSaleDate,5)+'    '+'],' from (select Top 1000 sSaleDate from #tbCustSaleDate order by sSaleDate) m
   select @sql=@sql+'[     合计     ]=sum(MainNum) from #tbSaleQ a left join ItemTb b on a.ItemId=b.ItemId group by a.CustId,b.ItemCode,b.ItemName,b.ItemSpc,b.ItemUnit order by sum(MainNum) Desc'       
  
   execute (@sql)      
end
--Exec prSaleMXQ ' and a.CustId=''C10002'' '  
go


--产品销售分析汇总
if exists(select name from sysobjects where name='prItemSaleSumQ' and type='P')
    drop procedure dbo.prItemSaleSumQ
go
create procedure dbo.prItemSaleSumQ 
  @sWhere varchar(1000)
as
begin
	Exec(' select [产品编号]=b.ItemId,[产品代号]=c.ItemCode,[产品名称]=c.ItemName,[规格]=c.ItemSpc,[单位]=c.ItemUnit,[货位]=IsNull(b.PlaceNo,''''),[库存数量]=m.WareNum,[数量]=SUM(ISNULL(b.MainNum,0)),[金额]=SUM(ISNULL(b.AllMoney,0))
	       from WareInOutHDTB a left join WareInOutDTTB b on a.BillNo=b.BillNo
           left join ItemTB c on b.ItemID=c.ItemId
           left join vwObject d on a.ObjectId=d.ObjectId
           left join (select ItemId,PlaceNo=IsNull(PlaceNo,''''),WareNum=Sum(IsNull(WareNum,0)) from WareStorageTB group by ItemId,IsNull(PlaceNo,''''))m on b.ItemId=m.ItemId and IsNull(b.PlaceNo,'''')=m.PlaceNo
	       where a.WKindId=''SaleOut'' and a.bMaxAudit=1 '+@sWhere+'
	       group by b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,c.ItemUnit,IsNull(b.PlaceNo,''''),m.WareNum
	       Order by   数量 Desc ')
end
--exec prItemSaleSumQ ''
go

--产品销售分析明细
if exists(select name from sysobjects where name='prItemSaleMXQ' and type='P')
    drop procedure dbo.prItemSaleMXQ
go
create procedure dbo.prItemSaleMXQ 
  @sWhere varchar(1000)
as
begin
   Declare @Sql varchar(8000)
   Create table #tbSaleQ(ObjectName varchar(200),SaleDate DateTime,ItemID varchar(30),PlaceNo varchar(100),WareNum numeric(19,6),OutNum numeric(19,6),OutPrice numeric(19,6),OutMoney numeric(19,6))
   Create table #tbItemSaleDate(sSaleDate varchar(50))
   
   InSert Into #tbSaleQ(ObjectName,SaleDate,ItemID,PlaceNo,WareNum,OutNum,OutPrice,OutMoney)
   Exec('select ObjectName=d.ObjectName,SaleDate=a.BillDate,b.ItemID,IsNull(b.PlaceNo,''''),m.WareNum,OutNum=Sum(IsNull(b.MainNum,0)),OutPrice=Avg(IsNull(b.MainPrice,0)),OutMoney=Sum(IsNull(b.AllMoney,0))
         from WareInOutHDTB a left join WareInOutDTTB b on a.BillNo=b.BillNo
         left join ItemTB c on b.ItemId=c.ItemId
         left join vwObject d on a.ObjectId=d.ObjectId
         left join (select ItemId,PlaceNo=IsNull(PlaceNo,''''),WareNum=Sum(IsNull(WareNum,0)) from WareStorageTB group by ItemId,IsNull(PlaceNo,''''))m on b.ItemId=m.ItemId and IsNull(b.PlaceNo,'''')=m.PlaceNo
         where a.WKindId=''SaleOut'' and a.bMaxAudit=1 '+@sWhere+'
         group by d.ObjectName,a.BillDate,b.ItemID,IsNull(b.PlaceNo,''''),m.WareNum  Order by a.BillDate')
  -- Select * from #tbSaleQ Return
   
   Insert into #tbItemSaleDate 
     select distinct sSaleDate=Convert(varchar(20),SaleDate,23) from #tbSaleQ order by Convert(varchar(20),SaleDate,23)
     
   select @sql='select [客户名称]=a.ObjectName,[产品代号]=b.ItemCode,[产品名称]=b.ItemName,[产品规格]=b.ItemSpc,[单位]=b.ItemUnit,[货位]=a.PlaceNo,[库存数量]=a.WareNum,'
   select @sql=@sql+'Isnull(sum(case when Convert(varchar(20),SaleDate,23)='''+sSaleDate+''' then Isnull(OutNum,0) end),0) ['+'     '+Right(sSaleDate,5)+'     '+'],' from ( select  Top 1000  sSaleDate from #tbItemSaleDate  order by sSaleDate) m
   select @sql=@sql+'[       合计       ]=sum(OutNum) from #tbSaleQ a left join ItemTb b on a.ItemId=b.ItemId 
          group by a.ObjectName,b.ItemCode,b.ItemName,b.ItemSpc,b.ItemUnit,a.PlaceNo,a.WareNum order by sum(OutNum) Desc' 
 
   execute (@sql)      
end

--Exec prItemSaleMXQ ''
go



--产品销售价格分析
if exists(select name from sysobjects where name='prItemSalePriceQ' and type='P')
    drop procedure dbo.prItemSalePriceQ
go
create procedure dbo.prItemSalePriceQ 
  @sWhere varchar(1000)
as
begin
   Exec('select [日期]=a.BillDate,[产品编号]=b.ItemID,[产品代号]=b.ItemCode,[产品名称]=b.ItemName,[规格]=b.ItemSpc,[单位]=b.ItemUnit,
         [数量]=Sum(IsNull(b.MainNum,0)),[单价]=Convert(Numeric(18,5),Sum(IsNull(b.AllMoney,0))/dbo.IsZero(Sum(IsNull(b.MainNum,0)),null)),[金额]=Sum(IsNull(b.AllMoney,0))
         from WareInOutHDTB a left join WareInOutDTTB b on a.BillNo=b.BillNo
         left join ItemTB c on b.ItemId=c.ItemId
         where a.WKindId=''SaleOut'' and a.bMaxAudit=1 '+@sWhere+'
         group by a.BillDate,b.ItemID,b.ItemCode,b.ItemName,b.ItemSpc,b.ItemUnit  Order by a.BillDate')      
end

--Exec prItemSalePriceQ ''
go

if Exists(select Name from sysobjects where name='prUpdateSaleSenderStop' and type='p')
  Drop procedure dbo.prUpdateSaleSenderStop
go
Create Procedure dbo.prUpdateSaleSenderStop @sAutoNo varchar(100),@sSaleSenderNo varchar(100)
as
begin
   --如果单号不为空则整单停止否单条停止
   if @sSaleSenderNo<>''
     Update SaleSenderDTTB Set bStop=Case ISNULL(bStop,0) when 0 then 1 else 0 end where SenderNo=@sSaleSenderNo
   else
     Update SaleSenderDTTB Set bStop=Case ISNULL(bStop,0) when 0 then 1 else 0 end where AutoNo=@sAutoNo
end
--exec prUpdateSaleSenderStop '',''
go 


if Exists (select Name from Sysobjects Where Name='PrUpdateRfResult' and type='P')
  Drop Procedure PrUpdateRfResult
go
Create Procedure PrUpdateRfResult @BillNo Varchar(100),@sKind varchar(50)
--反写参照结果，如 更新销售订单是否发完货或出完库
As
begin
   if @sKind='销售发货'
   begin
      --先反写从表
      Update SaleOrderDTTB Set bAllSend=Case when ISNULL(SaleOrderDTTB.OrderNum,0)>m.SenderNum then 0 else 1 end
      from (select SaleOrderId,SenderNum=Case a.bMaxAudit when 1 then SUM(IsNull(SenderNum,0)) else 0 end from SaleSenderHDTB a left join SaleSenderDTTB b on a.SenderNo=b.SenderNo where  a.SenderNo like @BillNo  group by b.SaleOrderId,a.bMaxAudit)m
      where SaleOrderDTTB.AutoNo=m.SaleOrderId
      --反写主表
      --先更新为是
      Update SaleOrderHDTB Set bAllSend=1 where exists (select AutoNo from SaleSenderDTTB m where SaleOrderHDTB.SaleOrderNo=m.SaleOrderNo and m.SenderNo like @BillNo)
      --如果从表有一条不是已发完就更新为否
      Update SaleOrderHDTB Set bAllSend=0 where exists (select AutoNo from SaleSenderDTTB m where SaleOrderHDTB.SaleOrderNo=m.SaleOrderNo and m.SenderNo like @BillNo)
      and exists (select AutoNo from SaleOrderDTTB m where SaleOrderHDTB.SaleOrderNo=m.SaleOrderNo and ISNULL(bAllSend,0)=0 and ISNULL(bStop,0)=0 )
   end 
   if @sKind='销售出库'
   begin
      --先反写从表
      Update SaleSenderDTTB Set bAllOut=Case when ISNULL(SaleSenderDTTB.SenderNum,0)>m.OutNum then 0 else 1 end
      from (select SaleSenderId,OutNum=Case a.bMaxAudit when 1 then SUM(IsNull(MainNum,0)) else 0 end from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO where a.WKindID='SaleOut' and  a.BillNo like @BillNo  group by b.SaleSenderId,a.bMaxAudit)m
      where SaleSenderDTTB.AutoNo=m.SaleSenderId
      --反写主表
      Update SaleSenderHDTB Set bAllOut=1 where exists (select AutoNo from WareInOutDTTB m where SaleSenderHDTB.SenderNo=m.SaleSenderNo and m.BillNo like @BillNo)
      
      Update SaleSenderHDTB Set bAllOut=0 where exists (select AutoNo from WareInOutDTTB m where SaleSenderHDTB.SenderNo=m.SaleSenderNo and m.BillNo like @BillNo)
      and exists (select AutoNo from SaleSenderDTTB m where SaleSenderHDTB.SenderNo=m.SenderNo and ISNULL(bAllOut,0)=0  )
   end  
   if @sKind='采购入库'
   begin
      --先反写从表
      Update StockOrderDTTB Set bAllIn=Case when ISNULL(StockOrderDTTB.OrderNum,0)>m.InNum then 0 else 1 end
      from (select StockID,InNum=Case a.bMaxAudit when 1 then SUM(IsNull(MainNum,0)) else 0 end  from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO where a.WKindID='StockIn' and  a.BillNo like @BillNo  group by b.StockID,a.bMaxAudit)m
      where StockOrderDTTB.AutoNo=m.StockID
      --反写主表
      Update StockOrderHDTB Set bAllIn=1 where exists (select AutoNo from WareInOutDTTB m where StockOrderHDTB.StockOrderNO=m.StockNo and m.BillNo like @BillNo)
      
      Update StockOrderHDTB Set bAllIn=0 where exists (select AutoNo from WareInOutDTTB m where StockOrderHDTB.StockOrderNO=m.StockNo and m.BillNo like @BillNo)
      and exists (select AutoNo from StockOrderDTTB m where StockOrderHDTB.StockOrderNO=m.StockOrderNO and ISNULL(bAllIn,0)=0  )
   end  
end
--exec PrUpdateRfResult '%%','销售发货'
go

--Bom展开
if Exists(select Name from sysobjects where name='prBomOpen' and type='p')
  Drop procedure dbo.prBomOpen
go
CREATE procedure dbo.prBomOpen @BillNo varchar(30)
as
begin
  declare @iNo1 int,@iNo2 int,@iLevel smallint,@ItemID varchar(30)
  set @iNo1=0
  set @iLevel=2
  Select @ItemID=ItemId from ItemBomHDTB where BillNo=@BillNo
  
  Create table #tbBom(TempId int IDENTITY (1, 1) NOT null,PId VarChar(3000),CId VarChar(3000),ItemId VarChar(50),ItemCode VarChar(50),CAutoId int,ChildId varchar(50),ChildCode varchar(50),ChildVer varchar(50),
  ProType varchar(50),Dosage numeric(19,6),SubDosage Numeric(19,6),WasteRate numeric(18,5),DrawDept varchar(20),TechName varchar(100),iLevel smallint,Remark varchar(100))
  

  
  --插入第1级  
  insert into #tbBom(PId,CId,ItemId,ItemCode,CAutoId,ChildId,ChildCode,ProType,Dosage,SubDosage,WasteRate,DrawDept,TechName,iLevel)
  select b.ItemId,b.ItemId+c.ChildId,b.ItemId,b.ItemCode,c.AutoID,c.ChildId,c.ChildCode,c.ChildProType,Dosage=Isnull(c.Dosage,0),SubDosage=Isnull(c.SubDosage,0),
         WasteRate=Isnull(c.WasteRate,0),c.DrawDept,c.TechName,1
  from ItemBomHDTB b inner join ItemBomDTTB c on b.ItemId=c.ItemId 
  where  b.ItemId=@ItemId and b.BillNo=@BillNo
  
  --插入第N级
  select @iNo2=max(TempId) from #tbBom
  while @iNo2-@iNo1>0
  begin
       insert into #tbBom(PId,CId,ItemId,ItemCode,CAutoId,ChildId,ChildCode,ProType,Dosage,SubDosage,WasteRate,DrawDept,TechName,iLevel)
       select a.CId,a.CId+c.ChildId,b.ItemId,b.ItemCode,c.AutoID,c.ChildId,c.ChildCode,c.ChildProType,Dosage=Isnull(c.Dosage,0),SubDosage=Isnull(c.SubDosage,0),
              WasteRate=Isnull(c.WasteRate,0),c.DrawDept,c.TechName,@iLevel
       from #tbBom a inner join  ItemBomHDTB b on a.ChildId=b.ItemID inner join ItemBomDTTB c on b.ItemId=c.ItemId 
       where TempId>@iNo1
       
    set @iLevel=@iLevel+1
    set @iNo1=@iNo2
    select @iNo2=max(TempId) from #tbBom   
  end
  
   --插入第0级
  insert into #tbBom(PId,CId,ItemId,ItemCode,ChildId,ChildCode,ProType,Dosage,SubDosage,WasteRate,DrawDept,TechName,iLevel) 
  select '',a.ItemId,a.ItemID,a.ItemCode,a.ItemID,a.ItemCode,a.ProType,1,SubDosage=0,WasteRate=0,Drawdept=null,Techname=null,iLevel=0
  from ItemBomHDTB a 
  where a.ItemID=@ItemID 
  
  
  select PId,Cid,a.ItemId,a.ItemCode,a.ChildId,a.ChildCode,b.ItemName,b.ItemSpc,b.ItemUnit,b.ItemSource,a.ProType,
         a.Dosage,a.SubDosage,a.WasteRate,a.TechName,a.DrawDept,c.DeptName,a.Remark,iLevel,d.BillNo
  from #tbBom a left join ItemTB b on a.ChildId=b.ItemId left join DeptTB c on a.DrawDept=c.DeptId
  left join ItemBomHDTB d on a.ChildId=d.ItemId
  Order by PId,CAutoId

end
-- exec prBomOpen 'BOM1301050933'
GO

--Bom复制
if Exists(select Name from sysobjects where name='prBomCopy' and type='p')
  Drop procedure dbo.prBomCopy
go
CREATE procedure dbo.prBomCopy @FromItemID varchar(500),@ToItemID varchar(500) 
as
begin
  
  DECLARE @BillNo varchar(100),@ToItemCode varchar(500)
  
  select @ToItemCode=ItemCode from ItemTB where ItemID=@ToItemID
  
  Set @BillNo=''
  exec prGetTableNo 'ItemBomHDTB','BillNo',@BillNo OUTPUT
  if @BillNo is null
  begin
	  ROLLBACK TRANSACTION 
	  Select ReturStr='BOM单前缀没有设置!'
	  return     
  end
  

  --删除原有BOM
  Delete ItemBomDTTB where ItemID=@ToItemId 
  Delete ItemBomHDTB where ItemID=@ToItemId
 
  --插入主表 
  InSert into ItemBomHDTB (BillNo,BillDate,ItemID,ItemCode,ProType,Color,ItemVer,bMRP,MakeDate,MakeMan,MakeManName)
  select @BillNo,GETDATE(),@ToItemID,@ToItemCode,ProType,Color,ItemVer,bMRP,GETDATE(),MakeMan,MakeManName
  from ItemBomHDTB where ItemId=@FromItemID

  
  --插入从表 
  InSert into ItemBomDTTB (BillNo,ItemID,ItemCode,ProType,Color,ItemVer,ChildId,ChildCode,ChildName,ChildSpc,ChildPic,
                           ChildUnit,ChildSubUnit,ChildExchrate,ChildiFlag,ChildMaterial,ChildPYCode,ChildProType,ChildColor,
                           Dosage,SubDosage,WasteRate,iFlag,DrawDept,TechName,ChildVer,bKeyChild,bReplace,bDefault,bUse,ReplaceItem,Remark )
  select @BillNo,@ToItemID,@ToItemCode,ProType,Color,ItemVer,ChildId,ChildCode,ChildName,ChildSpc,ChildPic,
                           ChildUnit,ChildSubUnit,ChildExchrate,ChildiFlag,ChildMaterial,ChildPYCode,ChildProType,ChildColor,
                           Dosage,SubDosage,WasteRate,iFlag,DrawDept,TechName,ChildVer,bKeyChild,bReplace,bDefault,bUse,ReplaceItem,Remark
  from ItemBomDTTB where ItemId=@FromItemID
    
  Select ReturStr='粘贴成功!'
   
end
-- exec prBomCopy '020001','020003'
GO

if Exists(select Name from sysobjects where name='prUpdateProDispatchStop' and type='p')
  Drop procedure dbo.prUpdateProDispatchStop
go
Create Procedure dbo.prUpdateProDispatchStop @sAutoNo varchar(100),@sBillNo varchar(100),@bFlag bit
as
begin
   --如果单号不为空则整单停止否单条停止
   if @sBillNo<>''
   begin
       Update ProDispatchHDTB Set bStop=@bFlag where DispatchNo=@sBillNo
       Update ProDispatchDTTB Set bStop=@bFlag where DispatchNo=@sBillNo
       Update ProDispatchyMatTB Set bStop=@bFlag where DispatchNo=@sBillNo
   end
   else
   begin
       Update ProDispatchDTTB Set bStop=@bFlag where AutoNo=@sAutoNo
       Update ProDispatchyMatTB Set bStop=@bFlag where DetAutoNo=@sAutoNo
   end
   select Null
end
--exec prUpdateProDispatchStop '','',1
go  

if Exists(select Name from sysobjects where name='prUpdateProDispatchComplete' and type='p')
  Drop procedure dbo.prUpdateProDispatchComplete
go
Create Procedure dbo.prUpdateProDispatchComplete @sAutoNo varchar(100),@sBillNo varchar(100),@bFlag bit
as
begin

   --如果单号不为空则整单完工否单条完工
   if @sBillNo<>''
   begin
       Update ProDispatchHDTB Set bComplete=@bFlag where DispatchNo=@sBillNo
       Update ProDispatchDTTB Set bComplete=@bFlag where DispatchNo=@sBillNo
       Update ProDispatchyMatTB Set bComplete=@bFlag where DispatchNo=@sBillNo
   end
   else
   begin
       Update ProDispatchDTTB Set bComplete=@bFlag where AutoNo=@sAutoNo
       Update ProDispatchyMatTB Set bComplete=@bFlag where DetAutoNo=@sAutoNo
   end
   select Null
end
--exec prUpdateProDispatchComplete '','SCPG131206202200',1
go 

--数据分页显示
if Exists (select Name from Sysobjects Where Name='prSplitPage' and type='P')
  Drop Procedure prSplitPage
go
Create Procedure prSplitPage @StrSql varchar(8000),@PageIndex int,@PageSize int 
As
begin
  Set NoCount on
  Declare @P1 int,@CurrentPage int,@RowCount int,@PageCount int
  Set @CurrentPage=0 
  Set @RowCount=0
  Set @PageCount=0 
  Exec sp_cursoropen @p1 output,@StrSql,@Scrollopt=1,@Ccop=1,@RowCount=@RowCount output
  select @PageCount=CEILING(1.0*@RowCount/@PageSize),@CurrentPage=(@PageIndex-1)*@PageSize+1
  select AllRowCount=@RowCount,AllPageCount=@PageCount,PageContent=Convert(varchar(10),@PageIndex)+'/'+Convert(varchar(10),@PageCount)
  exec sp_cursorfetch @p1,16,@CurrentPage,@PageSize
  exec sp_cursorclose @p1
  Set NoCount Off
end
go
--exec prSplitPage 'select * from RequireHDTB where 1=1' ,1,3



if Exists (select Name from Sysobjects Where Name='PrSaleSenderSaleOrderRf' and type='P')
  Drop Procedure PrSaleSenderSaleOrderRf
go
Create Procedure PrSaleSenderSaleOrderRf @sWhere Varchar(2000)
As  --未销售发货销售订单查询
begin
  exec('select b.bSelect,a.SaleOrderNo,a.EmpId,a.PayMode,a.OrderStyle,a.OrderDate,a.CustId,d.CustName,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,
		b.ProType,b.CompactNo,NoSenderNum=IsNull(b.OrderNum,0)-IsNull(m.SenderNum,0),b.OrderNum,m.SenderNum,b.OrderPrice,b.TaxPrice,b.OrderMoney,b.AllMoney,
		b.DeliverDate,a.Remark,b.AutoNo
		from SaleOrderHDTB a left join SaleOrderDTTB b on a.SaleOrderNo=b.SaleOrderNo
		left join ItemTB c on b.ItemId=c.ItemId
		left join CustTB d on a.CustId=d.CustId
		left join (select SenderNum=SUM(ISNULL(b.SenderNum,0)),b.SaleOrderId from SaleSenderHDTB a left join SaleSenderDTTB b on a.SenderNo=b.SenderNo
		where  b.SaleOrderId is not null group by b.SaleOrderId)m on b.AutoNo=m.SaleOrderId
		where 1=1 and IsNull(b.bStop,0)=0 and IsNull(b.OrderNum,0)>IsNull(m.SenderNum,0)'+@sWhere)
end
--exec PrSaleSenderSaleOrderRf ''
go

if Exists (select Name from Sysobjects Where Name='PrSaleOutSaleOrderRf' and type='P')
  Drop Procedure PrSaleOutSaleOrderRf
go
Create Procedure PrSaleOutSaleOrderRf @sWhere Varchar(2000)
As  --未销售出库销售订单查询
begin
  exec('select b.bSelect,a.SaleOrderNo,a.CompactNo,a.OrderDate,d.CustName,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,
		b.ProType,b.Color,NoOutNum=IsNull(b.OrderNum,0)-IsNull(m.OutNum,0),b.OrderNum,a.Remark,b.AutoID,b.AutoNo,a.CustId
		from SaleOrderHDTB a left join SaleOrderDTTB b on a.SaleOrderNo=b.SaleOrderNo
		left join ItemTB c on b.ItemId=c.ItemId
		left join CustTB d on a.CustId=d.CustId
		left join (select OutNum=SUM(ISNULL(b.MainNum,0)),b.SaleOrderNo,b.SaleOrderId from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO
		where a.WKindID=''SaleOut'' and b.SaleOrderId is not null group by b.SaleOrderNo,b.SaleOrderId)m on b.SaleOrderNo=m.SaleOrderNo and b.AutoNo=m.SaleOrderId
		where IsNull(a.bMaxAudit,0)=1 and IsNull(b.bStop,0)=0 and IsNull(b.OrderNum,0)>IsNull(m.OutNum,0)'+@sWhere)
end
--exec PrSaleOutSaleOrderRf ''
go
  
if Exists (select Name from Sysobjects Where Name='PrSaleOutSaleSenderRf' and type='P')
  Drop Procedure PrSaleOutSaleSenderRf
go
Create Procedure PrSaleOutSaleSenderRf @sWhere Varchar(2000)
As  --未销售出库销售发货单查询
begin
  exec('select b.bSelect,a.SenderNo,b.CompactNo,a.SenderDate,d.CustName,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,
		b.ProType,NoOutNum=IsNull(b.SenderNum,0)-IsNull(m.OutNum,0),b.SenderNum,m.OutNum,b.SenderPrice,b.TaxPrice,a.Remark,
		b.AutoNo,b.SaleOrderNo,b.SaleOrderId,a.CustId
		from SaleSenderHDTB a left join SaleSenderDTTB b on a.SenderNo=b.SenderNo
		left join ItemTB c on b.ItemId=c.ItemId
		left join CustTB d on a.CustId=d.CustId
		left join (select OutNum=SUM(ISNULL(b.MainNum,0)),b.SaleSenderId from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO
		where a.WKindID=''SaleOut'' and b.SaleSenderId is not null group by b.SaleSenderId)m on b.AutoNo=m.SaleSenderId
		where IsNull(b.bStop,0)=0 and IsNull(b.SenderNum,0)>IsNull(m.OutNum,0)'+@sWhere)
end
--exec PrSaleOutSaleSenderRf ''
go 

if Exists (select Name from Sysobjects Where Name='PrProductInSaleOrderRf' and type='P')
  Drop Procedure PrProductInSaleOrderRf
go
Create Procedure PrProductInSaleOrderRf @sWhere Varchar(2000)
As  --未产品入库销售订单查询
begin
  exec('select b.bSelect,a.SaleOrderNo,a.CompactNo,a.OrderDate,d.CustName,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,
		b.ProType,b.Color,NoInNum=IsNull(b.OrderNum,0)-IsNull(m.InNum,0),b.OrderNum,a.Remark,b.AutoID,b.AutoNo,a.CustId
		from SaleOrderHDTB a left join SaleOrderDTTB b on a.SaleOrderNo=b.SaleOrderNo
		left join ItemTB c on b.ItemId=c.ItemId
		left join CustTB d on a.CustId=d.CustId
		left join (select InNum=SUM(ISNULL(b.MainNum,0)),b.SaleOrderNo,b.SaleOrderId from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO
		where a.WKindID=''ProductIn'' and b.SaleOrderId is not null group by b.SaleOrderNo,b.SaleOrderId)m on b.SaleOrderNo=m.SaleOrderNo and b.AutoNo=m.SaleOrderId
		where IsNull(a.bMaxAudit,0)=1 and IsNull(b.bStop,0)=0 and IsNull(b.OrderNum,0)>IsNull(m.InNum,0)'+@sWhere)
end
--exec PrProductInSaleOrderRf ''
go

if Exists (select Name from Sysobjects Where Name='PrMatOutProDispatchRf' and type='P')
  Drop Procedure PrMatOutProDispatchRf
go
Create Procedure PrMatOutProDispatchRf @sWhere Varchar(2000)
As  --未发料出库生产派工单查询
begin
  exec('select b.bSelect,a.DispatchNo,a.DispatchDate,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,
		b.ProType,b.Color,CPCode=e.ItemCode,CPItemName=e.ItemName,CPItemSpc=e.ItemSpc,
		NoOutNum=IsNull(b.TakeNum,0)-IsNull(m.OutNum,0),b.TakeNum,a.Remark,b.AutoID,b.AutoNO,b.ProOrderNo,b.ProOrderId
		from ProDispatchHDTB a left join ProDispatchyMatTB b on a.DispatchNo=b.DispatchNo
		left join ItemTB c on b.ItemId=c.ItemId
		left join ProDispatchDTTB d on a.DispatchNo=b.DispatchNo and b.DetAutoNo=d.AutoNo
		left join ItemTB e on d.ItemId=e.ItemId
		left join (select OutNum=SUM(ISNULL(b.MainNum,0)),b.DispatchNo,b.DispatchId from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO
		where a.WKindID=''MatOut'' and b.DispatchId is not null group by b.DispatchNo,b.DispatchId)m on b.DispatchNo=m.DispatchNo and b.AutoNo=m.DispatchId
		where IsNull(c.SendMode,'''')<>''汇总'' and  a.bMaxAudit=1 and IsNull(b.bStop,0)=0 and IsNull(b.bComplete,0)=0 and IsNull(b.TakeNum,0)>IsNull(m.OutNum,0)'+@sWhere)
end
--exec PrMatOutProDispatchRf ''
go

if Exists (select Name from Sysobjects Where Name='PrTechOutProDispatchRf' and type='P')
  Drop Procedure PrTechOutProDispatchRf
go
Create Procedure PrTechOutProDispatchRf @sWhere Varchar(2000),@sKind varchar(50)
As 
begin
    if @sKind='外协工序出库'
    begin
	  exec('select b.bSelect,a.DispatchNo,a.DispatchDate,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,
			b.ProType,b.Color,b.CompactNo,b.Ordinal,b.TechName,e.TechParam,b.TopTech,b.NextTech,b.bFirst,b.bLast,b.ObjectId,d.ObjectName,
			NoRfNum=ISNULL(b.DispatchNum,0)-ISNULL(m.MoveNum,0),RfNum=m.MoveNum,b.DispatchNum,a.Remark,b.AutoID,b.AutoNO,
			b.SaleOrderNo,b.SaleOrderId,b.ProOrderNo,b.ProOrderId
			from ProDispatchHDTB a left join ProDispatchDTTB b on a.DispatchNo=b.DispatchNo
			left join ItemTB c on b.ItemId=c.ItemId
			left join vwObject d on b.ObjectId=d.ObjectID
			left join ItemTechDTTB e on b.ItemId=e.ItemId and b.TechName=e.TopTech
			left join (select DispatchNo,DispatchId,MoveNum=SUM(ISNULL(b.MoveNum,0)) 
			from ItemMoveHDTB a left join ItemMoveDTTB b on a.MoveNo=b.MoveNo
			where MKindId=''AssistMove'' group by b.DispatchNo,b.DispatchId)m on m.DispatchNo=b.DispatchNo and m.DispatchId=b.AutoNo
			where  a.bMaxAudit=1  and IsNull(b.bStop,0)=0 and IsNull(b.bComplete,0)=0 and e.TechParam=''外协'' and ISNULL(b.DispatchNum,0)>ISNULL(m.MoveNum,0) '+@sWhere+' Order by a.DispatchNo,b.ItemId,b.Ordinal')
     end
end
--exec PrTechOutProDispatchRf '','外协工序出库'
go


if Exists (select Name from Sysobjects Where Name='PrProductInProDispatchRf' and type='P')
  Drop Procedure PrProductInProDispatchRf
go
Create Procedure PrProductInProDispatchRf @sWhere Varchar(2000)
As  --未产品入库生产订单查询
begin
  exec('select b.bSelect,a.DispatchNo,a.DispatchDate,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,
		b.ProType,b.Color,NoInNum=IsNull(b.DispatchNum,0)-IsNull(m.InNum,0),b.DispatchNum,a.Remark,b.AutoID,b.AutoNO,b.ProOrderNo,b.ProOrderId
		from ProDispatchHDTB a left join ProDispatchDTTB b on a.DispatchNo=b.DispatchNo
		left join ItemTB c on b.ItemId=c.ItemId
		left join (select InNum=SUM(ISNULL(b.MainNum,0)),b.DispatchNo,b.DispatchId from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO
		where a.WKindID=''ProductIn'' and b.DispatchId is not null group by b.DispatchNo,b.DispatchId)m on b.DispatchNo=m.DispatchNo and b.AutoNo=m.DispatchId
		where 1=1 and a.bMaxAudit=1 and IsNull(b.bStop,0)=0 and IsNull(b.bComplete,0)=0 and IsNull(b.DispatchNum,0)>IsNull(m.InNum,0)'+@sWhere)
end
--exec PrProductInProDispatchRf ''
go

if Exists(select Name from sysobjects where name='PrProDispatchQ' and type='p')
  Drop procedure dbo.PrProDispatchQ
go
Create Procedure PrProDispatchQ @sWhere Varchar(2000)
As
begin
    Exec('select a.DispatchNo,a.DispatchDate,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,
		b.ProType,b.Color,h.ObjectName,b.Ordinal,b.TechName,
		b.DispatchNum,NoInNum=IsNull(b.DispatchNum,0)-IsNull(m.InNum,0)-IsNull(m.SpoilNum,0)-IsNull(m.WasteNum,0)-IsNull(m.ScrapNum,0),
		InNum=IsNull(m.InNum,0),SpoilNum=IsNull(m.SpoilNum,0),WasteNum=IsNull(m.WasteNum,0),ScrapNum=IsNull(m.ScrapNum,0),b.Remark,
		m.MoveDate,b.AutoID,b.AutoNO,b.ProOrderNo,b.ProOrderId,g.CustCode,g.CustName,
		bComplete=Case when IsNull(m.InNum,0)+IsNull(m.SpoilNum,0)+IsNull(m.WasteNum,0)+IsNull(m.ScrapNum,0)>=IsNull(b.DispatchNum,0) or IsNull(b.bComplete,0)=1 or IsNull(b.bStop,0)=1 then Convert(bit,1) else Convert(bit,0) end
		from ProDispatchHDTB a left join ProDispatchDTTB b on a.DispatchNo=b.DispatchNo
		left join ItemTB c on b.ItemId=c.ItemId
		left join SaleOrderHDTB f on b.SaleOrderNo=f.SaleOrderNo
		left join CustTB g on f.CustId=g.CustId
		left join (select MoveDate=Max(a.MoveDate),InNum=SUM(ISNULL(b.MoveNum,0)),SpoilNum=SUM(ISNULL(b.SpoilNum,0)),WasteNum=SUM(ISNULL(b.WasteNum,0)),ScrapNum=SUM(ISNULL(b.ScrapNum,0)),
			ObjectId=Case when a.MKindId=''AssistMoveIn'' then a.SendId else b.EmpId end,b.DispatchNo,b.DispatchId 
			from ItemMoveHDTB a left join ItemMoveDTTB b on a.MoveNo=b.MoveNo
			where a.bMaxAudit=1 and a.MKindID in(''AssistMoveIn'',''ShopMoveIn'') and b.DispatchId is not null
			group by b.DispatchNo,b.DispatchId,a.MKindId,a.SendId,b.EmpId)m on b.DispatchNo=m.DispatchNo and b.AutoNo=m.DispatchId
		left join vwObject h on m.ObjectId=h.ObjectId
		where 1=1 '+@sWhere+' order by a.DispatchNo Desc,b.Ordinal ')
end
--exec PrProDispatchQ ''

GO

if Exists (select Name from Sysobjects Where Name='PrMatProDispatchRf' and type='P')
  Drop Procedure PrMatProDispatchRf
go
Create Procedure PrMatProDispatchRf @sWhere Varchar(2000),@sKind varchar(50)
As 
begin
  if @sKind='车间发料'
  begin
	  exec('select b.bSelect,a.DispatchNo,a.DispatchDate,b.ItemId,b.ItemCode,d.ItemName,d.ItemSpc,
			b.ProType,b.Color,b.CompactNo,b.TakeObjectId,TakeObjectName=e.ObjectName,
			b.pItemId,pItemCode=f.ItemCode,pItemName=f.ItemName,c.TechName,c.TechParam,
			NoRfNum=ISNULL(b.TakeNum,0)-ISNULL(m.MoveNum,0),RfNum=m.MoveNum,b.TakeNum,a.Remark,b.AutoID,b.AutoNO,
			b.SaleOrderNo,b.SaleOrderId,b.ProOrderNo,b.ProOrderId
			from ProDispatchHDTB a left join ProDispatchMatTB b on a.DispatchNo=b.DispatchNo
			left join ProDisPatchDTTB c on b.DetAutoNo=c.AutoNo
			left join ItemTB d on b.ItemId=d.ItemId
			left join vwObject e on b.TakeObjectId=e.ObjectID
			left join ItemTB f on b.pItemId=f.ItemId
			left join (select DispatchNo,DispatchId,MoveNum=SUM(ISNULL(b.MoveNum,0)) 
			from ItemMoveHDTB a left join ItemMoveDTTB b on a.MoveNo=b.MoveNo
			where MKindId=''ShopMove'' group by b.DispatchNo,b.DispatchId)m on m.DispatchNo=b.DispatchNo and m.DispatchId=b.AutoNo
			where  a.bMaxAudit=1 and c.TechParam=''本厂'' and IsNull(c.bStop,0)=0 and IsNull(c.bComplete,0)=0 
			and ISNULL(b.TakeNum,0)>ISNULL(m.MoveNum,0) '+@sWhere)
    end
    if @sKind='外协发料'
    begin
	  exec('select b.bSelect,a.DispatchNo,a.DispatchDate,b.ItemId,b.ItemCode,d.ItemName,d.ItemSpc,
			b.ProType,b.Color,b.CompactNo,b.TakeObjectId,TakeObjectName=e.ObjectName,
			b.pItemId,pItemCode=f.ItemCode,pItemName=f.ItemName,c.TechName,c.TechParam,
			NoRfNum=ISNULL(b.TakeNum,0)-ISNULL(m.MoveNum,0),RfNum=m.MoveNum,b.TakeNum,a.Remark,b.AutoID,b.AutoNO,
			b.SaleOrderNo,b.SaleOrderId,b.ProOrderNo,b.ProOrderId
			from ProDispatchHDTB a left join ProDispatchMatTB b on a.DispatchNo=b.DispatchNo
			left join ProDisPatchDTTB c on b.DetAutoNo=c.AutoNo
			left join ItemTB d on b.ItemId=d.ItemId
			left join vwObject e on b.TakeObjectId=e.ObjectID
			left join ItemTB f on b.pItemId=f.ItemId
			left join (select DispatchNo,DispatchId,MoveNum=SUM(ISNULL(b.MoveNum,0)) 
			from ItemMoveHDTB a left join ItemMoveDTTB b on a.MoveNo=b.MoveNo
			where MKindId=''AssistMove'' group by b.DispatchNo,b.DispatchId)m on m.DispatchNo=b.DispatchNo and m.DispatchId=b.AutoNo
			where  a.bMaxAudit=1 and c.TechParam=''外协'' and IsNull(c.bStop,0)=0 and IsNull(c.bComplete,0)=0  
			and ISNULL(b.TakeNum,0)>ISNULL(m.MoveNum,0) '+@sWhere)
    end
end
--exec PrMatProDispatchRf '','车间发料'
go

if Exists (select Name from Sysobjects Where Name='PrInProDispatchRf' and type='P')
  Drop Procedure PrInProDispatchRf
go
Create Procedure PrInProDispatchRf @sWhere Varchar(2000),@sKind varchar(50)
As 
begin
   if @sKind='产品入库'
   begin
	  exec('select b.bSelect,a.DispatchNo,a.DispatchDate,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,
			b.ProType,b.Color,b.CompactNo,b.Ordinal,b.TechName,b.TechParam,b.TopTech,b.NextTech,b.bFirst,b.bLast,b.ObjectId,d.ObjectName,
			NoRfNum=ISNULL(b.DispatchNum,0)-ISNULL(m.InNum,0),RfNum=m.InNum,b.DispatchNum,a.Remark,b.AutoID,b.AutoNO,
			b.SaleOrderNo,b.SaleOrderId,b.ProOrderNo,b.ProOrderId
			from ProDispatchHDTB a left join ProDispatchDTTB b on a.DispatchNo=b.DispatchNo
			left join ItemTB c on b.ItemId=c.ItemId
			left join vwObject d on b.ObjectId=d.ObjectID
			left join (select DispatchNo,DispatchId,InNum=SUM(ISNULL(b.MainNum,0)) 
			from WareInOutHDTB a left join WareInOutDTTB b on a.BillNo=b.BillNo
			where WKindId=''ProductIn'' group by b.DispatchNo,b.DispatchId)m on m.DispatchNo=b.DispatchNo and m.DispatchId=b.AutoNo
			where  a.bMaxAudit=1  and IsNull(b.bStop,0)=0 and IsNull(b.bComplete,0)=0 and b.TechParam<>''外协'' and ISNULL(b.DispatchNum,0)>ISNULL(m.InNum,0) '+@sWhere+' Order by a.DispatchNo,b.ItemId,b.Ordinal')
  end
  if @sKind='外协入库'
  begin
	  exec('select b.bSelect,a.DispatchNo,a.DispatchDate,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,
			b.ProType,b.Color,b.CompactNo,b.Ordinal,b.TechName,b.TechParam,b.TopTech,b.NextTech,b.bFirst,b.bLast,b.ObjectId,d.ObjectName,
			NoRfNum=ISNULL(b.DispatchNum,0)-ISNULL(m.InNum,0),RfNum=m.InNum,b.DispatchNum,a.Remark,b.AutoID,b.AutoNO,
			b.SaleOrderNo,b.SaleOrderId,b.ProOrderNo,b.ProOrderId
			from ProDispatchHDTB a left join ProDispatchDTTB b on a.DispatchNo=b.DispatchNo
			left join ItemTB c on b.ItemId=c.ItemId
			left join vwObject d on b.ObjectId=d.ObjectID
			left join (select DispatchNo,DispatchId,InNum=SUM(ISNULL(b.MainNum,0)) 
			from WareInOutHDTB a left join WareInOutDTTB b on a.BillNo=b.BillNo
			where WKindId=''AssistIn'' group by b.DispatchNo,b.DispatchId)m on m.DispatchNo=b.DispatchNo and m.DispatchId=b.AutoNo
			where  a.bMaxAudit=1  and IsNull(b.bStop,0)=0 and IsNull(b.bComplete,0)=0 and b.TechParam=''外协'' and ISNULL(b.DispatchNum,0)>ISNULL(m.InNum,0) '+@sWhere+' Order by a.DispatchNo,b.ItemId,b.Ordinal')
  end
  if @sKind='车间加工入库'
  begin
	  exec('select b.bSelect,a.DispatchNo,a.DispatchDate,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,
			b.ProType,b.Color,b.CompactNo,b.Ordinal,b.TechName,b.TechParam,b.TopTech,b.NextTech,b.bFirst,b.bLast,b.ObjectId,d.ObjectName,
			NoRfNum=ISNULL(b.DispatchNum,0)+ISNULL(b.BackNum,0)-ISNULL(m.MoveNum,0),RfNum=m.MoveNum,b.DispatchNum,a.Remark,b.AutoID,b.AutoNO,
			b.SaleOrderNo,b.SaleOrderId,b.ProOrderNo,b.ProOrderId
			from ProDispatchHDTB a left join ProDispatchDTTB b on a.DispatchNo=b.DispatchNo
			left join ItemTB c on b.ItemId=c.ItemId
			left join vwObject d on b.ObjectId=d.ObjectID
			left join (select DispatchNo,DispatchId,MoveNum=SUM(ISNULL(b.MoveNum,0)+ISNULL(b.SpoilNum,0)+ISNULL(b.WasteNum,0)+IsNull(ScrapNum,0)) 
			from ItemMoveHDTB a left join ItemMoveDTTB b on a.MoveNo=b.MoveNo
			where MKindId=''ShopMoveIn'' group by b.DispatchNo,b.DispatchId)m on m.DispatchNo=b.DispatchNo and m.DispatchId=b.AutoNo
			where  a.bMaxAudit=1 and IsNull(b.bStop,0)=0 and IsNull(b.bComplete,0)=0  and b.TechParam<>''外协'' and ISNULL(b.DispatchNum,0)+ISNULL(b.BackNum,0)>ISNULL(m.MoveNum,0) '+@sWhere+' 
			Order by a.DispatchNo,b.ItemId,b.Ordinal')
    end
    if @sKind='车间返工出库'
    begin
	  exec('select b.bSelect,a.DispatchNo,a.DispatchDate,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,
			b.ProType,b.Color,b.CompactNo,b.Ordinal,b.TechName,b.TechParam,b.TopTech,b.NextTech,b.bFirst,b.bLast,b.ObjectId,d.ObjectName,
			NoRfNum=ISNULL(b.DispatchNum,0)+ISNULL(b.BackNum,0)-ISNULL(m.MoveNum,0),RfNum=m.MoveNum,b.DispatchNum,a.Remark,b.AutoID,b.AutoNO,
			b.SaleOrderNo,b.SaleOrderId,b.ProOrderNo,b.ProOrderId
			from ProDispatchHDTB a left join ProDispatchDTTB b on a.DispatchNo=b.DispatchNo
			left join ItemTB c on b.ItemId=c.ItemId
			left join vwObject d on b.ObjectId=d.ObjectID
			left join (select DispatchNo,DispatchId,MoveNum=SUM(ISNULL(b.MoveNum,0)+ISNULL(b.SpoilNum,0)+ISNULL(b.WasteNum,0)+IsNull(ScrapNum,0)) 
			from ItemMoveHDTB a left join ItemMoveDTTB b on a.MoveNo=b.MoveNo
			where MKindId=''ShopBack'' group by b.DispatchNo,b.DispatchId)m on m.DispatchNo=b.DispatchNo and m.DispatchId=b.AutoNo
			where  a.bMaxAudit=1 and IsNull(b.bStop,0)=0 and IsNull(b.bComplete,0)=0  and b.TechParam<>''外协'' and ISNULL(b.DispatchNum,0)>ISNULL(m.MoveNum,0) '+@sWhere+'
			Order by a.DispatchNo,b.ItemId,b.Ordinal')
    end
    if @sKind='外协加工入库'
    begin
	  exec('select b.bSelect,a.DispatchNo,a.DispatchDate,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,
			b.ProType,b.Color,b.CompactNo,b.Ordinal,b.TechName,b.TechParam,b.TopTech,b.NextTech,b.bFirst,b.bLast,b.ObjectId,d.ObjectName,
			NoRfNum=ISNULL(b.DispatchNum,0)+ISNULL(b.BackNum,0)-ISNULL(m.MoveNum,0),RfNum=m.MoveNum,b.DispatchNum,a.Remark,b.AutoID,b.AutoNO,
			b.SaleOrderNo,b.SaleOrderId,b.ProOrderNo,b.ProOrderId
			from ProDispatchHDTB a left join ProDispatchDTTB b on a.DispatchNo=b.DispatchNo
			left join ItemTB c on b.ItemId=c.ItemId
			left join vwObject d on b.ObjectId=d.ObjectID
			left join (select DispatchNo,DispatchId,MoveNum=SUM(ISNULL(b.MoveNum,0)+ISNULL(b.SpoilNum,0)+ISNULL(b.WasteNum,0)+IsNull(ScrapNum,0)) 
			from ItemMoveHDTB a left join ItemMoveDTTB b on a.MoveNo=b.MoveNo
			where MKindId=''AssistMoveIn'' group by b.DispatchNo,b.DispatchId)m on m.DispatchNo=b.DispatchNo and m.DispatchId=b.AutoNo
			where  a.bMaxAudit=1 and IsNull(b.bStop,0)=0 and IsNull(b.bComplete,0)=0 and b.TechParam=''外协'' and ISNULL(b.DispatchNum,0)+ISNULL(b.BackNum,0)>ISNULL(m.MoveNum,0) '+@sWhere+' 
			Order by a.DispatchNo,b.ItemId,b.Ordinal')
     end
     if @sKind='外协返工出库'
     begin
	  exec('select b.bSelect,a.DispatchNo,a.DispatchDate,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,
			b.ProType,b.Color,b.CompactNo,b.Ordinal,b.TechName,b.TechParam,b.TopTech,b.NextTech,b.bFirst,b.bLast,b.ObjectId,d.ObjectName,
			NoRfNum=ISNULL(b.DispatchNum,0)-ISNULL(m.MoveNum,0),RfNum=m.MoveNum,b.DispatchNum,a.Remark,b.AutoID,b.AutoNO,
			b.SaleOrderNo,b.SaleOrderId,b.ProOrderNo,b.ProOrderId
			from ProDispatchHDTB a left join ProDispatchDTTB b on a.DispatchNo=b.DispatchNo
			left join ItemTB c on b.ItemId=c.ItemId
			left join vwObject d on b.ObjectId=d.ObjectID
			left join (select DispatchNo,DispatchId,MoveNum=SUM(ISNULL(b.MoveNum,0)+ISNULL(b.SpoilNum,0)+ISNULL(b.WasteNum,0)+IsNull(ScrapNum,0)) 
			from ItemMoveHDTB a left join ItemMoveDTTB b on a.MoveNo=b.MoveNo
			where MKindId=''AssistBack'' group by b.DispatchNo,b.DispatchId)m on m.DispatchNo=b.DispatchNo and m.DispatchId=b.AutoNo
			where  a.bMaxAudit=1 and IsNull(b.bStop,0)=0 and IsNull(b.bComplete,0)=0 and b.TechParam=''外协'' and ISNULL(b.DispatchNum,0)>ISNULL(m.MoveNum,0)'+@sWhere+' 
		    Order by a.DispatchNo,b.ItemId,b.Ordinal')
     end
end
--exec PrInProDispatchRf '','车间退料单'
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


--库存产品查询
if Exists (select Name from Sysobjects Where Name='PrWareItemQ' and type='P')
  Drop Procedure PrWareItemQ
go
Create Procedure PrWareItemQ @sWhere Varchar(2000)
As
begin
  exec('select b.bSelect,b.ItemkindId,a.ItemId,b.ItemCode,b.ItemPYCode,b.ItemName,b.ItemSpc,a.WareId,c.WareName,a.WareNum,
		a.ProType,a.Color,a.BatchNo,a.PlaceNo,a.CompactNo,a.ObjectId ,d.ObjectName,a.TechName,a.InDate,a.PState
		from WareStorageTB a left join ItemTB b on a.ItemId=b.ItemId
		left join WareTB c on a.WareId=c.WareId
		left join vwObject d on a.ObjectId=d.ObjectID
		where IsNull(a.WareNum,0)<>0 '+@sWhere+' Order by a.ItemId,a.WareId')
end
--exec PrWareItemQ ''
go

--出入库查询
if Exists (select Name from Sysobjects Where Name='PrWareInOutQ' and type='P')
  Drop Procedure PrWareInOutQ
go
Create Procedure PrWareInOutQ @sWhere Varchar(2000)
As
begin
  exec('select a.SignFlag,a.WKindID,d.WKindName,a.BillNO,a.BillDate,a.ObjectID,f.ObjectName,bCashDeal=IsNull(a.bCashDeal,0),a.WareMan,WareManName=h.EmpName,
        g.ItemKindName,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemUnit,c.SubUnit,b.ProType,b.Color,b.PlaceNo,b.CompactNo,b.WareId,e.WareName,b.Weight,b.AllWeight,
        WareObjectName=j.ObjectName,
		MainNum=IsNull(b.MainNum,0),b.MainPrice,b.TaxPrice,MainMoney=IsNull(b.MainMoney,0),
		SubNum=IsNull(b.SubNum,0),b.SubPrice,b.SubTaxPrice,SubMoney=IsNull(b.SubMoney,0),b.TaxRate,b.TaxMoney,AllMoney=IsNull(b.AllMoney,0),
		i.EmpName,b.Remark,a.SubjoinNo,a.SubjoinTableId
		from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO
		left join ItemTB c on b.ItemId=c.ItemId
		left join WareKindTB d on a.WKindID=d.WKindId
		left join WareTB e on b.WareId=e.WareId
		left join vwObject f on a.ObjectID=f.ObjectID
		left join ItemKindTB g on c.ItemKindId=g.ItemKindId
		left join EmployeeTB h on a.WareMan=h.EmpId
		left join EmployeeTB i on b.EmpId=i.EmpId
		left join vwObject j on b.ObjectId=j.ObjectId
		where 1=1 '+@sWhere+' order by a.BillDate,a.BillNo')
end
--exec PrWareInOutQ ''
go

--出入库汇总
if Exists (select Name from Sysobjects Where Name='PrWareInOutSumQ' and type='P')
  Drop Procedure PrWareInOutSumQ
go
Create Procedure PrWareInOutSumQ (@sShowField varchar(200),@sWhere varchar(8000)) 
As
begin

    Declare @sSqlText varchar(8000),@sField varchar(8000),@sGroup varchar(8000)
    Set @sField=''
    Set @sGroup=''
    
    if CHARINDEX('往来单位',@sShowField)>0
    begin
       Set @sField=@sField+',a.ObjectID,f.ObjectName'
       Set @sGroup=@sGroup+',a.ObjectID,f.ObjectName'
    end
    if CHARINDEX('产品',@sShowField)>0
    begin
       Set @sField=@sField+',g.ItemKindName,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemUnit,c.SubUnit'
       Set @sGroup=@sGroup+',g.ItemKindName,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemUnit,c.SubUnit'
    end
    if CHARINDEX('仓库',@sShowField)>0
    begin
       Set @sField=@sField+',b.WareId,e.WareName'
       Set @sGroup=@sGroup+',b.WareId,e.WareName'
    end


    
    select @sSqlText='select bSelect=IsNull(a.bSelect,0) '
                      
    Select @sSqlText=@sSqlText+@sField
    
    Select @sSqlText=@sSqlText+',MainNum=Sum(IsNull(b.MainNum,0)),MainMoney=Sum(IsNull(b.MainMoney,0)),
							    SubNum=Sum(IsNull(b.SubNum,0)),SubMoney=Sum(IsNull(b.SubMoney,0)),AllMoney=Sum(IsNull(b.AllMoney,0))
								from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO
								left join ItemTB c on b.ItemId=c.ItemId
								left join WareTB e on b.WareId=e.WareId
								left join vwObject f on a.ObjectID=f.ObjectID
								left join ItemKindTB g on c.ItemKindId=g.ItemKindId
								where 1=1 '
     
    Select @sSqlText=@sSqlText+@sWhere
    
    Select @sSqlText=@sSqlText+' group by IsNull(a.bSelect,0)  '
                                 
    Select @sSqlText=@sSqlText+@sGroup 
    
	execute (@sSqlText)
end
--exec PrWareInOutSumQ '产品仓库往来单位',''
go



--库存预警分析
if Exists (select Name from Sysobjects Where Name='PrSafeStoreQ' and type='P')
  Drop Procedure PrSafeStoreQ
go
Create Procedure PrSafeStoreQ @sWhere Varchar(2000)
As
begin
  exec('select c.ItemKindId,c.ItemKindName,a.ItemId,a.ItemCode,a.ItemName,a.ItemSpc,a.ItemPic,a.ItemUnit,
		b.WareNum,SafeStore=CONVERT(Numeric(18,2),ISNULL(a.SafeStore,0)),
		OverNum=CONVERT(Numeric(18,2),ABS(ISNULL(a.SafeStore,0)-ISNULL(b.WareNum,0)))
		from ItemTB a left join vwItemStorage b on a.ItemId=b.ItemId
		left join ItemKindTB c on a.ItemKindId=c.ItemKindId
		where 1=1  '+@sWhere+' 
		Order by  c.ItemKindId,a.ItemId')
end
--exec PrSafeStoreQ ''
go


--Bom发料查询
if Exists (select Name from Sysobjects Where Name='PrBomMatOutLQ' and type='P')
  Drop Procedure PrBomMatOutLQ
go
Create Procedure PrBomMatOutLQ @sWhere Varchar(2000)
As
begin
  exec('select a.BillDate,a.BillNo,c.ItemCode,c.ItemName,c.ItemSpc,b.MainNum,b.Color,b.AutoNo
		from WareInOutHDTB a left join  BomMatOutDTTB b on a.BillNo=b.BillNo
		left join ItemTB c on b.ItemId=c.ItemId
		where a.WKindID=''MatOut'' '+@sWhere+' order by b.AutoNo')
end
--exec PrBomMatOutLQ ''
go

if Exists (select Name from Sysobjects Where Name='PrBomMatOutRQ' and type='P')
  Drop Procedure PrBomMatOutRQ
go
Create Procedure PrBomMatOutRQ @sWhere Varchar(2000)
As
begin
  exec('select a.BillDate,a.BillNo,c.ItemCode,c.ItemName,c.ItemSpc,b.MainNum,b.Color,b.AutoNo,b.MasterNo
		from WareInOutHDTB a left join  WareInOutDTTB b on a.BillNo=b.BillNo
		left join ItemTB c on b.ItemId=c.ItemId
		where a.WKindID=''MatOut'' '+@sWhere+' order by b.AutoNo')
end
--exec PrBomMatOutRQ ''
go

--库存预警分析自动生成请购单
if exists(select Name from sysobjects where name='prSafeStoreToReq' and type='p')
  Drop procedure dbo.prSafeStoreToReq 
go
Create procedure dbo.prSafeStoreToReq @MakeMan varchar(20)
as
  SET NOCOUNT ON
  
  DECLARE @ReqNo varchar(50),@MakeManName varchar(50),@ErrorStr varchar(200),@MaxAudit Smallint
  BEGIN TRANSACTION
  select @MakeManName=UserName from SysUserTB where EmpId=@MakeMan
   
  Set @ReqNo=''
  exec prGetTableNo 'RequireHDTB','ReqNo',@ReqNo OUTPUT
  if @ReqNo is null
  begin
	  ROLLBACK TRANSACTION 
	  Select ReturStr='请购单前缀没有设置!'
	  return     
  end
  
  select @MaxAudit=MaxAuditLevel from SysTableSetTB where TableId='RequireHDTB'
  --生成请购单表头
  insert into RequireHDTB(ReqNo,ReqDate,DeptId,ReqKind,ReqMan,Remark,
						  MakeDate,MakeMan,MakeManName,AuditFlag,bMaxAudit,AuditManName,AuditDate,MaxAuditDate)       
  Values(@ReqNo,Convert(varchar(20),getdate(),23),'','',@MakeMan,'库存预警分析自动生成请购单',
	          GetDate(),@MakeMan,@MakeManName,@MaxAudit,1,@MakeManName,GetDate(),GetDate())
  if @@error<>0
  begin
	  ROLLBACK TRANSACTION 
	  Select ReturStr='生成请购单表错误!'
	  return 
  end
  InSert into RequireDTTB(AutoNo,ReqNo,ItemId,ItemCode,ItemPYCode,ItemName,ItemSpc,ItemPic,ItemUnit,SubUnit,iFlag,ExchRate,
                          NeedDate,ReqNum,SubNum,LastNum,Remark)
  select dbo.fnGetAutoNo('CheckMoreIn',GetDate()),@ReqNo,a.ItemId,a.ItemCode,a.ItemPYCode,a.ItemName,a.ItemSpc,a.ItemPic,a.ItemUnit,a.SubUnit,a.iFlag,a.ExchRate,
          GETDATE(),ReqNum=ISNULL(a.SafeStore,0)-ISNULL(b.WareNum,0),
          SubNum=case when a.iFlag=1 then (IsNull(a.SafeStore,0)-IsNull(b.WareNum,0))*ISNULL(a.ExchRate,1) else (IsNull(a.SafeStore,0)-IsNull(b.WareNum,0))/dbo.iszero(ISNULL(a.ExchRate,1),1) end,
          LastNum=ISNULL(a.SafeStore,0)-ISNULL(b.WareNum,0),Remark=''
  from ItemTB a left join vwItemStorage b on a.ItemId=b.ItemId
		left join ItemKindTB c on a.ItemKindId=c.ItemKindId
		where ISNULL(a.SafeStore,0)>0 and ISNULL(a.SafeStore,0)>ISNULL(b.WareNum,0)
  if @@error<>0
  begin
	  ROLLBACK TRANSACTION 
	  Select ReturStr='生成请购单体错误!'
	  return 
  end		  
  commit Tran
  
  Select ReturStr='生成成功!'
  
-- Exec prSafeStoreToReq 'admin'
GO


--形态转换查询
if Exists (select Name from Sysobjects Where Name='PrItemSwitchLQ' and type='P')
  Drop Procedure PrItemSwitchLQ
go
Create Procedure PrItemSwitchLQ @sWhere Varchar(2000)
As
begin
  exec('select a.SwitchDate,a.SwitchNo,SwitchKind=Case a.SFlag when 1 then ''出库产品'' when -1 then ''入库产品'' end,
		c.ItemCode,c.ItemName,c.ItemSpc,b.SwitchNum,b.AutoNo
		from ItemSwitchHDTB a left join ItemSwitchDTTB b on a.SwitchNo=b.SwitchNo
		left join ItemTB c on b.ItemId=c.ItemId
		where 1=1 '+@sWhere+' order by b.AutoNo')
end
--exec PrItemSwitchLQ ''
go

if Exists (select Name from Sysobjects Where Name='PrItemSwitchRQ' and type='P')
  Drop Procedure PrItemSwitchRQ
go
Create Procedure PrItemSwitchRQ @sWhere Varchar(2000)
As
begin
  exec('select  b.DetAutoNo,a.SwitchDate,a.SwitchNo,SwitchKind=Case a.SFlag when 1 then ''入库产品'' when -1 then ''出库产品'' end,
		c.ItemCode,c.ItemName,c.ItemSpc,b.SwitchNum,b.AutoNo
		from ItemSwitchHDTB a left join ItemSwitchDT2TB b on a.SwitchNo=b.SwitchNo
		left join ItemTB c on b.ItemId=c.ItemId
		where 1=1 '+@sWhere+' order by b.DetAutoNo')
end
--exec PrItemSwitchRQ ''
go

if Exists (select Name from Sysobjects Where Name='PrMatOutProOrderRf' and type='P')
  Drop Procedure PrMatOutProOrderRf
go
Create Procedure PrMatOutProOrderRf @sWhere Varchar(2000)
As  --未发料出库生产订单查询
begin
  exec('select b.bSelect,a.ProOrderNo,a.MrpDate,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,
		b.ProType,NoOutNum=IsNull(b.FinalNum,0)-IsNull(m.OutNum,0),b.FinalNum,a.Remark,b.AutoID,b.AutoNO
		from ProOrderHDTB a left join ProOrderMatTB b on a.ProOrderNo=b.ProOrderNo
		left join ItemTB c on b.ItemId=c.ItemId
		left join (select OutNum=SUM(ISNULL(b.MainNum,0)),b.ProOrderNo,b.ProOrderId from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO
		where a.WKindID=''MatOut'' and b.ProOrderId is not null group by b.ProOrderNo,b.ProOrderId)m on b.ProOrderNo=m.ProOrderNo and b.AutoNo=m.ProOrderId
		where 1=1 and IsNull(b.FinalNum,0)>IsNull(m.OutNum,0)'+@sWhere)
end
--exec PrMatOutProOrderRf ''
go

if Exists (select Name from Sysobjects Where Name='PrProductInProOrderRf' and type='P')
  Drop Procedure PrProductInProOrderRf
go
Create Procedure PrProductInProOrderRf @sWhere Varchar(2000)
As  --未产品入库生产订单查询
begin
  exec('select b.bSelect,a.ProOrderNo,a.MrpDate,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,
		b.ProType,NoInNum=IsNull(b.FinalNum,0)-IsNull(m.InNum,0),b.FinalNum,a.Remark,b.AutoID,b.AutoNO
		from ProOrderHDTB a left join ProOrderProTB b on a.ProOrderNo=b.ProOrderNo
		left join ItemTB c on b.ItemId=c.ItemId
		left join (select InNum=SUM(ISNULL(b.MainNum,0)),b.ProOrderNo,b.ProOrderId from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO
		where a.WKindID=''ProductIn'' and b.ProOrderId is not null group by b.ProOrderNo,b.ProOrderId)m on b.ProOrderNo=m.ProOrderNo and b.AutoNo=m.ProOrderId
		where 1=1 and IsNull(b.FinalNum,0)>IsNull(m.InNum,0)'+@sWhere)
end
--exec PrProductInProOrderRf ''
go

--BOM发料产品查询
if Exists (select Name from Sysobjects Where Name='PrBOMMatOutItemQ' and type='P')
  Drop Procedure PrBOMMatOutItemQ
go
Create Procedure PrBOMMatOutItemQ @sWhere Varchar(2000)
As
begin
  exec('select a.bSelect,a.TempNum,a.ItemCode,a.ItemPYCode,a.ItemName,a.ItemSpc,a.ItemUnit,a.ItemParam,a.ItemKindId,b.ItemKindName,c.WareNum,a.ItemId
		from ItemTB a left join ItemKindTB b on a.ItemKindId=b.ItemKindId
		left join vwItemStorage c on a.ItemId=c.ItemId
		where IsNull(a.bStop,0)=0 and Exists (select BillNo from ItemBomHDTB m where a.ItemId=m.ItemId)  '+@sWhere+' 
		Order by  b.ItemKindId,a.ItemId')
end
--exec PrBOMMatOutItemQ ''
go


--添加财务日期
if Exists(select Name from sysobjects where name='prSetFinaceDate' and type='p')
  Drop procedure dbo.prSetFinaceDate
go
create procedure dbo.prSetFinaceDate  @StartDate DateTime,@MonCount int
as
begin
  Declare @i int,@HaveUse smallint
  Declare @TempTB Table (MonAccount varchar(30),StartDate DateTime,EndDate DateTime,bUse bit)
  Set @i=0
  Set @HaveUse=0
  while @MonCount>@i
  begin
    if exists (select MonthNo from FinanceDateTB where ISNULL(bNow,0)=1)
        Set @HaveUse=1
    Insert Into @TempTB(MonAccount,StartDate,EndDate,bUse)
    select Left(CONVERT(varchar(20),DateAdd(Month,@i,@StartDate),112),6),DateAdd(Month,@i,@StartDate),DateAdd(Day,-1,DateAdd(Month,@i+1,@StartDate)),Case when @HaveUse=0 and @i=0 then 1 else 0 end
    Set @i=@i+1    
  end
  Insert Into FinanceDateTB(MonthNo,BeginDate,EndDate,bNow)
  select * from @TempTB
  select Null
end
go

--exec prSetFinaceDate '2011-03-15',12                                                       

--仓库月结显示

if exists(select name from sysobjects where name='prShowMonthNo' and type='p')
  Drop Procedure dbo.prShowMonthNo
go
create procedure dbo.prShowMonthNo  
as
begin
  Declare @TempTB Table (MonthNO varchar(6))
   insert into @TempTB(MonthNO)
   select distinct AccountNo from WareAccountTB where LastNum is not null
   select MonthNO,BeginDate,EndDate,IsAccount=case when MonthNO in (select MonthNO from @TempTB ) then '是' else '否' end 
   from FinanceDateTB where MonthNO>=(select WareStartMon from SysParamTB) 
   
end
go
-- exec prShowMonthNo

--仓库期初记账
if Exists(select Name from sysobjects where name='prWareFirstAccount' and type='p')
  Drop procedure dbo.prWareFirstAccount
go
create proc dbo.prWareFirstAccount @AccountMan varchar(20),@AccountFlag int  --1 表示记帐 0 表示反记帐

as
  SET NOCOUNT ON
  declare @IntErrCode int,@BreakPoint varchar(20),@StartMonth varchar(6)  --系统启用月份
  
  select @StartMonth=isnull(WareStartMon,'') from SysParamTB
  if @StartMonth=''
  begin
    select '公司设置中没有指定仓库启用月份!' as ReturStr
    return
  end

  BEGIN TRANSACTION 
  set @BreakPoint=1000000000
  if @AccountFlag=1       --记帐
  begin    
      select @IntErrCode=@@error   
      if @IntErrCode=0
      begin 
          set @BreakPoint=101            
          --先插入库存表中没有的数据       
          insert into WareStorageTB(WareId,ItemId,ProType,Color,BatchNo,PlaceNo,CompactNo,ObjectID,SjNo,sOrderNO,TechName,InDate,PState,TempNo)
          select distinct WareId,ItemId,ProType=ISNULL(ProType,''),Color=ISNULL(Color,''),BatchNo=ISNULL(BatchNo,''),PlaceNo=ISNULL(PlaceNo,''), 
                 CompactNo=ISNULL(CompactNo,''),ObjectID=ISNULL(ObjectID,''),SjNo=ISNULL(SjNo,''),
                 sOrderNO=ISNULL(sOrderNO,''),TechName=ISNULL(TechName,''),InDate=ISNULL(InDate,''),PState=ISNULL(InDate,''),TempNo=ISNULL(TempNo,'')
                 from WareAccountTB a where AccountNo=@StartMonth and not exists(select m.AutoId from WareStorageTB m where a.ItemId=m.ItemId and a.WareId=m.WareId and Isnull(a.ProType,'')=Isnull(m.ProType,'') and Isnull( a.Color,'')=Isnull(m.Color,'') 
			     and Isnull( a.BatchNo,'')=Isnull(m.BatchNo,'') and Isnull(a.PlaceNo,'')=Isnull(m.PlaceNo,'') and Isnull(a.CompactNo,'')=Isnull(m.CompactNo,'') and Isnull(a.ObjectID,'')=Isnull(m.ObjectID,'') and Isnull(a.SjNo,'')=Isnull(m.SjNo,'') 
			     and Isnull(a.sOrderNO,'')=Isnull(m.sOrderNO,'') and Isnull(a.TechName,'')=Isnull(m.TechName,'') and Isnull(a.InDate,'')=Isnull(m.InDate,'') and Isnull(a.PState,'')=Isnull(m.PState,'') and Isnull(a.TempNo,'')=Isnull(m.TempNo,'')) 
           select @IntErrCode=@@error
      end
      if @IntErrCode=0
      begin
          set @BreakPoint=102
          --记账更新库存数量
          update WareStorageTB  set Warenum=isnull(Warenum,0)+FirstNum,
            WarePrice=(Isnull(Warenum,0)*Isnull(WarePrice,0)+FirstMoney)/dbo.IsZero((Isnull(WareNum,0)+Isnull(FirstNum,0)),1) from 
           (select WareId,ItemId,ProType=ISNULL(ProType,''),Color=ISNULL(Color,''),BatchNo=ISNULL(BatchNo,''),PlaceNo=ISNULL(PlaceNo,''), 
            CompactNo=ISNULL(CompactNo,''),ObjectID=ISNULL(ObjectID,''),SjNo=ISNULL(SjNo,''),sOrderNO=ISNULL(sOrderNO,''),TechName=ISNULL(TechName,''),InDate=ISNULL(InDate,''),
            PState=ISNULL(PState,''),TempNo=ISNULL(TempNo,''),FirstNum=SUM(ISNULL(FirstNum,0)),FirstMoney=SUM(isnull(FirstMoney,0))
            from WareAccountTB  where AccountNo=@StartMonth
            group by WareId,ItemId,ISNULL(ProType,''),ISNULL(Color,''),ISNULL(BatchNo,''),ISNULL(PlaceNo,''),ISNULL(CompactNo,''),ISNULL(ObjectID,''), 
            ISNULL(SjNo,''),ISNULL(sOrderNO,''),ISNULL(TechName,''),ISNULL(InDate,''),ISNULL(PState,''),ISNULL(TempNo,''))a
            where a.ItemId=WareStorageTB.ItemId and a.WareId=WareStorageTB.WareId and Isnull(a.ProType,'')=Isnull(WareStorageTB.ProType,'') and Isnull( a.Color,'')=Isnull(WareStorageTB.Color,'') 
			     and Isnull( a.BatchNo,'')=Isnull(WareStorageTB.BatchNo,'') and Isnull(a.PlaceNo,'')=Isnull(WareStorageTB.PlaceNo,'') and Isnull(a.CompactNo,'')=Isnull(WareStorageTB.CompactNo,'') and Isnull(a.ObjectID,'')=Isnull(WareStorageTB.ObjectID,'') and Isnull(a.SjNo,'')=Isnull(WareStorageTB.SjNo,'') 
			     and Isnull(a.sOrderNO,'')=Isnull(WareStorageTB.sOrderNO,'') and Isnull(a.TechName,'')=Isnull(WareStorageTB.TechName,'') and Isnull(a.InDate,'')=Isnull(WareStorageTB.InDate,'') and Isnull(a.PState,'')=Isnull(WareStorageTB.PState,'') and Isnull(a.TempNo,'')=Isnull(WareStorageTB.TempNo,'')
          select @IntErrCode=@@error
      end
      --是否需要备份本次记账信息
      set @BreakPoint=103         
      update WareAccountTB set AccountFlag='已记账' where AccountNo=@StartMonth and (isnull(AccountFlag,'')='' or isnull(AccountFlag,'')='未记账')
      select @IntErrCode=@@error
      if @IntErrCode=0
      begin
          COMMIT TRANSACTION
          select '记帐成功!' as ReturStr
      end
      else
      begin
          ROLLBACK TRANSACTION
          select '记帐失败!' as ReturStr
      end
  end 
  else  --反记帐
  begin                         
        --判断库存是否够，不够退出反记账
      if exists(select m.ItemId from
     (select WareId,ItemId,ProType=ISNULL(ProType,''),Color=ISNULL(Color,''),BatchNo=ISNULL(BatchNo,''),PlaceNo=ISNULL(PlaceNo,''), 
       CompactNo=ISNULL(CompactNo,''),ObjectID=ISNULL(ObjectID,''),SjNo=ISNULL(SjNo,''),
       sOrderNO=ISNULL(sOrderNO,''),TechName=ISNULL(TechName,''),InDate=ISNULL(InDate,''),PState=ISNULL(PState,''),TempNo=ISNULL(TempNo,''),FirstNum=SUM(ISNULL(FirstNum,0))
       from WareAccountTB where AccountNo=@StartMonth 
       group by WareId,ItemId,ISNULL(ProType,''),ISNULL(Color,''),ISNULL(BatchNo,''),ISNULL(PlaceNo,''),ISNULL(CompactNo,''),ISNULL(ObjectID,''), 
       ISNULL(SjNo,''),ISNULL(sOrderNO,''),ISNULL(TechName,''),ISNULL(InDate,''),ISNULL(PState,''),ISNULL(TempNo,''))m
       left join WareStorageTB n on m.ItemId=n.ItemId and m.WareId=n.WareId and m.ProType=n.ProType and m.Color=n.Color and m.BatchNo=n.BatchNo and m.PlaceNo=n.PlaceNo
       and m.CompactNo=n.CompactNo and m.ObjectID=n.ObjectID and m.SjNo=n.SjNo and m.sOrderNO=n.sOrderNO and m.TechName=n.TechName and m.InDate=n.InDate and m.PState=n.PState and m.TempNo=n.TempNo
       where m.FirstNum>Isnull(n.WareNum,0))
       begin
            Rollback Tran
            select '库存不够，不能反记帐!' as ReturStr
            return
       end 
       select @IntErrCode=@@error   
       if @IntErrCode=0
      begin
          --反记帐减去库存量  (须考虑是否删除商品.如果有出入库存在只能减库存)
          set @BreakPoint=1000000005
           update WareStorageTB  set Warenum=isnull(Warenum,0)-FirstNum,
           WarePrice=(Isnull(Warenum,0)*Isnull(WarePrice,0)-FirstMoney)/dbo.IsZero((Isnull(WareNum,0)-Isnull(FirstNum,0)),1) from 
           (select WareId,ItemId,ProType=ISNULL(ProType,''),Color=ISNULL(Color,''),BatchNo=ISNULL(BatchNo,''),PlaceNo=ISNULL(PlaceNo,''), 
            CompactNo=ISNULL(CompactNo,''),ObjectID=ISNULL(ObjectID,''),SjNo=ISNULL(SjNo,''),sOrderNO=ISNULL(sOrderNO,''),TechName=ISNULL(TechName,''),InDate=ISNULL(InDate,''),
            PState=ISNULL(PState,''),TempNo=ISNULL(TempNo,''),FirstNum=SUM(ISNULL(FirstNum,0)),FirstMoney=SUM(isnull(FirstMoney,0))
            from WareAccountTB  where AccountNo=@StartMonth
            group by WareId,ItemId,ISNULL(ProType,''),ISNULL(Color,''),ISNULL(BatchNo,''),ISNULL(PlaceNo,''),ISNULL(CompactNo,''),ISNULL(ObjectID,''), 
            ISNULL(SjNo,''),ISNULL(sOrderNO,''),ISNULL(TechName,''),ISNULL(InDate,''),ISNULL(PState,''),ISNULL(TempNo,''))a
            where a.ItemId=WareStorageTB.ItemId and a.WareId=WareStorageTB.WareId and Isnull(a.ProType,'')=Isnull(WareStorageTB.ProType,'') and Isnull( a.Color,'')=Isnull(WareStorageTB.Color,'') 
			     and Isnull( a.BatchNo,'')=Isnull(WareStorageTB.BatchNo,'') and Isnull(a.PlaceNo,'')=Isnull(WareStorageTB.PlaceNo,'') and Isnull(a.CompactNo,'')=Isnull(WareStorageTB.CompactNo,'') and Isnull(a.ObjectID,'')=Isnull(WareStorageTB.ObjectID,'') and Isnull(a.SjNo,'')=Isnull(WareStorageTB.SjNo,'') 
			     and Isnull(a.sOrderNO,'')=Isnull(WareStorageTB.sOrderNO,'') and Isnull(a.TechName,'')=Isnull(WareStorageTB.TechName,'') and Isnull(a.InDate,'')=Isnull(WareStorageTB.InDate,'') and Isnull(a.PState,'')=Isnull(WareStorageTB.PState,'') and Isnull(a.TempNo,'')=Isnull(WareStorageTB.TempNo,'')
          select @IntErrCode=@@error
      end  
      update WareAccountTB set AccountFlag='未记账' where AccountNo=@StartMonth and AccountFlag='已记账'        
      select @IntErrCode=@@error
      if @IntErrCode=0
      begin
          COMMIT TRANSACTION
          select '反记帐成功!' as ReturStr
      end
      else
      begin
          ROLLBACK TRANSACTION
          select '反记帐失败!' as ReturStr
      end
  end
go

--exec prWareFirstAccount 'admin',-1

--判断库存是否够
if Exists(select Name from sysobjects where name='PrCheckWareNum' and type='p')
  Drop procedure dbo.prCheckWareNum
go
Create Procedure dbo.prCheckWareNum @BillNO varchar(20)
as

declare @PrintOut varchar(8000)
declare @TempTable table(Z varchar(8000))
set @PrintOut=''
 insert into @TempTable (Z) 
    select Z='【'+Convert(varchar(60),d.WareName)+'】：'+Convert(varchar(60),c.ItemName)+'  <'+Convert(varchar(20),CONVERT(Numeric(18,2),ISNULL(a.MainNum,0)-ISNULL(b.WareNum,0)))+'>' from 
     (select  WareId,ItemId,ProType=ISNULL(ProType,''),Color=ISNULL(Color,''),BatchNo=ISNULL(BatchNo,''),PlaceNo=ISNULL(PlaceNo,''), CompactNo=ISNULL(CompactNo,''),ObjectID=ISNULL(ObjectID,''),SjNo=ISNULL(SjNo,''),
             sOrderNO=ISNULL(sOrderNO,''),TechName=ISNULL(TechName,''),InDate=ISNULL(InDate,''),PState=ISNULL(InDate,''),TempNo=ISNULL(TempNo,''),MainNum=SUM(ISNULL(MainNum,0))
             from WareInOutDTTB with (NoLock) where BIllNO=@BillNO group by   WareId,ItemId,ISNULL(ProType,''),ISNULL(Color,''),ISNULL(BatchNo,''),ISNULL(PlaceNo,''),ISNULL(CompactNo,''),ISNULL(ObjectID,''), 
             ISNULL(SjNo,''),ISNULL(sOrderNO,''),ISNULL(TechName,''),ISNULL(InDate,''),ISNULL(PState,''),ISNULL(TempNo,'')) a left join WareStorageTB b with (NoLock) on 
             a.ItemId=b.ItemId and a.WareId=b.WareId and Isnull(a.ProType,'')=Isnull(b.ProType,'') and Isnull( a.Color,'')=Isnull(b.Color,'') 
			     and Isnull( a.BatchNo,'')=Isnull(b.BatchNo,'') and Isnull(a.PlaceNo,'')=Isnull(b.PlaceNo,'') and Isnull(a.CompactNo,'')=Isnull(b.CompactNo,'') and Isnull(a.ObjectID,'')=Isnull(b.ObjectID,'') and Isnull(a.SjNo,'')=Isnull(b.SjNo,'') 
			     and Isnull(a.sOrderNO,'')=Isnull(b.sOrderNO,'') and Isnull(a.TechName,'')=Isnull(b.TechName,'') and Isnull(a.InDate,'')=Isnull(b.InDate,'') and Isnull(a.PState,'')=Isnull(b.PState,'') and Isnull(a.TempNo,'')=Isnull(b.TempNo,'')
		   left join ItemTB c with (NoLock) on a.ItemId=c.ItemId left join WareTB d with (NoLock) on a.WareId=d.WareId	   
          where ISNULL(a.MainNum,0)>ISNULL(b.WareNum,0)  and ISNULL(d.bNoCheck,0)=0 and ISNULL(c.bNoCheckWareNum,0)=0

if exists (select Z from @TempTable )
begin
   select @PrintOut=@PrintOut+Z+',' from @TempTable
end
select CheckResult=@PrintOut
--exec prCheckWareNum 'CGRK1106190001'
go


--判断采购收货库存是否够
if Exists(select Name from sysobjects where name='PrCheckStockReceNum' and type='p')
  Drop procedure dbo.PrCheckStockReceNum
go
Create Procedure dbo.PrCheckStockReceNum @StockReceNo varchar(20)
as
declare @PrintOut varchar(8000)
declare @TempTable table(Z varchar(8000))
set @PrintOut=''

   insert into @TempTable (Z) 
    select Z='【'+Convert(varchar(60),d.WareName)+'】：'+Convert(varchar(60),c.ItemName)+'  <'+Convert(varchar(20),CONVERT(Numeric(18,2),ISNULL(a.MainNum,0)-ISNULL(b.WareNum,0)))+'>' from 
     (select  WareId=b.ReceWareId,b.ItemId,ProType=ISNULL(b.ProType,''),Color=ISNULL(b.Color,''),BatchNo=ISNULL(b.BatchNo,''),PlaceNo=ISNULL(b.PlaceNo,''), CompactNo=ISNULL(b.CompactNo,''),ObjectID=ISNULL(b.ObjectID,''),SjNo=ISNULL(b.SjNo,''),
             sOrderNO=ISNULL(b.sOrderNO,''),TechName=ISNULL(b.TechName,''),InDate=ISNULL(b.InDate,''),PState=ISNULL(b.PState,''),TempNo=ISNULL(b.TempNo,''),MainNum=SUM(ISNULL(b.ReceNum,0))
             from StockReceHDTB a with (NoLock) left join StockReceDTTB b on a.StockReceNo=b.StockReceNo where a.StockReceNo=@StockReceNo group by   b.ReceWareId,b.ItemId,ISNULL(b.ProType,''),ISNULL(b.Color,''),ISNULL(b.BatchNo,''),ISNULL(b.PlaceNo,''),ISNULL(b.CompactNo,''),ISNULL(b.ObjectID,''), 
             ISNULL(b.SjNo,''),ISNULL(b.sOrderNO,''),ISNULL(b.TechName,''),ISNULL(b.InDate,''),ISNULL(b.PState,''),ISNULL(b.TempNo,'')
       Union all
       select  WareId=b.NoPassWareId,b.ItemId,ProType=ISNULL(b.ProType,''),Color=ISNULL(b.Color,''),BatchNo=ISNULL(b.BatchNo,''),PlaceNo=ISNULL(b.PlaceNo,''), CompactNo=ISNULL(b.CompactNo,''),ObjectID=ISNULL(b.ObjectID,''),SjNo=ISNULL(b.SjNo,''),
             sOrderNO=ISNULL(b.sOrderNO,''),TechName=ISNULL(b.TechName,''),InDate=ISNULL(b.InDate,''),PState='不合格',TempNo=ISNULL(b.TempNo,''),MainNum=SUM(ISNULL(b.NoPassNum,0))
             from StockReceHDTB a with (NoLock) left join StockReceDTTB b on a.StockReceNo=b.StockReceNo where a.StockReceNo=@StockReceNo group by   b.NoPassWareId,b.ItemId,ISNULL(b.ProType,''),ISNULL(b.Color,''),ISNULL(b.BatchNo,''),ISNULL(b.PlaceNo,''),ISNULL(b.CompactNo,''),ISNULL(b.ObjectID,''), 
             ISNULL(b.SjNo,''),ISNULL(b.sOrderNO,''),ISNULL(b.TechName,''),ISNULL(b.InDate,''),ISNULL(b.PState,''),ISNULL(b.TempNo,'')) a 
      left join WareStorageTB b with (NoLock) on 
                a.ItemId=b.ItemId and a.WareId=b.WareId and Isnull(a.ProType,'')=Isnull(b.ProType,'') and Isnull( a.Color,'')=Isnull(b.Color,'') 
			    and Isnull( a.BatchNo,'')=Isnull(b.BatchNo,'') and Isnull(a.PlaceNo,'')=Isnull(b.PlaceNo,'') and Isnull(a.CompactNo,'')=Isnull(b.CompactNo,'') and Isnull(a.ObjectID,'')=Isnull(b.ObjectID,'') and Isnull(a.SjNo,'')=Isnull(b.SjNo,'') 
			    and Isnull(a.sOrderNO,'')=Isnull(b.sOrderNO,'') and Isnull(a.TechName,'')=Isnull(b.TechName,'') and Isnull(a.InDate,'')=Isnull(b.InDate,'') and Isnull(a.PState,'')=Isnull(b.PState,'') and Isnull(a.TempNo,'')=Isnull(b.TempNo,'')
	  left join ItemTB c with (NoLock) on a.ItemId=c.ItemId 
	  left join WareTB d with (NoLock) on a.WareId=d.WareId	   
      where ISNULL(a.MainNum,0)>ISNULL(b.WareNum,0)  and ISNULL(d.bNoCheck,0)=0 and ISNULL(c.bNoCheckWareNum,0)=0
      
if exists (select Z from @TempTable )
begin
   select @PrintOut=@PrintOut+Z+',' from @TempTable
end
select CheckResult=@PrintOut

--exec PrCheckStockReceNum 'CGSH131019205201'
go

--加减出入库库存数量
if Exists(select Name from sysobjects where name='prUpDateInOutWareNum' and type='p')
  Drop procedure dbo.prUpDateInOutWareNum
go
Create Procedure dbo.prUpDateInOutWareNum @BillNo varchar(20),@IoFlag int  

as
declare @HasError smallint,@WFlag Smallint

  select @WFlag=WFlag from WareInOutHDTB where BillNO=@BillNo

  --先插入没有的
  insert into WareStorageTB(WareId,ItemId,ProType,Color,BatchNo,PlaceNo,CompactNo,ObjectID,SjNo,sOrderNO,TechName,InDate,PState,TempNo)
   select distinct WareId,ItemId,ProType=ISNULL(ProType,''),Color=ISNULL(Color,''),BatchNo=ISNULL(BatchNo,''),PlaceNo=ISNULL(PlaceNo,''), 
                 CompactNo=ISNULL(CompactNo,''),ObjectID=ISNULL(ObjectID,''),SjNo=ISNULL(SjNo,''),
                 sOrderNO=ISNULL(sOrderNO,''),TechName=ISNULL(TechName,''),InDate=ISNULL(InDate,''),PState=ISNULL(PState,''),TempNo=ISNULL(TempNo,'')
   from WareInOutDTTB a with (NoLock) where BillNO=@BillNo and not exists(select m.AutoId from WareStorageTB m with (NoLock) where a.ItemId=m.ItemId and a.WareId=m.WareId and Isnull(a.ProType,'')=Isnull(m.ProType,'') and Isnull( a.Color,'')=Isnull(m.Color,'') 
			     and Isnull( a.BatchNo,'')=Isnull(m.BatchNo,'') and Isnull(a.PlaceNo,'')=Isnull(m.PlaceNo,'') and Isnull(a.CompactNo,'')=Isnull(m.CompactNo,'') and Isnull(a.ObjectID,'')=Isnull(m.ObjectID,'') and Isnull(a.SjNo,'')=Isnull(m.SjNo,'') 
			     and Isnull(a.sOrderNO,'')=Isnull(m.sOrderNO,'') and Isnull(a.TechName,'')=Isnull(m.TechName,'') and Isnull(a.InDate,'')=Isnull(m.InDate,'') and Isnull(a.PState,'')=Isnull(m.PState,'') and Isnull(a.TempNo,'')=Isnull(m.TempNo,'')) 
			     
if @IoFlag=1 --加库存
begin
  begin tran  
  select @HasError=@@Error
   --如果是入库单审核加库存就用加权平均法计算库存单价,如果是出库反审核就不计算
   update WareStorageTB  set WareNum=isnull(WareNum,0)+ISNULL(a.MainNum,0),WarePrice=Case @WFlag when 1 then (IsNull(WareNum,0)*ISNULL(WarePrice,0)+IsNull(a.AllMoney,0))/dbo.IsZero(IsNull(WareNum,0)+IsNull(a.MainNum,0),null) else WarePrice end from
           (select WareId,ItemId,ProType=ISNULL(ProType,''),Color=ISNULL(Color,''),BatchNo=ISNULL(BatchNo,''),PlaceNo=ISNULL(PlaceNo,''), 
            CompactNo=ISNULL(CompactNo,''),ObjectID=ISNULL(ObjectID,''),SjNo=ISNULL(SjNo,''),sOrderNO=ISNULL(sOrderNO,''),TechName=ISNULL(TechName,''),InDate=ISNULL(InDate,''),
            PState=ISNULL(PState,''),TempNo=ISNULL(TempNo,''),MainNum=SUM(ISNULL(MainNum,0)),MainMoney=SUM(isnull(MainMoney,0)),AllMoney=SUM(isnull(AllMoney,0))
            from WareInOutDTTB with (NoLock) where BillNO=@BillNO
            group by WareId,ItemId,ISNULL(ProType,''),ISNULL(Color,''),ISNULL(BatchNo,''),ISNULL(PlaceNo,''),ISNULL(CompactNo,''),ISNULL(ObjectID,''), 
            ISNULL(SjNo,''),ISNULL(sOrderNO,''),ISNULL(TechName,''),ISNULL(InDate,''),ISNULL(PState,''),ISNULL(TempNo,''))a
            where a.ItemId=WareStorageTB.ItemId and a.WareId=WareStorageTB.WareId and Isnull(a.ProType,'')=Isnull(WareStorageTB.ProType,'') and Isnull( a.Color,'')=Isnull(WareStorageTB.Color,'') 
			     and Isnull( a.BatchNo,'')=Isnull(WareStorageTB.BatchNo,'') and Isnull(a.PlaceNo,'')=Isnull(WareStorageTB.PlaceNo,'') and Isnull(a.CompactNo,'')=Isnull(WareStorageTB.CompactNo,'') and Isnull(a.ObjectID,'')=Isnull(WareStorageTB.ObjectID,'') and Isnull(a.SjNo,'')=Isnull(WareStorageTB.SjNo,'') 
			     and Isnull(a.sOrderNO,'')=Isnull(WareStorageTB.sOrderNO,'') and Isnull(a.TechName,'')=Isnull(WareStorageTB.TechName,'') and Isnull(a.InDate,'')=Isnull(WareStorageTB.InDate,'') and Isnull(a.PState,'')=Isnull(WareStorageTB.PState,'') and Isnull(a.TempNo,'')=Isnull(WareStorageTB.TempNo,'')

  select @HasError=@@Error 
  if (@HasError=0) 
    Commit tran
  else
   Rollback tran
end
else if @IoFlag=-1 --减库存
begin
  begin tran
     --如果是入库单反审核减库存就用加权平均法计算库存单价,如果是出库审核就不计算 
     update WareStorageTB  set Warenum=isnull(Warenum,0)-ISNULL(a.MainNum,0),WarePrice=Case @WFlag when 1 then (IsNull(WareNum,0)*ISNULL(WarePrice,0)-IsNull(a.AllMoney,0))/dbo.IsZero(IsNull(WareNum,0)-IsNull(a.MainNum,0),null) else WarePrice end from
           (select WareId,ItemId,ProType=ISNULL(ProType,''),Color=ISNULL(Color,''),BatchNo=ISNULL(BatchNo,''),PlaceNo=ISNULL(PlaceNo,''), 
            CompactNo=ISNULL(CompactNo,''),ObjectID=ISNULL(ObjectID,''),SjNo=ISNULL(SjNo,''),sOrderNO=ISNULL(sOrderNO,''),TechName=ISNULL(TechName,''),InDate=ISNULL(InDate,''),
            PState=ISNULL(PState,''),TempNo=ISNULL(TempNo,''),MainNum=SUM(ISNULL(MainNum,0)),MainMoney=SUM(isnull(MainMoney,0)),AllMoney=SUM(isnull(AllMoney,0))
            from WareInOutDTTB with (NoLock) where BillNO=@BillNO
            group by WareId,ItemId,ISNULL(ProType,''),ISNULL(Color,''),ISNULL(BatchNo,''),ISNULL(PlaceNo,''),ISNULL(CompactNo,''),ISNULL(ObjectID,''), 
            ISNULL(SjNo,''),ISNULL(sOrderNO,''),ISNULL(TechName,''),ISNULL(InDate,''),ISNULL(PState,''),ISNULL(TempNo,''))a
            where a.ItemId=WareStorageTB.ItemId and a.WareId=WareStorageTB.WareId and Isnull(a.ProType,'')=Isnull(WareStorageTB.ProType,'') and Isnull( a.Color,'')=Isnull(WareStorageTB.Color,'') 
			     and Isnull( a.BatchNo,'')=Isnull(WareStorageTB.BatchNo,'') and Isnull(a.PlaceNo,'')=Isnull(WareStorageTB.PlaceNo,'') and Isnull(a.CompactNo,'')=Isnull(WareStorageTB.CompactNo,'') and Isnull(a.ObjectID,'')=Isnull(WareStorageTB.ObjectID,'') and Isnull(a.SjNo,'')=Isnull(WareStorageTB.SjNo,'') 
			     and Isnull(a.sOrderNO,'')=Isnull(WareStorageTB.sOrderNO,'') and Isnull(a.TechName,'')=Isnull(WareStorageTB.TechName,'') and Isnull(a.InDate,'')=Isnull(WareStorageTB.InDate,'') and Isnull(a.PState,'')=Isnull(WareStorageTB.PState,'') and Isnull(a.TempNo,'')=Isnull(WareStorageTB.TempNo,'')
  select @HasError=@@Error 
  if @@error=0
    Commit tran
  else
    rollback tran
end
select null
--exec prUpDateInOutWareNum 'CGRK1310190001',1
go

if exists(select Name from sysobjects where name='PrStockReceAudit' and type='p')
  Drop procedure dbo.PrStockReceAudit
go
Create procedure dbo.PrStockReceAudit @StockReceNo varchar(30),@IFlag int
as
begin
--入库
  DECLARE @IoNo VARCHAR(30),@String varchar(100),@ReceDate Datetime,@SubjoinTableId varchar(50),@MaxAudit smallint,@bMaxAudit bit
  BEGIN TRANSACTION
  if @IFlag=1 
  begin
	  Select @ReceDate=ReceDate from StockReceHDTB where StockReceNo=@StockReceNo
	  if exists(select StockReceNo from StockReceDTTB where StockReceNo=@StockReceNo and (IsNull(ReceNum,0)>0 or IsNull(NoPassNum,0)>0))
	  begin
	      Set @IoNo=''
		  exec prGetTableNo 'StockIn','BillNo',@IoNo OUTPUT
		  if @IoNo is null
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='<采购入库单前缀没有设置!>'
			  RAISERROR(@string,16,1)
			  return     
		  end
		  select @MaxAudit=MaxAuditLevel from SysTableSetTB where TableId='ItemMoveIn'
		  --采购入库表头
		  insert into WareInOutHDTB(BillNo,WKindID,WFlag,SignFlag,BillDate,WareMan,ObjectID,SubjoinNo,SubjoinTableId,
								  MakeDate,MakeMan,MakeManName,AuditFlag,bMaxAudit,AuditMan,AuditManName,AuditDate,MaxAuditDate,Remark,bAuto)       
		   select @IoNo,'StockIn',1,1,@ReceDate,MakeMan,PrvId,StockReceNo,'StockReceNo',getdate(),MakeMan,MakeManName,@MaxAudit,1,AuditMan,AuditManName,GetDate(),GetDate(),'采购收货单自动生成采购入库',1 from StockReceHDTB where StockReceNo=@StockReceNo
		  if @@error<>0
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='<采购入库单表头插入错误！>'
			  RAISERROR(@string,16,1)
			  return 
		  end

			--采购入库表体
		  insert into WareInOutDTTB (AutoNo,BillNo,WareId,ItemId,ItemCode,ItemName,ItemSpc,ItemPic,ItemUnit,SubUnit,ExchRate,iFlag,ProType ,Color,BatchNo ,PlaceNo ,CompactNo ,ObjectId,
								   SjNo ,sOrderNo ,TechName ,InDate,PState ,TempNo,MainNum,MainPrice,TaxPrice,MainMoney,AllMoney,SubNum,SubPrice,SubTaxPrice,SubMoney,SubJOinNO,StockNo,StockId,StockRecNo,StockRecId,Remark)
		  --合格品
		  select dbo.fnGetAutoNo('StockIn',GetDate()),@IoNo,b.ReceWareId,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemPic,c.ItemUnit,c.SubUnit,c.ExchRate,c.iFlag,b.ProType ,b.Color,b.BatchNo ,b.PlaceNo ,b.CompactNo ,b.ObjectId,
								   b.SjNo ,b.sOrderNo ,b.TechName ,b.InDate,b.PState ,b.TempNo,IsNull(ReceNum,0),b.RecePrice,b.RecePrice,MainMoney=IsNull(ReceNum,0)*ISNULL(b.RecePrice,0),allMoney=IsNull(ReceNum,0)*ISNULL(b.TaxPrice,0),
								   SubNum=case when c.iFlag=1 then IsNull(ReceNum,0)*ISNULL(c.ExchRate,1) else IsNull(ReceNum,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) end,
								   Subprice=case when c.iFlag=1 then IsNull(b.RecePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.RecePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubTaxPrice=case when c.iFlag=1 then IsNull(b.RecePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.RecePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubMoney=IsNull(ReceNum,0)*ISNULL(b.RecePrice,0),
								   b.AutoNo,b.StockOrderNo,b.StockOrderId,b.StockReceNo,b.AutoNo,'采购收货单自动生成采购入库'
			from StockReceHDTB a left join StockReceDTTB b on a.StockReceNo=b.StockReceNo 
			left join ItemTB c on b.ItemID=c.ItemID 
			where a.StockReceNo=@StockReceNo and IsNull(ReceNum,0)>0
			--不合格品
			Union all
			select dbo.fnGetAutoNo('StockIn',GetDate()),@IoNo,b.NoPassWareId,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemPic,c.ItemUnit,c.SubUnit,c.ExchRate,c.iFlag,b.ProType ,b.Color,b.BatchNo ,b.PlaceNo ,b.CompactNo ,b.ObjectId,
								   b.SjNo ,b.sOrderNo ,b.TechName ,b.InDate,PState='不合格' ,b.TempNo,IsNull(NoPassNum,0),b.RecePrice,b.RecePrice,MainMoney=IsNull(NoPassNum,0)*ISNULL(b.RecePrice,0),allMoney=IsNull(NoPassNum,0)*ISNULL(b.TaxPrice,0),
								   SubNum=case when c.iFlag=1 then IsNull(NoPassNum,0)*ISNULL(c.ExchRate,1) else IsNull(NoPassNum,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) end,
								   Subprice=case when c.iFlag=1 then IsNull(b.RecePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.RecePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubTaxPrice=case when c.iFlag=1 then IsNull(b.RecePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.RecePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubMoney=IsNull(NoPassNum,0)*ISNULL(b.RecePrice,0),
								   b.AutoNo,b.StockOrderNo,b.StockOrderId,b.StockReceNo,b.AutoNo,'采购收货单自动生成采购入库'
			from StockReceHDTB a left join StockReceDTTB b on a.StockReceNo=b.StockReceNo 
			left join ItemTB c on b.ItemID=c.ItemID 
			where a.StockReceNo=@StockReceNo and IsNull(NoPassNum,0)>0
			
		  if @@error<>0
		  begin
			 ROLLBACK TRANSACTION 
			 set @string='<采购入库单表明细插入错误！>'
			 RAISERROR(@string,16,1)
			 return 
		  end
		  exec prUpDateInOutWareNum @IoNo,1
	  end
  end
  else if @IFlag=-1 
  begin
      set @IoNo=''
      if exists(select BillNo from WareInOutHDTB where WKindID='StockIn' and SubjoinNo=@StockReceNo)
      begin
         select @IoNo=BillNo,@bMaxAudit=bMaxAudit from WareInOutHDTB where  WKindID='StockIn' and SubjoinNo=@StockReceNo 
         if @bMaxAudit=1 
         begin
             exec prUpDateInOutWareNum @IoNo,-1 
             if @@error<>0
			  begin
				 ROLLBACK TRANSACTION 
				 set @string='<采购入库反审核出错！>'
				 RAISERROR(@string,16,1)
				 return 
			  end
         end
         delete WareInOutDTTB where BillNo=@IoNo
         delete WareInOutHDTB where BillNo=@IoNo
         
      end
  end
  commit Tran
  select null
end 

--Exec PrStockReceAudit 'CGSH131019205201',1 
GO

--仓库盘点单点 盘点...
if exists(select Name from sysobjects where name='prWareCheckPD' and type='p')
  Drop procedure dbo.prWareCheckPD
go
Create procedure dbo.prWareCheckPD @BillNO varchar(20),@CheckKind smallint
as
  SET NOCOUNT ON
  DECLARE @IntErrCode int,@CurMonth varchar(6),@LevelId varchar(30),@WareID varchar(30),@ItemKindID varchar(30)
  
  select @WareID=WareID,@ItemKindID=ItemKindID from WareCheckHDTB with (NoLock) where BillNO=@BillNO
 
  select @IntErrCode=@@error
  if @IntErrCode=0
  begin
      Create Table #CheckTB(WareId varchar(50),ItemId varchar(50),ProType varchar(100),Color varchar(100),BatchNo varchar(30),PlaceNo varchar(30),CompactNo varchar(100),ObjectId varchar(30),
       SjNo varchar(30),sOrderNo varchar(30),TechName varchar(100),InDate varchar(30),PState varchar(30),TempNo varchar(30),ItemNum numeric(18,5),ItemMoney numeric(18,5))
      --取出库存数量插入临时表中 0 表示盘点库存 1 盘点档案
      if @CheckKind=0
      begin
          insert into #CheckTB(WareId ,ItemId ,ProType ,Color,BatchNo ,PlaceNo ,CompactNo ,ObjectId,SjNo ,sOrderNo ,TechName ,InDate,PState ,TempNo ,ItemNum ,ItemMoney)
          exec('select a.WareId,a.ItemId,ProType=IsNull(a.ProType,''''),Color=IsNull(a.Color,''''),BatchNo=IsNull(a.BatchNo,''''),PlaceNo=IsNull(a.PlaceNo,''''),CompactNo=IsNull(a.CompactNo,''''),ObjectId=IsNull(a.ObjectId,''''),
                SjNo=IsNull(a.SjNo,''''),sOrderNo=isnull(a.sOrderNo,''''),TechName=isnull(a.TechName,''''),InDate=isnull(a.InDate,''''),PState=isnull(a.PState,''''),TempNo=isnull(a.TempNo,''''),
                ItemNum=IsNull(a.WareNum,0),IsNull(WareNum,0)*IsNull(a.WarePrice,0)
                from WareStorageTB a left join ItemTB b on a.ItemId=b.ItemId 
                where a.WareId='''+@WareId+''' 
                and b.ItemKindId  like '''+@ItemKindID+'%'' and a.ItemId is not null
                and not exists (select m.AutoId from WareCheckHDTB m inner join WareCheckDTTB n on m.BillNo=n.BillNo where m.WareId is not null and m.WareId='''+@WareId+''' and m.ItemKindId like '''+@ItemKindID+'%'' and m.CheckDate=Convert(varchar(20),GetDate(),20)
                and a.WareId=m.WareId and a.ItemId=n.ItemId and IsNull(a.ProType,'''')=IsNull(n.ProType,'''') and IsNull(a.Color,'''')=IsNull(n.Color,'''') and IsNull(a.BatchNo,'''')=IsNull(n.BatchNo,'''') and IsNull(a.PlaceNo,'''')=IsNull(n.PlaceNo,'''')
                and IsNull(a.ProType,'''')=IsNull(n.ProType,'''') and IsNull(a.Color,'''')=IsNull(n.Color,'''') and IsNull(a.ObjectId,'''')=IsNull(n.ObjectId,'''')
                and IsNull(a.CompactNo,'''')=IsNull(n.CompactNo,'''') and IsNull(a.ObjectId,'''')=IsNull(n.ObjectId,'''') and IsNull(a.SjNo,'''')=IsNull(n.SjNo,'''') and IsNull(a.sOrderNo,'''')=IsNull(n.sOrderNo,'''') and IsNull(a.TechName,'''')=IsNull(n.TechName,'''') and IsNull(a.InDate,'''')=IsNull(n.InDate,'''')
                and IsNull(a.TempNo,'''')=IsNull(n.TempNo,'''') )')
      end
      else
      begin   
          insert into #CheckTB(WareId ,ItemId ,ProType ,Color,BatchNo ,PlaceNo ,CompactNo ,ObjectId,SjNo ,sOrderNo ,TechName ,InDate,PState ,TempNo ,ItemNum ,ItemMoney)
          exec('select b.WareId,a.ItemId,ProType=IsNull(b.ProType,''''),Color=IsNull(b.Color,''''),BatchNo=IsNull(b.BatchNo,''''),PlaceNo=IsNull(b.PlaceNo,''''),CompactNo=IsNull(b.CompactNo,''''),ObjectId=IsNull(b.ObjectId,''''),
                SjNo=IsNull(b.SjNo,''''),sOrderNo=isnull(b.sOrderNo,''''),TechName=isnull(b.TechName,''''),InDate=isnull(b.InDate,''''),PState=isnull(b.PState,''''),TempNo=isnull(b.TempNo,''''),
                ItemNum=IsNull(b.WareNum,0),IsNull(WareNum,0)*IsNull(b.WarePrice,0)
                from ItemTB a left join WareStorageTB b on a.ItemId=b.ItemId and a.WareId=b.WareId
                where a.WareId='''+@WareId+''' 
                and a.ItemKindId  like '''+@ItemKindID+'%'' and a.ItemId is not null
                and not exists (select m.AutoId from WareCheckHDTB m inner join WareCheckDTTB n on m.BillNo=n.BillNo where m.WareId is not null and m.WareId='''+@WareId+''' and m.ItemKindId like '''+@ItemKindID+'%'' and m.CheckDate=Convert(varchar(20),GetDate(),20)
                and b.WareId=m.WareId and b.ItemId=n.ItemId and IsNull(b.ProType,'''')=IsNull(n.ProType,'''') and IsNull(b.Color,'''')=IsNull(n.Color,'''') and IsNull(b.BatchNo,'''')=IsNull(n.BatchNo,'''') and IsNull(b.PlaceNo,'''')=IsNull(n.PlaceNo,'''')
                and IsNull(b.ProType,'''')=IsNull(n.ProType,'''') and IsNull(b.Color,'''')=IsNull(n.Color,'''') and IsNull(b.ObjectId,'''')=IsNull(n.ObjectId,'''')
                and IsNull(b.CompactNo,'''')=IsNull(n.CompactNo,'''') and IsNull(b.ObjectId,'''')=IsNull(n.ObjectId,'''') and IsNull(b.SjNo,'''')=IsNull(n.SjNo,'''') and IsNull(b.sOrderNo,'''')=IsNull(n.sOrderNo,'''') and IsNull(b.TechName,'''')=IsNull(n.TechName,'''') and IsNull(b.InDate,'''')=IsNull(n.InDate,'''')
                and IsNull(b.TempNo,'''')=IsNull(n.TempNo,'''') )')
      end
      select @IntErrCode=@@Error
  end
  if @IntErrCode=0
  begin
      --输出
      select * from WareCheckDTTB
      Insert into WareCheckDTTB(AutoNo,BillNo,ItemId,ItemCode,ItemPYCode,ItemName,ItemSpc,ItemPic,ItemUnit,iFlag,ExchRate,ProType ,Color,BatchNo ,PlaceNo ,CompactNo ,ObjectId,SjNo ,sOrderNo ,TechName ,InDate,PState ,TempNo ,WareNum ,WarePrice,WareMoney)
      select dbo.fnGetAutoNo('WareCheckHDTB',GETDATE()),@BillNO,a.ItemId,b.ItemCode,b.ItemPYCode,b.ItemName,b.ItemSpc,b.ItemPic,b.ItemUnit,b.iFlag,b.ExchRate,a.ProType ,a.Color,a.BatchNo ,a.PlaceNo ,a.CompactNo ,a.ObjectId,a.SjNo ,a.sOrderNo ,a.TechName ,a.InDate,a.PState ,a.TempNo,a.ItemNum,b.ItemPrice,WareMoney=ISNULL(a.ItemNum,0)*ISNULL(b.ItemPrice,0) 
      from #CheckTB a left join ItemTB b with (NoLock) on a.ItemId=b.ItemId                   
      Order by a.ItemId
  end
  else
      RAISERROR('盘点错误!',16,1) 
      
-- Exec prWareCheckPD 'CKPD1411030001',1
GO


--判断库存是否够
if Exists(select Name from sysobjects where name='prWarePDCheckNum' and type='p')
  Drop procedure dbo.prWarePDCheckNum
go
Create Procedure dbo.prWarePDCheckNum @BillNO varchar(20),@iFlag int
as

declare @PrintOut varchar(8000)
declare @TempTable table(Z varchar(8000))
set @PrintOut=''
if @iFlag=1 --审核
begin
 insert into @TempTable (Z) 
    select Z='【'+Convert(varchar(60),d.WareName)+'】：'+Convert(varchar(60),c.ItemName)+'  <'+Convert(varchar(20),CONVERT(Numeric(18,2),ISNULL(a.MainNum,0)-ISNULL(b.WareNum,0)))+'>' from 
     (select  a.WareId,b.ItemId,ProType=ISNULL(b.ProType,''),Color=ISNULL(b.Color,''),BatchNo=ISNULL(b.BatchNo,''),PlaceNo=ISNULL(b.PlaceNo,''), CompactNo=ISNULL(b.CompactNo,''),ObjectID=ISNULL(b.ObjectID,''),SjNo=ISNULL(b.SjNo,''),
             sOrderNO=ISNULL(b.sOrderNO,''),TechName=ISNULL(b.TechName,''),InDate=ISNULL(b.InDate,''),PState=ISNULL(b.PState,''),TempNo=ISNULL(b.TempNo,''),MainNum=SUM(ISNULL(b.WareNum,0)-ISNULL(b.FactNum,0))
             from WareCheckHDTB a with (NoLock) left join WareCheckDTTB b on a.BillNo=b.BillNO where isnull(b.FactNum,0)-ISNULL(b.WareNum,0)<0 and a.BIllNO=@BillNO group by   a.WareId,b.ItemId,ISNULL(b.ProType,''),ISNULL(b.Color,''),ISNULL(b.BatchNo,''),ISNULL(b.PlaceNo,''),ISNULL(b.CompactNo,''),ISNULL(b.ObjectID,''), 
             ISNULL(b.SjNo,''),ISNULL(b.sOrderNO,''),ISNULL(b.TechName,''),ISNULL(b.InDate,''),ISNULL(b.PState,''),ISNULL(b.TempNo,'')) a 
      left join WareStorageTB b with (NoLock) on 
                a.ItemId=b.ItemId and a.WareId=b.WareId and Isnull(a.ProType,'')=Isnull(b.ProType,'') and Isnull( a.Color,'')=Isnull(b.Color,'') 
			    and Isnull( a.BatchNo,'')=Isnull(b.BatchNo,'') and Isnull(a.PlaceNo,'')=Isnull(b.PlaceNo,'') and Isnull(a.CompactNo,'')=Isnull(b.CompactNo,'') and Isnull(a.ObjectID,'')=Isnull(b.ObjectID,'') and Isnull(a.SjNo,'')=Isnull(b.SjNo,'') 
			    and Isnull(a.sOrderNO,'')=Isnull(b.sOrderNO,'') and Isnull(a.TechName,'')=Isnull(b.TechName,'') and Isnull(a.InDate,'')=Isnull(b.InDate,'') and Isnull(a.PState,'')=Isnull(b.PState,'') and Isnull(a.TempNo,'')=Isnull(b.TempNo,'')
	  left join ItemTB c with (NoLock) on a.ItemId=c.ItemId left join WareTB d with (NoLock) on a.WareId=d.WareId	   
      where ISNULL(a.MainNum,0)>ISNULL(b.WareNum,0)  and ISNULL(d.bNoCheck,0)=0 and ISNULL(c.bNoCheckWareNum,0)=0
end
else --反审核
begin
   insert into @TempTable (Z) 
    select Z='【'+Convert(varchar(60),d.WareName)+'】：'+Convert(varchar(60),c.ItemName)+'  <'+Convert(varchar(20),CONVERT(Numeric(18,2),ISNULL(a.MainNum,0)-ISNULL(b.WareNum,0)))+'>' from 
     (select  a.WareId,b.ItemId,ProType=ISNULL(b.ProType,''),Color=ISNULL(b.Color,''),BatchNo=ISNULL(b.BatchNo,''),PlaceNo=ISNULL(b.PlaceNo,''), CompactNo=ISNULL(b.CompactNo,''),ObjectID=ISNULL(b.ObjectID,''),SjNo=ISNULL(b.SjNo,''),
             sOrderNO=ISNULL(b.sOrderNO,''),TechName=ISNULL(b.TechName,''),InDate=ISNULL(b.InDate,''),PState=ISNULL(b.PState,''),TempNo=ISNULL(b.TempNo,''),MainNum=SUM(ISNULL(b.FactNum,0)-ISNULL(b.WareNum,0))
             from WareCheckHDTB a with (NoLock) left join WareCheckDTTB b on a.BillNo=b.BillNO where isnull(b.FactNum,0)-ISNULL(b.WareNum,0)>0 and a.BIllNO=@BillNO group by  a.WareId,b.ItemId,ISNULL(b.ProType,''),ISNULL(b.Color,''),ISNULL(b.BatchNo,''),ISNULL(b.PlaceNo,''),ISNULL(b.CompactNo,''),ISNULL(b.ObjectID,''), 
             ISNULL(b.SjNo,''),ISNULL(b.sOrderNO,''),ISNULL(b.TechName,''),ISNULL(b.InDate,''),ISNULL(b.PState,''),ISNULL(b.TempNo,'')) a 
      left join WareStorageTB b with (NoLock) on 
                a.ItemId=b.ItemId and a.WareId=b.WareId and Isnull(a.ProType,'')=Isnull(b.ProType,'') and Isnull( a.Color,'')=Isnull(b.Color,'') 
			    and Isnull( a.BatchNo,'')=Isnull(b.BatchNo,'') and Isnull(a.PlaceNo,'')=Isnull(b.PlaceNo,'') and Isnull(a.CompactNo,'')=Isnull(b.CompactNo,'') and Isnull(a.ObjectID,'')=Isnull(b.ObjectID,'') and Isnull(a.SjNo,'')=Isnull(b.SjNo,'') 
			    and Isnull(a.sOrderNO,'')=Isnull(b.sOrderNO,'') and Isnull(a.TechName,'')=Isnull(b.TechName,'') and Isnull(a.InDate,'')=Isnull(b.InDate,'') and Isnull(a.PState,'')=Isnull(b.PState,'') and Isnull(a.TempNo,'')=Isnull(b.TempNo,'')
	  left join ItemTB c with (NoLock) on a.ItemId=c.ItemId left join WareTB d with (NoLock) on a.WareId=d.WareId	   
      where ISNULL(a.MainNum,0)>ISNULL(b.WareNum,0)  and ISNULL(d.bNoCheck,0)=0 and ISNULL(c.bNoCheckWareNum,0)=0
end
if exists (select Z from @TempTable )
begin
   select @PrintOut=@PrintOut+Z+',' from @TempTable
end
select CheckResult=@PrintOut

go
--exec PrCheckWareNum 'CGRK1106190001'


if exists(select Name from sysobjects where name='PrWareCheckAudit' and type='p')
  Drop procedure dbo.PrWareCheckAudit
go
Create procedure dbo.PrWareCheckAudit @BillNo varchar(30),@IFlag int
as
begin
--入库
  DECLARE @IoNo VARCHAR(30),@String varchar(100),@BreakPoint varchar(10),@CheckDate Datetime,@MaxAudit smallint,@bMaxAudit bit
  BEGIN TRANSACTION
  if @IFlag=1 
  begin
	  Select @CheckDate=CheckDate from WareCheckHDTB where BillNo=@BillNo
	  if exists(select BillNo from WareCheckDTTB where BillNo=@BillNo and IsNull(FactNum,0)>IsNull(WareNum,0)) 
	  begin
	      Set @IoNo=''
		  set @breakpoint=9999
		  exec prGetTableNo 'CheckMoreIn','BillNO',@IoNo OUTPUT
		  if @IoNo is null
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='错误号:'+@breakpoint+'    '+'<盘盈入库单前缀没有设置!>'
			  RAISERROR(@string,16,1)
			  return     
		  end
		  set @breakpoint=1000001
		  select @MaxAudit=MaxAuditLevel from SysTableSetTB where TableId='CheckMoreIn'
		  --盘盈入库表头
		  insert into WareInOutHDTB(BillNO,WKindID,WFlag,SignFlag,BillDate,WareMan,ObjectID,SubjoinNo,SubjoinTableId,
								  MakeDate,MakeMan,MakeManName,AuditFlag,bMaxAudit,AuditMan,AuditManName,AuditDate,MaxAuditDate,Remark,bAuto)       
		   select @IoNo,'CheckMoreIn',1,1,@CheckDate,MakeMan,WareId,BillNo,'WareCheckHDTB',getdate(),MakeMan,MakeManName,@MaxAudit,1,AuditMan,AuditManName,GetDate(),GetDate(),'盘点单盘盈自动生成其它入库',1 from WareCheckHDTB where BillNo=@BillNo
		  if @@error<>0
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='Err:'+@breakpoint+'    '+'<盘盈入库单表头插入错误,无法生成盘盈入库单！>'
			  RAISERROR(@string,16,1)
			  return 
		  end
		  set @breakpoint=1000002
			--盘盈入库表体
		  insert into WareInOutDTTB (AutoNo,BillNo,WareId,ItemId,ItemCode,ItemName,ItemSpc,ItemPic,ItemUnit,SubUnit,ExchRate,iFlag,ProType ,Color,BatchNo ,PlaceNo ,CompactNo ,ObjectId,
								   SjNo ,sOrderNo ,TechName ,InDate,PState ,TempNo,MainNum,MainPrice,TaxPrice,MainMoney,AllMoney,SubNum,SubPrice,SubTaxPrice,SubMoney,SubJOinNO,RfNo,rfID,Remark)
		  select dbo.fnGetAutoNo('CheckMoreIn',GetDate()),@IoNo,a.WareID,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemPic,c.ItemUnit,c.SubUnit,c.ExchRate,c.iFlag,b.ProType ,b.Color,b.BatchNo ,b.PlaceNo ,b.CompactNo ,b.ObjectId,
								   b.SjNo ,b.sOrderNo ,b.TechName ,b.InDate,b.PState ,b.TempNo,IsNull(FactNum,0)-IsNull(WareNum,0),b.FactPrice,b.FactPrice,MainMoney=(IsNull(FactNum,0)-IsNull(WareNum,0))*ISNULL(b.FactPrice,0),allMoney=(IsNull(FactNum,0)-IsNull(WareNum,0))*ISNULL(b.FactPrice,0),
								   SubNum=case when c.iFlag=1 then (IsNull(FactNum,0)-IsNull(WareNum,0))*ISNULL(c.ExchRate,1) else (IsNull(FactNum,0)-IsNull(WareNum,0))/dbo.iszero(ISNULL(c.ExchRate,1),1) end,
								   subprice=case when c.iFlag=1 then IsNull(b.FactPrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.FactPrice,0)*ISNULL(c.ExchRate,1) end,
								   SubTaxPrice=case when c.iFlag=1 then IsNull(b.FactPrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.FactPrice,0)*ISNULL(c.ExchRate,1) end,
								   SubMoney=(IsNull(FactNum,0)-IsNull(WareNum,0))*ISNULL(b.FactPrice,0),
								   b.BillNo,b.BillNo,b.AutoID,'盘点单盘盈自动生成盘盈入库'
			from WareCheckHDTB a left join WareCheckDTTB b on a.BillNo=b.BillNo left join ItemTB c on b.ItemID=c.ItemID where a.BillNo=@BillNo and IsNull(FactNum,0)>IsNull(WareNum,0)
		  if @@error<>0
		  begin
			 ROLLBACK TRANSACTION 
			 set @string='Err:'+@breakpoint+'    '+'<盘盈入库单明细数据插入错误,无法生成盘盈入库单！>'
			 RAISERROR(@string,16,1)
			 return 
		  end
		  exec prUpDateInOutWareNum @IoNo,1
	  end
	  --出库
	  if exists(select BillNo from WareCheckDTTB where BillNo=@BillNo and IsNull(FactNum,0)<IsNull(WareNum,0))  
	  begin
	      Set @IoNo=''
		  set @breakpoint=1000003
		  exec prGetTableNo 'CheckLossOut','BillNo',@IoNo OUTPUT
		  if @IoNo is null
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='错误号:'+@breakpoint+'    '+'<盘亏出库单前缀没有设置!>'
			  RAISERROR(@string,16,1)
			  return     
		  end
		  set @breakpoint=1000004
		  select @MaxAudit=MaxAuditLevel from SysTableSetTB where TableId='CheckLossOut'
			 --盘亏出库库表头
		  insert into WareInOutHDTB(BillNO,WKindID,WFlag,SignFlag,BillDate,WareMan,ObjectID,SubjoinNo,SubjoinTableId,
								  MakeDate,MakeMan,MakeManName,AuditFlag,bMaxAudit,AuditMan,AuditManName,AuditDate,MaxAuditDate,Remark,bAuto)       
		   select @IoNo,'CheckLossOut',-1,1,@CheckDate,MakeMan,WareId,BillNo,'WareCheckHDTB',getdate(),MakeMan,MakeManName,@MaxAudit,1,AuditMan,AuditManName,GetDate(),GetDate(),'盘点单盘亏自动生成其它出库',1 from WareCheckHDTB where BillNo=@BillNo
		  if @@error<>0
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='Err:'+@breakpoint+'    '+'<盘亏出库单表头插入错误,无法生成盘亏出库单！>'
			  RAISERROR(@string,16,1)
			  return 
		  end
		  set @breakpoint=1000005
			--盘亏出库表体
		insert into WareInOutDTTB (AutoNo,BillNo,WareId,ItemId,ItemCode,ItemName,ItemSpc,ItemPic,ItemUnit,SubUnit,ExchRate,iFlag,ProType ,Color,BatchNo ,PlaceNo ,CompactNo ,ObjectId,
								   SjNo ,sOrderNo ,TechName ,InDate,PState ,TempNo,MainNum,MainPrice,TaxPrice,MainMoney,AllMoney,SubNum,SubPrice,SubTaxPrice,SubMoney,SubJOinNO,RfNo,rfID,Remark)
		  select dbo.fnGetAutoNo('CheckMoreIn',GetDate()),@IoNo,a.WareID,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemPic,c.ItemUnit,c.SubUnit,c.ExchRate,c.iFlag,b.ProType ,b.Color,b.BatchNo ,b.PlaceNo ,b.CompactNo ,b.ObjectId,
								   b.SjNo ,b.sOrderNo ,b.TechName ,b.InDate,b.PState ,b.TempNo,IsNull(WareNum,0)-IsNull(FactNum,0),b.FactPrice,b.FactPrice,MainMoney=(IsNull(WareNum,0)-IsNull(FactNum,0))*ISNULL(b.FactPrice,0),allMoney=(IsNull(WareNum,0)-IsNull(FactNum,0))*ISNULL(b.FactPrice,0),
								   SubNum=case when c.iFlag=1 then (IsNull(WareNum,0)-IsNull(FactNum,0))*ISNULL(c.ExchRate,1) else (IsNull(WareNum,0)-IsNull(FactNum,0))/dbo.iszero(ISNULL(c.ExchRate,1),1) end,
								   subprice=case when c.iFlag=1 then IsNull(b.FactPrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.FactPrice,0)*ISNULL(c.ExchRate,1) end,
								   SubTaxPrice=case when c.iFlag=1 then IsNull(b.FactPrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.FactPrice,0)*ISNULL(c.ExchRate,1) end,
								   SubMoney=(IsNull(WareNum,0)-IsNull(FactNum,0))*ISNULL(b.FactPrice,0),
								   b.BillNo,b.BillNo,b.AutoID,'盘点单盘亏自动生成其它出库'
			from WareCheckHDTB a left join WareCheckDTTB b on a.BillNo=b.BillNo left join ItemTB c on b.ItemID=c.ItemID where a.BillNo=@BillNo and IsNull(FactNum,0)<IsNull(WareNum,0)
		  if @@error<>0
		  begin
			 ROLLBACK TRANSACTION 
			 set @string='Err:'+@breakpoint+'    '+'<盘亏出库单明细数据插入错误,无法生成盘亏出库单！>'
			 RAISERROR(@string,16,1)
			 return 
		  end
		  exec prUpDateInOutWareNum @IoNo,-1
	  end
  end
  else if @IFlag=-1 
  begin
      set @IoNo=''
      if exists(select BillNO from WareInOutHDTB where WKindID='CheckMoreIn' and SubjoinNo=@BillNo)
      begin
         select @IoNo=BillNO,@bMaxAudit=bMaxAudit from WareInOutHDTB where  WKindID='CheckMoreIn' and SubjoinNo=@BillNo 
         if @bMaxAudit=1 
         begin
             exec prUpDateInOutWareNum @IoNo,-1 
             if @@error<>0
			  begin
				 ROLLBACK TRANSACTION 
				 set @string='Err:'+@breakpoint+'    '+'<盘点单盘盈生成的其它入库反审核出错！>'
				 RAISERROR(@string,16,1)
				 return 
			  end
         end
         delete WareInOutDTTB where BillNo=@IoNo
         delete WareInOutHDTB where BillNo=@IoNo
         
      end
      
      set @IoNo=''
      if exists(select BillNO from WareInOutHDTB where WKindID='CheckLossOut' and SubjoinNo=@BillNo)
      begin
         select @IoNo=BillNO,@bMaxAudit=bMaxAudit from WareInOutHDTB where  WKindID='CheckLossOut' and  SubjoinNo=@BillNo 
         if @bMaxAudit=1 
         begin
             exec prUpDateInOutWareNum @IoNo,1 
             if @@error<>0
			  begin
				 ROLLBACK TRANSACTION 
				 set @string='Err:'+@breakpoint+'    '+'<盘点单盘盈生成的其它出库反审核出错！>'
				 RAISERROR(@string,16,1)
				 return 
			  end
         end
         delete WareInOutDTTB where BillNo=@IoNo
         delete WareInOutHDTB where BillNo=@IoNo
      end
      
  end
  commit Tran
  select null
end 

--Exec PrWareCheckAudit 'CKPD1112040001',-1 
GO

--判断形态转换库存是否够
if Exists(select Name from sysobjects where name='PrCheckItemSwitchNum' and type='p')
  Drop procedure dbo.PrCheckItemSwitchNum
go
Create Procedure dbo.PrCheckItemSwitchNum @SwitchNO varchar(20),@iFlag Smallint,@SFlag Smallint
as
declare @PrintOut varchar(8000)
declare @TempTable table(Z varchar(8000))
    
if @iFlag=1 --审核
begin
    if @SFlag=1  --左边转换右边
    begin
		insert into @TempTable (Z) 
		select Z='【'+Convert(varchar(60),d.WareName)+'】：'+Convert(varchar(60),c.ItemName)+'  <'+Convert(varchar(20),CONVERT(Numeric(18,2),ISNULL(a.MainNum,0)-ISNULL(b.WareNum,0)))+'>' from 
		 (select  a.OutWare,b.ItemId,ProType=ISNULL(b.ProType,''),Color=ISNULL(b.Color,''),BatchNo=ISNULL(b.BatchNo,''),PlaceNo=ISNULL(b.PlaceNo,''), CompactNo=ISNULL(b.CompactNo,''),ObjectID=ISNULL(b.ObjectID,''),SjNo=ISNULL(b.SjNo,''),
				 sOrderNO=ISNULL(b.sOrderNO,''),TechName=ISNULL(b.TechName,''),InDate=ISNULL(b.InDate,''),PState=ISNULL(b.PState,''),TempNo=ISNULL(b.TempNo,''),MainNum=SUM(ISNULL(b.SwitchNum,0))
				 from ItemSwitchHDTB a with (NoLock) left join ItemSwitchDTTB b on a.SwitchNo=b.SwitchNo where a.SwitchNo=@SwitchNO 
				 group by   a.OutWare,b.ItemId,ISNULL(b.ProType,''),ISNULL(b.Color,''),ISNULL(b.BatchNo,''),ISNULL(b.PlaceNo,''),ISNULL(b.CompactNo,''),ISNULL(b.ObjectID,''), 
				 ISNULL(b.SjNo,''),ISNULL(b.sOrderNO,''),ISNULL(b.TechName,''),ISNULL(b.InDate,''),ISNULL(b.PState,''),ISNULL(b.TempNo,'')) a 
		  left join WareStorageTB b with (NoLock) on 
					a.ItemId=b.ItemId and a.OutWare=b.WareId and Isnull(a.ProType,'')=Isnull(b.ProType,'') and Isnull( a.Color,'')=Isnull(b.Color,'') 
					and Isnull( a.BatchNo,'')=Isnull(b.BatchNo,'') and Isnull(a.PlaceNo,'')=Isnull(b.PlaceNo,'') and Isnull(a.CompactNo,'')=Isnull(b.CompactNo,'') and Isnull(a.ObjectID,'')=Isnull(b.ObjectID,'') and Isnull(a.SjNo,'')=Isnull(b.SjNo,'') 
					and Isnull(a.sOrderNO,'')=Isnull(b.sOrderNO,'') and Isnull(a.TechName,'')=Isnull(b.TechName,'') and Isnull(a.InDate,'')=Isnull(b.InDate,'') and Isnull(a.PState,'')=Isnull(b.PState,'') and Isnull(a.TempNo,'')=Isnull(b.TempNo,'')
		  left join ItemTB c with (NoLock) on a.ItemId=c.ItemId 
		  left join WareTB d with (NoLock) on a.OutWare=d.WareId	   
		  where ISNULL(a.MainNum,0)>ISNULL(b.WareNum,0)  and ISNULL(d.bNoCheck,0)=0 and ISNULL(c.bNoCheckWareNum,0)=0
     end
     if @SFlag=-1  --右边转换左边
     begin
		insert into @TempTable (Z) 
		select Z='【'+Convert(varchar(60),d.WareName)+'】：'+Convert(varchar(60),c.ItemName)+'  <'+Convert(varchar(20),CONVERT(Numeric(18,2),ISNULL(a.MainNum,0)-ISNULL(b.WareNum,0)))+'>' from 
		 (select  a.OutWare,b.ItemId,ProType=ISNULL(b.ProType,''),Color=ISNULL(b.Color,''),BatchNo=ISNULL(b.BatchNo,''),PlaceNo=ISNULL(b.PlaceNo,''), CompactNo=ISNULL(b.CompactNo,''),ObjectID=ISNULL(b.ObjectID,''),SjNo=ISNULL(b.SjNo,''),
				 sOrderNO=ISNULL(b.sOrderNO,''),TechName=ISNULL(b.TechName,''),InDate=ISNULL(b.InDate,''),PState=ISNULL(b.PState,''),TempNo=ISNULL(b.TempNo,''),MainNum=SUM(ISNULL(b.SwitchNum,0))
				 from ItemSwitchHDTB a with (NoLock) left join ItemSwitchDT2TB b on a.SwitchNo=b.SwitchNo where a.SwitchNo=@SwitchNO 
				 group by   a.OutWare,b.ItemId,ISNULL(b.ProType,''),ISNULL(b.Color,''),ISNULL(b.BatchNo,''),ISNULL(b.PlaceNo,''),ISNULL(b.CompactNo,''),ISNULL(b.ObjectID,''), 
				 ISNULL(b.SjNo,''),ISNULL(b.sOrderNO,''),ISNULL(b.TechName,''),ISNULL(b.InDate,''),ISNULL(b.PState,''),ISNULL(b.TempNo,'')) a 
		  left join WareStorageTB b with (NoLock) on 
					a.ItemId=b.ItemId and a.OutWare=b.WareId and Isnull(a.ProType,'')=Isnull(b.ProType,'') and Isnull( a.Color,'')=Isnull(b.Color,'') 
					and Isnull( a.BatchNo,'')=Isnull(b.BatchNo,'') and Isnull(a.PlaceNo,'')=Isnull(b.PlaceNo,'') and Isnull(a.CompactNo,'')=Isnull(b.CompactNo,'') and Isnull(a.ObjectID,'')=Isnull(b.ObjectID,'') and Isnull(a.SjNo,'')=Isnull(b.SjNo,'') 
					and Isnull(a.sOrderNO,'')=Isnull(b.sOrderNO,'') and Isnull(a.TechName,'')=Isnull(b.TechName,'') and Isnull(a.InDate,'')=Isnull(b.InDate,'') and Isnull(a.PState,'')=Isnull(b.PState,'') and Isnull(a.TempNo,'')=Isnull(b.TempNo,'')
		  left join ItemTB c with (NoLock) on a.ItemId=c.ItemId 
		  left join WareTB d with (NoLock) on a.OutWare=d.WareId	   
		  where ISNULL(a.MainNum,0)>ISNULL(b.WareNum,0)  and ISNULL(d.bNoCheck,0)=0 and ISNULL(c.bNoCheckWareNum,0)=0
      end      
      
end
else --反审核
begin
    if @SFlag=1  --左边转换右边
    begin
		insert into @TempTable (Z) 
		select Z='【'+Convert(varchar(60),d.WareName)+'】：'+Convert(varchar(60),c.ItemName)+'  <'+Convert(varchar(20),CONVERT(Numeric(18,2),ISNULL(a.MainNum,0)-ISNULL(b.WareNum,0)))+'>' from 
		 (select  a.InWare,b.ItemId,ProType=ISNULL(b.ProType,''),Color=ISNULL(b.Color,''),BatchNo=ISNULL(b.BatchNo,''),PlaceNo=ISNULL(b.PlaceNo,''), CompactNo=ISNULL(b.CompactNo,''),ObjectID=ISNULL(b.ObjectID,''),SjNo=ISNULL(b.SjNo,''),
				 sOrderNO=ISNULL(b.sOrderNO,''),TechName=ISNULL(b.TechName,''),InDate=ISNULL(b.InDate,''),PState=ISNULL(b.PState,''),TempNo=ISNULL(b.TempNo,''),MainNum=SUM(ISNULL(b.SwitchNum,0))
				 from ItemSwitchHDTB a with (NoLock) left join ItemSwitchDT2TB b on a.SwitchNo=b.SwitchNo where a.SwitchNo=@SwitchNO 
				 group by   a.InWare,b.ItemId,ISNULL(b.ProType,''),ISNULL(b.Color,''),ISNULL(b.BatchNo,''),ISNULL(b.PlaceNo,''),ISNULL(b.CompactNo,''),ISNULL(b.ObjectID,''), 
				 ISNULL(b.SjNo,''),ISNULL(b.sOrderNO,''),ISNULL(b.TechName,''),ISNULL(b.InDate,''),ISNULL(b.PState,''),ISNULL(b.TempNo,'')) a 
		  left join WareStorageTB b with (NoLock) on 
					a.ItemId=b.ItemId and a.InWare=b.WareId and Isnull(a.ProType,'')=Isnull(b.ProType,'') and Isnull( a.Color,'')=Isnull(b.Color,'') 
					and Isnull( a.BatchNo,'')=Isnull(b.BatchNo,'') and Isnull(a.PlaceNo,'')=Isnull(b.PlaceNo,'') and Isnull(a.CompactNo,'')=Isnull(b.CompactNo,'') and Isnull(a.ObjectID,'')=Isnull(b.ObjectID,'') and Isnull(a.SjNo,'')=Isnull(b.SjNo,'') 
					and Isnull(a.sOrderNO,'')=Isnull(b.sOrderNO,'') and Isnull(a.TechName,'')=Isnull(b.TechName,'') and Isnull(a.InDate,'')=Isnull(b.InDate,'') and Isnull(a.PState,'')=Isnull(b.PState,'') and Isnull(a.TempNo,'')=Isnull(b.TempNo,'')
		  left join ItemTB c with (NoLock) on a.ItemId=c.ItemId 
		  left join WareTB d with (NoLock) on a.InWare=d.WareId	   
		  where ISNULL(a.MainNum,0)>ISNULL(b.WareNum,0)  and ISNULL(d.bNoCheck,0)=0 and ISNULL(c.bNoCheckWareNum,0)=0
     end
     if @SFlag=-1  --右边转换左边
     begin
		insert into @TempTable (Z) 
		select Z='【'+Convert(varchar(60),d.WareName)+'】：'+Convert(varchar(60),c.ItemName)+'  <'+Convert(varchar(20),CONVERT(Numeric(18,2),ISNULL(a.MainNum,0)-ISNULL(b.WareNum,0)))+'>' from 
		 (select  a.InWare,b.ItemId,ProType=ISNULL(b.ProType,''),Color=ISNULL(b.Color,''),BatchNo=ISNULL(b.BatchNo,''),PlaceNo=ISNULL(b.PlaceNo,''), CompactNo=ISNULL(b.CompactNo,''),ObjectID=ISNULL(b.ObjectID,''),SjNo=ISNULL(b.SjNo,''),
				 sOrderNO=ISNULL(b.sOrderNO,''),TechName=ISNULL(b.TechName,''),InDate=ISNULL(b.InDate,''),PState=ISNULL(b.PState,''),TempNo=ISNULL(b.TempNo,''),MainNum=SUM(ISNULL(b.SwitchNum,0))
				 from ItemSwitchHDTB a with (NoLock) left join ItemSwitchDTTB b on a.SwitchNo=b.SwitchNo where a.SwitchNo=@SwitchNO 
				 group by   a.InWare,b.ItemId,ISNULL(b.ProType,''),ISNULL(b.Color,''),ISNULL(b.BatchNo,''),ISNULL(b.PlaceNo,''),ISNULL(b.CompactNo,''),ISNULL(b.ObjectID,''), 
				 ISNULL(b.SjNo,''),ISNULL(b.sOrderNO,''),ISNULL(b.TechName,''),ISNULL(b.InDate,''),ISNULL(b.PState,''),ISNULL(b.TempNo,'')) a 
		  left join WareStorageTB b with (NoLock) on 
					a.ItemId=b.ItemId and a.InWare=b.WareId and Isnull(a.ProType,'')=Isnull(b.ProType,'') and Isnull( a.Color,'')=Isnull(b.Color,'') 
					and Isnull( a.BatchNo,'')=Isnull(b.BatchNo,'') and Isnull(a.PlaceNo,'')=Isnull(b.PlaceNo,'') and Isnull(a.CompactNo,'')=Isnull(b.CompactNo,'') and Isnull(a.ObjectID,'')=Isnull(b.ObjectID,'') and Isnull(a.SjNo,'')=Isnull(b.SjNo,'') 
					and Isnull(a.sOrderNO,'')=Isnull(b.sOrderNO,'') and Isnull(a.TechName,'')=Isnull(b.TechName,'') and Isnull(a.InDate,'')=Isnull(b.InDate,'') and Isnull(a.PState,'')=Isnull(b.PState,'') and Isnull(a.TempNo,'')=Isnull(b.TempNo,'')
		  left join ItemTB c with (NoLock) on a.ItemId=c.ItemId 
		  left join WareTB d with (NoLock) on a.InWare=d.WareId	   
		  where ISNULL(a.MainNum,0)>ISNULL(b.WareNum,0)  and ISNULL(d.bNoCheck,0)=0 and ISNULL(c.bNoCheckWareNum,0)=0
      end 
end

	if exists (select Z from @TempTable )
	begin
	   if @SFlag=1
	   set @PrintOut='左边产品中 '
	if @SFlag=-1
	   set @PrintOut='右边产品中 '
	end
	else
	begin
	   set @PrintOut=''  
	end

   
	if exists (select Z from @TempTable )
	begin
	   select @PrintOut=@PrintOut+Z+',' from @TempTable
	end
	select CheckResult=@PrintOut

--exec PrCheckItemSwitchNum 'XTZH1304164917',1,1
go

if exists(select Name from sysobjects where name='PrItemSwitchAudit' and type='p')
  Drop procedure dbo.PrItemSwitchAudit
go
Create procedure dbo.PrItemSwitchAudit @SwitchNO varchar(30),@IFlag int,@SFlag Smallint
as
begin

  DECLARE @IoNo VARCHAR(30),@String varchar(100),@SwitchDate Datetime,@SubjoinTableId varchar(50),@MaxAudit smallint,@bMaxAudit bit
  BEGIN TRANSACTION
  if @IFlag=1   --审核
  begin
      --入库
	  Select @SwitchDate=SwitchDate from ItemSwitchHDTB where SwitchNO=@SwitchNO
	  if (@SFlag=1 and exists(select SwitchNO from ItemSwitchDT2TB where SwitchNO=@SwitchNO and IsNull(SwitchNum,0)>0)) or (@SFlag=-1 and exists(select SwitchNO from ItemSwitchDTTB where SwitchNO=@SwitchNO and IsNull(SwitchNum,0)>0)) 
	  --防止插入空表体到出入库表
	  begin
	      Set @IoNo=''
		  exec prGetTableNo 'ItemSwitchIn','BillNo',@IoNo OUTPUT
		  if @IoNo is null
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='转换入库单前缀没有设置!'
			  RAISERROR(@string,16,1)
			  return     
		  end
		  select @MaxAudit=MaxAuditLevel from SysTableSetTB where TableId='ItemSwitchIn'
		  --转换入库表头
		  insert into WareInOutHDTB(BillNo,WKindID,WFlag,SignFlag,BillDate,WareMan,ObjectID,SubjoinNo,SubjoinTableId,
								  MakeDate,MakeMan,MakeManName,AuditFlag,bMaxAudit,AuditMan,AuditManName,AuditDate,MaxAuditDate,Remark,bAuto)       
		   select @IoNo,'ItemSwitchIn',1,1,@SwitchDate,MakeMan,MakeMan,SwitchNo,'ItemSwitch',getdate(),MakeMan,MakeManName,@MaxAudit,1,AuditMan,AuditManName,GetDate(),GetDate(),'形态转换单自动生成转换入库',1 from ItemSwitchHDTB where SwitchNO=@SwitchNO
		  if @@error<>0
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='转换入库单表头插入错误!'
			  RAISERROR(@string,16,1)
			  return 
		  end
		   --调拨入库表体
		  if @SFlag=1   --左转右插入右边数据
		  begin
			  insert into WareInOutDTTB (AutoNo,BillNo,WareId,ItemId,ItemCode,ItemName,ItemSpc,ItemPic,ItemUnit,SubUnit,ExchRate,iFlag,ProType ,Color,BatchNo ,PlaceNo ,CompactNo ,ObjectId,
									   SjNo ,sOrderNo ,TechName ,InDate,PState ,TempNo,MainNum,MainPrice,TaxPrice,MainMoney,AllMoney,SubNum,SubPrice,SubTaxPrice,SubMoney,SubJOinNO,Remark)
			  select dbo.fnGetAutoNo('ItemSwitchIn',GetDate()),@IoNo,a.InWare,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemPic,c.ItemUnit,c.SubUnit,c.ExchRate,c.iFlag,b.ProType ,b.Color,b.BatchNo ,b.PlaceNo ,b.CompactNo ,b.ObjectId,
									   b.SjNo ,b.sOrderNo ,b.TechName ,b.InDate,b.PState ,b.TempNo,IsNull(SwitchNum,0),b.SwitchPrice,b.SwitchPrice,MainMoney=IsNull(SwitchNum,0)*ISNULL(b.SwitchPrice,0),allMoney=IsNull(SwitchNum,0)*ISNULL(b.TaxPrice,0),
									   SubNum=case when c.iFlag=1 then IsNull(SwitchNum,0)*ISNULL(c.ExchRate,1) else IsNull(SwitchNum,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) end,
									   Subprice=case when c.iFlag=1 then IsNull(b.SwitchPrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.SwitchPrice,0)*ISNULL(c.ExchRate,1) end,
									   SubTaxPrice=case when c.iFlag=1 then IsNull(b.SwitchPrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.SwitchPrice,0)*ISNULL(c.ExchRate,1) end,
									   SubMoney=IsNull(SwitchNum,0)*ISNULL(b.SwitchPrice,0),
									   b.AutoNo,'形态转换单自动生成转换入库'
			  from ItemSwitchHDTB a left join ItemSwitchDT2TB b on a.SwitchNO=b.SwitchNO 
	   		  left join ItemTB c on b.ItemID=c.ItemID 
			  where a.SwitchNo=@SwitchNo and IsNull(SwitchNum,0)>0
		  end
		  if @SFlag=-1   --右转左插入左边数据
		  begin
			  insert into WareInOutDTTB (AutoNo,BillNo,WareId,ItemId,ItemCode,ItemName,ItemSpc,ItemPic,ItemUnit,SubUnit,ExchRate,iFlag,ProType ,Color,BatchNo ,PlaceNo ,CompactNo ,ObjectId,
									   SjNo ,sOrderNo ,TechName ,InDate,PState ,TempNo,MainNum,MainPrice,TaxPrice,MainMoney,AllMoney,SubNum,SubPrice,SubTaxPrice,SubMoney,SubJOinNO,Remark)
			  select dbo.fnGetAutoNo('ItemSwitchIn',GetDate()),@IoNo,a.InWare,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemPic,c.ItemUnit,c.SubUnit,c.ExchRate,c.iFlag,b.ProType ,b.Color,b.BatchNo ,b.PlaceNo ,b.CompactNo ,b.ObjectId,
									   b.SjNo ,b.sOrderNo ,b.TechName ,b.InDate,b.PState ,b.TempNo,IsNull(SwitchNum,0),b.SwitchPrice,b.SwitchPrice,MainMoney=IsNull(SwitchNum,0)*ISNULL(b.SwitchPrice,0),allMoney=IsNull(SwitchNum,0)*ISNULL(b.TaxPrice,0),
									   SubNum=case when c.iFlag=1 then IsNull(SwitchNum,0)*ISNULL(c.ExchRate,1) else IsNull(SwitchNum,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) end,
									   Subprice=case when c.iFlag=1 then IsNull(b.SwitchPrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.SwitchPrice,0)*ISNULL(c.ExchRate,1) end,
									   SubTaxPrice=case when c.iFlag=1 then IsNull(b.SwitchPrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.SwitchPrice,0)*ISNULL(c.ExchRate,1) end,
									   SubMoney=IsNull(SwitchNum,0)*ISNULL(b.SwitchPrice,0),
									   b.AutoNo,'形态转换单自动生成转换入库'
			  from ItemSwitchHDTB a left join ItemSwitchDTTB b on a.SwitchNO=b.SwitchNO 
	   		  left join ItemTB c on b.ItemID=c.ItemID 
			  where a.SwitchNo=@SwitchNo and IsNull(SwitchNum,0)>0
		  end
		  
		  if @@error<>0
		  begin
			 ROLLBACK TRANSACTION 
			 set @string='转换入库单表明细插入错误!'
			 RAISERROR(@string,16,1)
			 return 
		  end
		  exec prUpDateInOutWareNum @IoNo,1
	  end
	  --出库
	  if (@SFlag=1 and exists(select SwitchNO from ItemSwitchDTTB where SwitchNO=@SwitchNO and IsNull(SwitchNum,0)>0)) or (@SFlag=-1 and exists(select SwitchNO from ItemSwitchDT2TB where SwitchNO=@SwitchNO and IsNull(SwitchNum,0)>0)) 
	  begin
	      Set @IoNo=''
		  exec prGetTableNo 'ItemSwitchOut','BillNo',@IoNo OUTPUT
		  if @IoNo is null
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='转换出库单前缀没有设置!'
			  RAISERROR(@string,16,1)
			  return     
		  end
		  select @MaxAudit=MaxAuditLevel from SysTableSetTB where TableId='ItemSwitchOut'
			 --调拨出库库表头
		  insert into WareInOutHDTB(BillNo,WKindID,WFlag,SignFlag,BillDate,WareMan,ObjectID,SubjoinNo,SubjoinTableId,
								  MakeDate,MakeMan,MakeManName,AuditFlag,bMaxAudit,AuditMan,AuditManName,AuditDate,MaxAuditDate,Remark,bAuto)       
		   select @IoNo,'ItemSwitchOut',-1,1,@SwitchDate,MakeMan,MakeMan,SwitchNo,'ItemSwitch',getdate(),MakeMan,MakeManName,@MaxAudit,1,AuditMan,AuditManName,GetDate(),GetDate(),'形态转换单自动生成转换出库',1 from ItemSwitchHDTB where SwitchNo=@SwitchNo
		  if @@error<>0
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='转换出库单表头插入错误!'
			  RAISERROR(@string,16,1)
			  return 
		  end
		--转换出库表体
		  if @SFlag=1   --左转右插入左边数据
		  begin
	   		  insert into WareInOutDTTB (AutoNo,BillNo,WareId,ItemId,ItemCode,ItemName,ItemSpc,ItemPic,ItemUnit,SubUnit,ExchRate,iFlag,ProType ,Color,BatchNo ,PlaceNo ,CompactNo ,ObjectId,
									   SjNo ,sOrderNo ,TechName ,InDate,PState ,TempNo,MainNum,MainPrice,TaxPrice,MainMoney,AllMoney,SubNum,SubPrice,SubTaxPrice,SubMoney,SubJOinNO,Remark)
			  select dbo.fnGetAutoNo('ItemSwitchOut',GetDate()),@IoNo,a.OutWare,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemPic,c.ItemUnit,c.SubUnit,c.ExchRate,c.iFlag,b.ProType ,b.Color,b.BatchNo ,b.PlaceNo ,b.CompactNo ,b.ObjectId,
									   b.SjNo ,b.sOrderNo ,b.TechName ,b.InDate,b.PState ,b.TempNo,IsNull(SwitchNum,0),b.SwitchPrice,b.SwitchPrice,MainMoney=IsNull(SwitchNum,0)*ISNULL(b.SwitchPrice,0),allMoney=IsNull(SwitchNum,0)*ISNULL(b.SwitchPrice,0),
									   SubNum=case when c.iFlag=1 then IsNull(SwitchNum,0)*ISNULL(c.ExchRate,1) else IsNull(SwitchNum,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) end,
									   subprice=case when c.iFlag=1 then IsNull(b.SwitchPrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.SwitchPrice,0)*ISNULL(c.ExchRate,1) end,
									   SubTaxPrice=case when c.iFlag=1 then IsNull(b.SwitchPrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.SwitchPrice,0)*ISNULL(c.ExchRate,1) end,
									   SubMoney=IsNull(SwitchNum,0)*ISNULL(b.SwitchPrice,0),
									   b.AutoNo,'形态转换单自动生成转换出库'
			   from ItemSwitchHDTB a left join ItemSwitchDTTB b on a.SwitchNo=b.SwitchNo 
			   left join ItemTB c on b.ItemID=c.ItemID 
			   where a.SwitchNo=@SwitchNo and IsNull(SwitchNum,0)>0
		  end
		  if @SFlag=-1   --左转右插入左边数据
		  begin
	   		  insert into WareInOutDTTB (AutoNo,BillNo,WareId,ItemId,ItemCode,ItemName,ItemSpc,ItemPic,ItemUnit,SubUnit,ExchRate,iFlag,ProType ,Color,BatchNo ,PlaceNo ,CompactNo ,ObjectId,
									   SjNo ,sOrderNo ,TechName ,InDate,PState ,TempNo,MainNum,MainPrice,TaxPrice,MainMoney,AllMoney,SubNum,SubPrice,SubTaxPrice,SubMoney,SubJOinNO,Remark)
			  select dbo.fnGetAutoNo('ItemSwitchOut',GetDate()),@IoNo,a.OutWare,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemPic,c.ItemUnit,c.SubUnit,c.ExchRate,c.iFlag,b.ProType ,b.Color,b.BatchNo ,b.PlaceNo ,b.CompactNo ,b.ObjectId,
									   b.SjNo ,b.sOrderNo ,b.TechName ,b.InDate,b.PState ,b.TempNo,IsNull(SwitchNum,0),b.SwitchPrice,b.SwitchPrice,MainMoney=IsNull(SwitchNum,0)*ISNULL(b.SwitchPrice,0),allMoney=IsNull(SwitchNum,0)*ISNULL(b.SwitchPrice,0),
									   SubNum=case when c.iFlag=1 then IsNull(SwitchNum,0)*ISNULL(c.ExchRate,1) else IsNull(SwitchNum,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) end,
									   subprice=case when c.iFlag=1 then IsNull(b.SwitchPrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.SwitchPrice,0)*ISNULL(c.ExchRate,1) end,
									   SubTaxPrice=case when c.iFlag=1 then IsNull(b.SwitchPrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.SwitchPrice,0)*ISNULL(c.ExchRate,1) end,
									   SubMoney=IsNull(SwitchNum,0)*ISNULL(b.SwitchPrice,0),
									   b.AutoNo,'形态转换单自动生成转换出库'
			   from ItemSwitchHDTB a left join ItemSwitchDT2TB b on a.SwitchNo=b.SwitchNo 
			   left join ItemTB c on b.ItemID=c.ItemID 
			   where a.SwitchNo=@SwitchNo and IsNull(SwitchNum,0)>0
		   end
		  if @@error<>0
		  begin
			 ROLLBACK TRANSACTION 
			 set @string='转换出库单表明细插入错误!'
			 RAISERROR(@string,16,1)
			 return 
		  end
		  exec prUpDateInOutWareNum @IoNo,-1
	  end
  end
  else if @IFlag=-1 
  begin
      set @IoNo=''
      if exists(select BillNo from WareInOutHDTB where WKindID='ItemSwitchIn' and SubjoinNo=@SwitchNo)
      begin
         select @IoNo=BillNo,@bMaxAudit=bMaxAudit from WareInOutHDTB where  WKindID='ItemSwitchIn' and SubjoinNo=@SwitchNo 
         if @bMaxAudit=1 
         begin
             exec prUpDateInOutWareNum @IoNo,-1 
             if @@error<>0
			  begin
				 ROLLBACK TRANSACTION 
				 set @string='转换入库反审核出错!'
				 RAISERROR(@string,16,1)
				 return 
			  end
         end
         delete WareInOutDTTB where BillNo=@IoNo
         delete WareInOutHDTB where BillNo=@IoNo
         
      end
      
      set @IoNo=''
      if exists(select BillNo from WareInOutHDTB where WKindID='ItemSwitchOut' and SubjoinNo=@SwitchNo)
      begin
         select @IoNo=BillNo,@bMaxAudit=bMaxAudit from WareInOutHDTB where  WKindID='ItemSwitchOut' and  SubjoinNo=@SwitchNo 
         if @bMaxAudit=1 
         begin
             exec prUpDateInOutWareNum @IoNo,1 
             if @@error<>0
			  begin
				 ROLLBACK TRANSACTION 
				 set @string='转换出库反审核出错!'
				 RAISERROR(@string,16,1)
				 return 
			  end
         end
         delete WareInOutDTTB where BillNo=@IoNo
         delete WareInOutHDTB where BillNo=@IoNo
      end
      
  end
  commit Tran
  select null
end 

--Exec PrItemSwitchAudit 'WXLL1212065133',1,1
GO

--判断调拨库存是否够
if Exists(select Name from sysobjects where name='PrCheckMoveBackNum' and type='p')
  Drop procedure dbo.PrCheckMoveBackNum
go
Create Procedure dbo.PrCheckMoveBackNum @MoveNO varchar(20),@iFlag Smallint
as
declare @PrintOut varchar(8000)
declare @TempTable table(Z varchar(8000))
set @PrintOut=''
if @iFlag=1 --审核
begin 
    insert into @TempTable (Z) 
    select Z='【'+Convert(varchar(60),d.WareName)+'】：'+Convert(varchar(60),c.ItemName)+'  <'+Convert(varchar(20),CONVERT(Numeric(18,2),ISNULL(a.MainNum,0)-ISNULL(b.WareNum,0)))+'>' from 
     (select  a.OutWare,b.ItemId,ProType=ISNULL(b.ProType,''),Color=ISNULL(b.Color,''),BatchNo=ISNULL(b.BatchNo,''),PlaceNo=ISNULL(b.PlaceNo,''), CompactNo=ISNULL(b.CompactNo,''),ObjectID=ISNULL(b.ObjectID,''),SjNo=ISNULL(b.SjNo,''),
             sOrderNO=ISNULL(b.sOrderNO,''),TechName=Case when IsNull(b.bDelTech,0)=0 then ISNULL(b.TechName,'') else '' end,InDate=ISNULL(b.InDate,''),PState=ISNULL(b.PState,''),TempNo=ISNULL(b.TempNo,''),MainNum=SUM(ISNULL(b.MoveNum,0))
             from ItemMoveHDTB a with (NoLock) left join ItemMoveDTTB b on a.MoveNo=b.MoveNo where a.MoveNo=@MoveNO 
             group by   a.OutWare,b.ItemId,ISNULL(b.ProType,''),ISNULL(b.Color,''),ISNULL(b.BatchNo,''),ISNULL(b.PlaceNo,''),ISNULL(b.CompactNo,''),ISNULL(b.ObjectID,''), 
             ISNULL(b.SjNo,''),ISNULL(b.sOrderNO,''),Case when IsNull(b.bDelTech,0)=0 then ISNULL(b.TechName,'') else '' end,ISNULL(b.InDate,''),ISNULL(b.PState,''),ISNULL(b.TempNo,'')
      Union all  --不良品
      select  b.SpoilWareId,b.ItemId,ProType=ISNULL(b.ProType,''),Color=ISNULL(b.Color,''),BatchNo=ISNULL(b.BatchNo,''),PlaceNo=ISNULL(b.PlaceNo,''), CompactNo=ISNULL(b.CompactNo,''),ObjectID=ISNULL(b.ObjectID,''),SjNo=ISNULL(b.SjNo,''),
             sOrderNO=ISNULL(b.sOrderNO,''),TechName=Case when IsNull(b.bDelTech,0)=0 then ISNULL(b.TechName,'') else '' end,InDate=ISNULL(b.InDate,''),PState=ISNULL(b.PState,''),TempNo=ISNULL(b.TempNo,''),MainNum=SUM(ISNULL(b.SpoilNum,0))
             from ItemMoveHDTB a with (NoLock) left join ItemMoveDTTB b on a.MoveNo=b.MoveNo where a.MoveNo=@MoveNO  and ISNULL(b.SpoilNum,0)>0 
             group by   b.SpoilWareId,b.ItemId,ISNULL(b.ProType,''),ISNULL(b.Color,''),ISNULL(b.BatchNo,''),ISNULL(b.PlaceNo,''),ISNULL(b.CompactNo,''),ISNULL(b.ObjectID,''), 
             ISNULL(b.SjNo,''),ISNULL(b.sOrderNO,''),Case when IsNull(b.bDelTech,0)=0 then ISNULL(b.TechName,'') else '' end,ISNULL(b.InDate,''),ISNULL(b.PState,''),ISNULL(b.TempNo,'')        
      Union all  --废品
      select  b.WasteWareId,b.ItemId,ProType=ISNULL(b.ProType,''),Color=ISNULL(b.Color,''),BatchNo=ISNULL(b.BatchNo,''),PlaceNo=ISNULL(b.PlaceNo,''), CompactNo=ISNULL(b.CompactNo,''),ObjectID=ISNULL(b.ObjectID,''),SjNo=ISNULL(b.SjNo,''),
             sOrderNO=ISNULL(b.sOrderNO,''),TechName=Case when IsNull(b.bDelTech,0)=0 then ISNULL(b.TechName,'') else '' end,InDate=ISNULL(b.InDate,''),PState=ISNULL(b.PState,''),TempNo=ISNULL(b.TempNo,''),MainNum=SUM(ISNULL(b.WasteNum,0))
             from ItemMoveHDTB a with (NoLock) left join ItemMoveDTTB b on a.MoveNo=b.MoveNo where a.MoveNo=@MoveNO  and ISNULL(b.WasteNum,0)>0 
             group by   b.WasteWareId,b.ItemId,ISNULL(b.ProType,''),ISNULL(b.Color,''),ISNULL(b.BatchNo,''),ISNULL(b.PlaceNo,''),ISNULL(b.CompactNo,''),ISNULL(b.ObjectID,''), 
             ISNULL(b.SjNo,''),ISNULL(b.sOrderNO,''),Case when IsNull(b.bDelTech,0)=0 then ISNULL(b.TechName,'') else '' end,ISNULL(b.InDate,''),ISNULL(b.PState,''),ISNULL(b.TempNo,'')        
      Union all  --料废
      select  b.ScrapWareId,b.ItemId,ProType=ISNULL(b.ProType,''),Color=ISNULL(b.Color,''),BatchNo=ISNULL(b.BatchNo,''),PlaceNo=ISNULL(b.PlaceNo,''), CompactNo=ISNULL(b.CompactNo,''),ObjectID=ISNULL(b.ObjectID,''),SjNo=ISNULL(b.SjNo,''),
             sOrderNO=ISNULL(b.sOrderNO,''),TechName=Case when IsNull(b.bDelTech,0)=0 then ISNULL(b.TechName,'') else '' end,InDate=ISNULL(b.InDate,''),PState=ISNULL(b.PState,''),TempNo=ISNULL(b.TempNo,''),MainNum=SUM(ISNULL(b.ScrapNum,0))
             from ItemMoveHDTB a with (NoLock) left join ItemMoveDTTB b on a.MoveNo=b.MoveNo where a.MoveNo=@MoveNO and ISNULL(b.ScrapNum,0)>0
             group by   b.ScrapWareId,b.ItemId,ISNULL(b.ProType,''),ISNULL(b.Color,''),ISNULL(b.BatchNo,''),ISNULL(b.PlaceNo,''),ISNULL(b.CompactNo,''),ISNULL(b.ObjectID,''), 
             ISNULL(b.SjNo,''),ISNULL(b.sOrderNO,''),Case when IsNull(b.bDelTech,0)=0 then ISNULL(b.TechName,'') else '' end,ISNULL(b.InDate,''),ISNULL(b.PState,''),ISNULL(b.TempNo,'')                   
      ) a 
      left join WareStorageTB b with (NoLock) on 
                a.ItemId=b.ItemId and a.OutWare=b.WareId and Isnull(a.ProType,'')=Isnull(b.ProType,'') and Isnull( a.Color,'')=Isnull(b.Color,'') 
			    and Isnull( a.BatchNo,'')=Isnull(b.BatchNo,'') and Isnull(a.PlaceNo,'')=Isnull(b.PlaceNo,'') and Isnull(a.CompactNo,'')=Isnull(b.CompactNo,'') and Isnull(a.ObjectID,'')=Isnull(b.ObjectID,'') and Isnull(a.SjNo,'')=Isnull(b.SjNo,'') 
			    and Isnull(a.sOrderNO,'')=Isnull(b.sOrderNO,'') and Isnull(a.TechName,'')=Isnull(b.TechName,'') and Isnull(a.InDate,'')=Isnull(b.InDate,'') and Isnull(a.PState,'')=Isnull(b.PState,'') and Isnull(a.TempNo,'')=Isnull(b.TempNo,'')
	  left join ItemTB c with (NoLock) on a.ItemId=c.ItemId 
	  left join WareTB d with (NoLock) on a.OutWare=d.WareId	   
      where ISNULL(a.MainNum,0)>ISNULL(b.WareNum,0)  and ISNULL(d.bNoCheck,0)=0 and ISNULL(c.bNoCheckWareNum,0)=0
end
else --反审核
begin
 insert into @TempTable (Z) 
    select Z='【'+Convert(varchar(60),d.WareName)+'】：'+Convert(varchar(60),c.ItemName)+'  <'+Convert(varchar(20),CONVERT(Numeric(18,2),ISNULL(a.MainNum,0)-ISNULL(b.WareNum,0)))+'>' from 
     (select  a.InWare,b.ItemId,ProType=ISNULL(b.ProType,''),Color=ISNULL(b.Color,''),BatchNo=ISNULL(b.BatchNo,''),PlaceNo=ISNULL(b.PlaceNo,''), CompactNo=ISNULL(b.CompactNo,''),ObjectID=ISNULL(b.ObjectID,''),SjNo=ISNULL(b.SjNo,''),
             sOrderNO=ISNULL(b.sOrderNO,''),TechName=ISNULL(b.TechName,''),InDate=ISNULL(b.InDate,''),PState=ISNULL(b.PState,''),TempNo=ISNULL(b.TempNo,''),MainNum=SUM(ISNULL(b.MoveNum,0))
             from ItemMoveHDTB a with (NoLock) left join ItemMoveDT2TB b on a.MoveNo=b.MoveNo where a.MoveNo=@MoveNO 
             group by  a.InWare,b.ItemId,ISNULL(b.ProType,''),ISNULL(b.Color,''),ISNULL(b.BatchNo,''),ISNULL(b.PlaceNo,''),ISNULL(b.CompactNo,''),ISNULL(b.ObjectID,''), 
             ISNULL(b.SjNo,''),ISNULL(b.sOrderNO,''),ISNULL(b.TechName,''),ISNULL(b.InDate,''),ISNULL(b.PState,''),ISNULL(b.TempNo,'')) a 
      left join WareStorageTB b with (NoLock) on 
                a.ItemId=b.ItemId and a.InWare=b.WareId and Isnull(a.ProType,'')=Isnull(b.ProType,'') and Isnull( a.Color,'')=Isnull(b.Color,'') 
			    and Isnull( a.BatchNo,'')=Isnull(b.BatchNo,'') and Isnull(a.PlaceNo,'')=Isnull(b.PlaceNo,'') and Isnull(a.CompactNo,'')=Isnull(b.CompactNo,'') and Isnull(a.ObjectID,'')=Isnull(b.ObjectID,'') and Isnull(a.SjNo,'')=Isnull(b.SjNo,'') 
			    and Isnull(a.sOrderNO,'')=Isnull(b.sOrderNO,'') and Isnull(a.TechName,'')=Isnull(b.TechName,'') and Isnull(a.InDate,'')=Isnull(b.InDate,'') and Isnull(a.PState,'')=Isnull(b.PState,'') and Isnull(a.TempNo,'')=Isnull(b.TempNo,'')
	  left join ItemTB c with (NoLock) on a.ItemId=c.ItemId 
	  left join WareTB d with (NoLock) on a.InWare=d.WareId	   
      where ISNULL(a.MainNum,0)>ISNULL(b.WareNum,0)  and ISNULL(d.bNoCheck,0)=0 and ISNULL(c.bNoCheckWareNum,0)=0
end
if exists (select Z from @TempTable )
begin
   select @PrintOut=@PrintOut+Z+',' from @TempTable
end
select CheckResult=@PrintOut

--exec PrCheckMoveBackNum 'AMBK1503260002',1
go 

if exists(select Name from sysobjects where name='PrItemMoveBackAudit' and type='p')
  Drop procedure dbo.PrItemMoveBackAudit
go
Create procedure dbo.PrItemMoveBackAudit @MoveNo varchar(30),@IFlag int
as
begin
  DECLARE @IoNo VARCHAR(30),@String varchar(100),@MoveDate Datetime,@SubjoinTableId varchar(50),@MaxAudit smallint,@bMaxAudit bit,@NextDispatchId varchar(100)
  BEGIN TRANSACTION
  if @IFlag=1 
  begin
	  Select @MoveDate=MoveDate from ItemMoveHDTB where MoveNo=@MoveNo
      --入库
	  if exists(select MoveNo from ItemMoveDT2TB where MoveNo=@MoveNo and IsNull(MoveNum,0)>0) 
	  begin
	      Set @IoNo=''
		  exec prGetTableNo 'ItemMoveIn','BillNo',@IoNo OUTPUT
		  if @IoNo is null
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='调拨入库单前缀没有设置!'
			  RAISERROR(@string,16,1)
			  return     
		  end
		  select @MaxAudit=MaxAuditLevel from SysTableSetTB where TableId='ItemMoveIn'
		  --调拨入库表头
		  insert into WareInOutHDTB(BillNo,WKindID,WFlag,SignFlag,BillDate,WareMan,ObjectID,SubjoinNo,SubjoinTableId,
								  MakeDate,MakeMan,MakeManName,AuditFlag,bMaxAudit,AuditMan,AuditManName,AuditDate,MaxAuditDate,Remark,bAuto)       
		   select @IoNo,'ItemMoveIn',1,1,@MoveDate,MakeMan,AcceptId,MoveNo,MKindId,getdate(),MakeMan,MakeManName,@MaxAudit,1,AuditMan,AuditManName,GetDate(),GetDate(),'调拨单自动生成调拨入库',1 from ItemMoveHDTB where MoveNo=@MoveNo
		  if @@error<>0
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='调拨入库单表头插入错误!'
			  RAISERROR(@string,16,1)
			  return 
		  end
		  --调拨入库表体
		  insert into WareInOutDTTB (AutoNo,BillNo,WareId,ItemId,ItemCode,ItemName,ItemSpc,ItemPic,ItemUnit,SubUnit,ExchRate,iFlag,ProType ,Color,BatchNo ,PlaceNo ,CompactNo ,ObjectId,
								   SjNo ,sOrderNo ,TechName ,InDate,PState ,TempNo,MainNum,MainPrice,TaxPrice,MainMoney,AllMoney,SubNum,SubPrice,SubTaxPrice,SubMoney,SubJOinNO,Remark)
		  select dbo.fnGetAutoNo('ItemMoveOut',GetDate()),@IoNo,a.InWare,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemPic,c.ItemUnit,c.SubUnit,c.ExchRate,c.iFlag,b.ProType ,b.Color,b.BatchNo ,b.PlaceNo ,b.CompactNo ,b.ObjectId,
								   b.SjNo ,b.sOrderNo ,b.TechName ,b.InDate,b.PState ,b.TempNo,IsNull(MoveNum,0),b.MovePrice,b.MovePrice,MainMoney=IsNull(MoveNum,0)*ISNULL(b.MovePrice,0),allMoney=IsNull(MoveNum,0)*ISNULL(b.MovePrice,0),
								   SubNum=case when c.iFlag=1 then IsNull(MoveNum,0)*ISNULL(c.ExchRate,1) else IsNull(MoveNum,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) end,
								   subprice=case when c.iFlag=1 then IsNull(b.MovePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.MovePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubTaxPrice=case when c.iFlag=1 then IsNull(b.MovePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.MovePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubMoney=IsNull(MoveNum,0)*ISNULL(b.MovePrice,0),
								   b.AutoNo,'调拨单自动生成调入库'
		  from ItemMoveHDTB a left join ItemMoveDT2TB b on a.MoveNo=b.MoveNo 
		  left join ItemTB c on b.ItemID=c.ItemID 
		  where a.MoveNo=@MoveNo and IsNull(MoveNum,0)>0
		  
		  if @@error<>0
		  begin
			 ROLLBACK TRANSACTION 
			 set @string='调拨入库单表明细插入错误!'
			 RAISERROR(@string,16,1)
			 return 
		  end
		  exec prUpDateInOutWareNum @IoNo,1
		  
		  
		  
		  ----反写回派工单
		  --Update ProDispatchDTTB Set PassNum=ISNULL(ProDispatchDTTB.PassNum,0)+ISNULL(m.MoveNum,0),SpoilNum=ISNULL(ProDispatchDTTB.SpoilNum,0)+ISNULL(m.SpoilNum,0),
		  --WasteNum=ISNULL(ProDispatchDTTB.WasteNum,0)+ISNULL(m.WasteNum,0),ScrapNum=ISNULL(ProDispatchDTTB.ScrapNum,0)+ISNULL(m.ScrapNum,0)
		  --from (select DispatchId,MoveNum,SpoilNum,WasteNum,ScrapNum from ItemMoveDTTB where MoveNo=@MoveNo)m
		  --where ProDispatchDTTB.AutoNo=m.DispatchId
		  ----更新上道合格数
		  --Update ProDispatchDTTB  Set TopPassNum=m.PassNum  from (select DispatchNo,ItemId,TechName,TopTech,PassNum from ProDispatchDTTB where DispatchNo in (select DispatchNo from ItemMoveDTTB where MoveNo=@MoveNo)) m 
		  --where  ProDispatchDTTB.DispatchNo=m.DispatchNo and ProDispatchDTTB.ItemID=m.ItemID and IsNull(ProDispatchDTTB.TopTech,'')=IsNull(m.TechName,'')
		  --更新是否完成
		  --Update ProDispatchDTTB Set bComplete=Case when ISNULL(PassNum,0)+ISNULL(SpoilNum,0)+ ISNULL(WasteNum,0)+ISNULL(ScrapNum,0)>=ISNULL(TopPassNum,0)  and ISNULL(TopPassNum,0)>0 then 1 else 0 end
		  --from ProDispatchDTTB m 
		  --where  DispatchNo in (select DispatchNo from ItemMoveDTTB where MoveNo=@MoveNo)
	  end
	  --出库
	  if exists(select MoveNo from ItemMoveDTTB where MoveNo=@MoveNo and IsNull(MoveNum,0)>0)  
	  begin
	      Set @IoNo=''
		  exec prGetTableNo 'ItemMoveOut','BillNo',@IoNo OUTPUT
		  if @IoNo is null
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='调拨出库单前缀没有设置!'
			  RAISERROR(@string,16,1)
			  return     
		  end
		  select @MaxAudit=MaxAuditLevel from SysTableSetTB where TableId='ItemMoveOut'
		  --调拨出库库表头
		  insert into WareInOutHDTB(BillNo,WKindID,WFlag,SignFlag,BillDate,WareMan,ObjectID,SubjoinNo,SubjoinTableId,
								  MakeDate,MakeMan,MakeManName,AuditFlag,bMaxAudit,AuditMan,AuditManName,AuditDate,MaxAuditDate,Remark,bAuto)       
		  select @IoNo,'ItemMoveOut',-1,1,@MoveDate,MakeMan,SendId,MoveNo,MKindId,getdate(),MakeMan,MakeManName,@MaxAudit,1,AuditMan,AuditManName,GetDate(),GetDate(),'调拨单自动生成调拨出库',1 from ItemMoveHDTB where MoveNo=@MoveNo
		  if @@error<>0
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='调拨出库单表头插入错误!'
			  RAISERROR(@string,16,1)
			  return 
		  end
		  --调拨出库表体
		  insert into WareInOutDTTB (AutoNo,BillNo,WareId,ItemId,ItemCode,ItemName,ItemSpc,ItemPic,ItemUnit,SubUnit,ExchRate,iFlag,ProType ,Color,BatchNo ,PlaceNo ,CompactNo ,ObjectId,
								   SjNo ,sOrderNo ,TechName ,InDate,PState ,TempNo,MainNum,MainPrice,TaxPrice,MainMoney,AllMoney,SubNum,SubPrice,SubTaxPrice,SubMoney,
								   SubJOinNO,SaleOrderNo,SaleOrderId,ProOrderNo,ProOrderId,DispatchNo,DispatchId,EmpId,EmpName,Remark)
		  select dbo.fnGetAutoNo('ItemMoveIn',GetDate()),@IoNo,a.OutWare,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemPic,c.ItemUnit,c.SubUnit,c.ExchRate,c.iFlag,b.ProType ,b.Color,b.BatchNo ,b.PlaceNo ,b.CompactNo ,b.ObjectId,
								   b.SjNo ,b.sOrderNo ,TechName=Case when IsNull(b.bDelTech,0)=0 then ISNULL(b.TechName,'') else '' end,b.InDate,b.PState ,b.TempNo,IsNull(MoveNum,0),b.MovePrice,b.MovePrice,MainMoney=IsNull(MoveNum,0)*ISNULL(b.MovePrice,0),allMoney=IsNull(MoveNum,0)*ISNULL(b.TaxPrice,0),
								   SubNum=case when c.iFlag=1 then IsNull(MoveNum,0)*ISNULL(c.ExchRate,1) else IsNull(MoveNum,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) end,
								   Subprice=case when c.iFlag=1 then IsNull(b.MovePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.MovePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubTaxPrice=case when c.iFlag=1 then IsNull(b.MovePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.MovePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubMoney=IsNull(MoveNum,0)*ISNULL(b.MovePrice,0),
								   b.AutoNo,b.SaleOrderNo,b.SaleOrderId,b.ProOrderNo,b.ProOrderId,b.DispatchNo,b.DispatchId,b.EmpId,b.EmpName,'调拨单自动生成调拨入库'
			from ItemMoveHDTB a left join ItemMoveDTTB b on a.MoveNo=b.MoveNo 
			left join ItemTB c on b.ItemID=c.ItemID 
			where a.MoveNo=@MoveNo and IsNull(MoveNum,0)>0
			Union all --不良品
		    select dbo.fnGetAutoNo('ItemMoveIn',GetDate()),@IoNo,b.SpoilWareId,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemPic,c.ItemUnit,c.SubUnit,c.ExchRate,c.iFlag,b.ProType ,b.Color,b.BatchNo ,b.PlaceNo ,b.CompactNo ,b.ObjectId,
								   b.SjNo ,b.sOrderNo,TechName=Case when IsNull(b.bDelTech,0)=0 then ISNULL(b.TechName,'') else '' end,b.InDate,b.PState ,b.TempNo,IsNull(SpoilNum,0),b.MovePrice,b.MovePrice,MainMoney=IsNull(SpoilNum,0)*ISNULL(b.MovePrice,0),allMoney=IsNull(SpoilNum,0)*ISNULL(b.TaxPrice,0),
								   SubNum=case when c.iFlag=1 then IsNull(SpoilNum,0)*ISNULL(c.ExchRate,1) else IsNull(SpoilNum,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) end,
								   Subprice=case when c.iFlag=1 then IsNull(b.MovePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.MovePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubTaxPrice=case when c.iFlag=1 then IsNull(b.MovePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.MovePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubMoney=IsNull(SpoilNum,0)*ISNULL(b.MovePrice,0),
								   b.AutoNo,b.SaleOrderNo,b.SaleOrderId,b.ProOrderNo,b.ProOrderId,b.DispatchNo,b.DispatchId,b.EmpId,b.EmpName,'调拨单自动生成不良品调拨入库'
			from ItemMoveHDTB a left join ItemMoveDTTB b on a.MoveNo=b.MoveNo 
			left join ItemTB c on b.ItemID=c.ItemID 
			where a.MoveNo=@MoveNo and IsNull(SpoilNum,0)>0
		    Union all --废品
		    select dbo.fnGetAutoNo('ItemMoveIn',GetDate()),@IoNo,b.WasteWareId,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemPic,c.ItemUnit,c.SubUnit,c.ExchRate,c.iFlag,b.ProType ,b.Color,b.BatchNo ,b.PlaceNo ,b.CompactNo ,b.ObjectId,
								   b.SjNo ,b.sOrderNo ,TechName=Case when IsNull(b.bDelTech,0)=0 then ISNULL(b.TechName,'') else '' end,b.InDate,b.PState ,b.TempNo,IsNull(WasteNum,0),b.MovePrice,b.MovePrice,MainMoney=IsNull(WasteNum,0)*ISNULL(b.MovePrice,0),allMoney=IsNull(WasteNum,0)*ISNULL(b.TaxPrice,0),
								   SubNum=case when c.iFlag=1 then IsNull(WasteNum,0)*ISNULL(c.ExchRate,1) else IsNull(WasteNum,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) end,
								   Subprice=case when c.iFlag=1 then IsNull(b.MovePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.MovePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubTaxPrice=case when c.iFlag=1 then IsNull(b.MovePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.MovePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubMoney=IsNull(WasteNum,0)*ISNULL(b.MovePrice,0),
								   b.AutoNo,b.SaleOrderNo,b.SaleOrderId,b.ProOrderNo,b.ProOrderId,b.DispatchNo,b.DispatchId,b.EmpId,b.EmpName,'调拨单自动生成废品调拨入库'
			from ItemMoveHDTB a left join ItemMoveDTTB b on a.MoveNo=b.MoveNo 
			left join ItemTB c on b.ItemID=c.ItemID 
			where a.MoveNo=@MoveNo and IsNull(WasteNum,0)>0
		    Union all --料废
		    select dbo.fnGetAutoNo('ItemMoveIn',GetDate()),@IoNo,b.ScrapWareId,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemPic,c.ItemUnit,c.SubUnit,c.ExchRate,c.iFlag,b.ProType ,b.Color,b.BatchNo ,b.PlaceNo ,b.CompactNo ,b.ObjectId,
								   b.SjNo ,b.sOrderNo,TechName=Case when IsNull(b.bDelTech,0)=0 then ISNULL(b.TechName,'') else '' end,b.InDate,b.PState ,b.TempNo,IsNull(ScrapNum,0),b.MovePrice,b.MovePrice,MainMoney=IsNull(ScrapNum,0)*ISNULL(b.MovePrice,0),allMoney=IsNull(ScrapNum,0)*ISNULL(b.TaxPrice,0),
								   SubNum=case when c.iFlag=1 then IsNull(ScrapNum,0)*ISNULL(c.ExchRate,1) else IsNull(ScrapNum,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) end,
								   Subprice=case when c.iFlag=1 then IsNull(b.MovePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.MovePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubTaxPrice=case when c.iFlag=1 then IsNull(b.MovePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.MovePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubMoney=IsNull(ScrapNum,0)*ISNULL(b.MovePrice,0),
								   b.AutoNo,b.SaleOrderNo,b.SaleOrderId,b.ProOrderNo,b.ProOrderId,b.DispatchNo,b.DispatchId,b.EmpId,b.EmpName,'调拨单自动生成料废调拨入库'
			from ItemMoveHDTB a left join ItemMoveDTTB b on a.MoveNo=b.MoveNo 
			left join ItemTB c on b.ItemID=c.ItemID 
			where a.MoveNo=@MoveNo and IsNull(ScrapNum,0)>0			
		  if @@error<>0
		  begin
			 ROLLBACK TRANSACTION 
			 set @string='调拨出库单表明细插入错误!'
			 RAISERROR(@string,16,1)
			 return 
		  end
		  exec prUpDateInOutWareNum @IoNo,-1
		  
		  --反写回派工单 将退料的数量加回到派工单,使下次加工入库还可以引用
		  Update ProDispatchDTTB Set BackNum=ISNULL(ProDispatchDTTB.BackNum,0)+ISNULL(m.MoveNum,0)
		  from (select DispatchId,MoveNum,SpoilNum,WasteNum,ScrapNum from ItemMoveDTTB where MoveNo=@MoveNo)m
		  where ProDispatchDTTB.AutoNo=m.DispatchId
		  
	  end
  end
  else if @IFlag=-1 
  begin
      set @IoNo=''
      if exists(select BillNo from WareInOutHDTB where WKindID='ItemMoveIn' and SubjoinNo=@MoveNo)
      begin
         select @IoNo=BillNo,@bMaxAudit=bMaxAudit from WareInOutHDTB where  WKindID='ItemMoveIn' and SubjoinNo=@MoveNo 
         if @bMaxAudit=1 
         begin
             exec prUpDateInOutWareNum @IoNo,-1 
             if @@error<>0
			  begin
				 ROLLBACK TRANSACTION 
				 set @string='调拨入库反审核出错!'
				 RAISERROR(@string,16,1)
				 return 
			  end
         end
         delete WareInOutDTTB where BillNo=@IoNo
         delete WareInOutHDTB where BillNo=@IoNo
         
      end
      
      set @IoNo=''
      if exists(select BillNo from WareInOutHDTB where WKindID='ItemMoveOut' and SubjoinNo=@MoveNo)
      begin
         select @IoNo=BillNo,@bMaxAudit=bMaxAudit from WareInOutHDTB where  WKindID='ItemMoveOut' and  SubjoinNo=@MoveNo 
         if @bMaxAudit=1 
         begin
             exec prUpDateInOutWareNum @IoNo,1 
             if @@error<>0
			  begin
				 ROLLBACK TRANSACTION 
				 set @string='调拨出库反审核出错!'
				 RAISERROR(@string,16,1)
				 return 
			  end
         end

		  
         delete WareInOutDTTB where BillNo=@IoNo
         delete WareInOutHDTB where BillNo=@IoNo
      end
      
      --反写回派工单 将退料的数量加回到派工单,使下次加工入库还可以引用
	  Update ProDispatchDTTB Set BackNum=ISNULL(ProDispatchDTTB.BackNum,0)-ISNULL(m.MoveNum,0)
	  from (select DispatchId,MoveNum,SpoilNum,WasteNum,ScrapNum from ItemMoveDTTB where MoveNo=@MoveNo)m
	  where ProDispatchDTTB.AutoNo=m.DispatchId
		  
	  ----更新上道合格数
	  --Update ProDispatchDTTB  Set TopPassNum=m.PassNum  from (select DispatchNo,ItemId,TechName,TopTech,PassNum from ProDispatchDTTB where DispatchNo in (select DispatchNo from ItemMoveDTTB where MoveNo=@MoveNo)) m 
	  --where  ProDispatchDTTB.DispatchNo=m.DispatchNo and ProDispatchDTTB.ItemID=m.ItemID and IsNull(ProDispatchDTTB.TopTech,'')=IsNull(m.TechName,'')
	  ----更新是否完成
	  --Update ProDispatchDTTB Set bComplete=Case when ISNULL(PassNum,0)+ISNULL(SpoilNum,0)+ ISNULL(WasteNum,0)+ISNULL(ScrapNum,0)>=ISNULL(TopPassNum,0)  and ISNULL(TopPassNum,0)>0 then 1 else 0 end
	  --from ProDispatchDTTB m 
	  --where  DispatchNo in (select DispatchNo from ItemMoveDTTB where MoveNo=@MoveNo)
      
  end
  commit Tran
  select null
end 

--Exec PrItemMoveBackAudit 'AMBK1503260001',-1 
GO


if exists(select Name from sysobjects where name='PrWareToInvoice' and type='p')
  Drop procedure dbo.PrWareToInvoice
go
Create procedure dbo.PrWareToInvoice @BillNo varchar(30),@IFlag int
as
begin
  DECLARE @InvoiceNo VARCHAR(30),@PayNo VARCHAR(50),@String varchar(100),@WKindId varchar(50),@MaxAudit smallint,@bMaxAudit bit
  select @WKindId=WKindId from WareInOutHDTB where BillNO=@BillNo
  BEGIN TRANSACTION
  --记账
  if @IFlag=1 
  begin
	  --应付记账
	  if @WKindId='StockIn' and not Exists (select AutoId from StockInvoiceHDTB where SubjoinNo=@BillNo)
	  begin
	      Set @InvoiceNo=''
		  exec prGetTableNo 'StockInvoiceHDTB','InvoiceNo',@InvoiceNo OUTPUT
		  if @InvoiceNo is null
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='应付账款表单前缀没有设置!'
			  RAISERROR(@string,16,1)
			  return     
		  end
		  select @MaxAudit=MaxAuditLevel from SysTableSetTB where TableId='StockInvoiceHDTB'
		  --应付记账表头
		  insert into StockInvoiceHDTB(InvoiceNo,SourceDate,InvoiceDate,SignFlag,PrvId,EmpId,SubjoinNo,
								  MakeDate,MakeMan,MakeManName,AuditFlag,bMaxAudit,AuditManName,AuditDate,MaxAuditDate,Remark)       
		   select @InvoiceNo,BillDate,Convert(varchar(20),getdate(),23),SignFlag,ObjectID,WareMan,BillNO,getdate(),MakeMan,MakeManName,@MaxAudit,1,AuditManName,GetDate(),GetDate(),'采购入库自动记账生成记账单' from WareInOutHDTB where BillNo=@BillNo
		  if @@error<>0
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='生成应付记账表头出错！'
			  RAISERROR(@string,16,1)
			  return 
		  end
		  --应付记账表体
		  insert into StockInvoiceDTTB (AutoNo,InvoiceNo,ItemId,ItemCode,ItemName,ItemSpc,ItemPic,ItemUnit,SubUnit,ExchRate,iFlag,ProType ,Color,BatchNo ,PlaceNo ,CompactNo ,ObjectId,
								   SjNo ,sOrderNo ,TechName ,InDate,PState ,TempNo,InvoiceNum,InvoicePrice,TaxPrice,InvoiceMoney,AllMoney,SubNum,SubPrice,SubTaxPrice,SubMoney,IoNo,IoId,Remark)
		  select dbo.fnGetAutoNo('StockInvoiceHDTB',GetDate()),@InvoiceNo,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemPic,c.ItemUnit,c.SubUnit,c.ExchRate,c.iFlag,b.ProType ,b.Color,b.BatchNo ,b.PlaceNo ,b.CompactNo ,b.ObjectId,
								   b.SjNo ,b.sOrderNo ,b.TechName ,b.InDate,b.PState ,b.TempNo,IsNull(MainNum,0),IsNull(b.MainPrice,0),b.TaxPrice,b.MainMoney,b.AllMoney,b.SubNum,b.SubPrice,b.SubTaxPrice,b.SubMoney,b.BillNO,b.AutoNo,''
			from WareInOutHDTB a left join WareInOutDTTB b on a.BillNo=b.BillNo left join ItemTB c on b.ItemID=c.ItemID where a.BillNo=@BillNo 
		  if @@error<>0
		  begin
			 ROLLBACK TRANSACTION 
			 set @string='生成应付记账表体出错！'
			 RAISERROR(@string,16,1)
			 return 
		  end
	  end
     --应收记账
     if @WKindId='SaleOut' and not Exists (select AutoId from SaleInvoiceHDTB where SubjoinNo=@BillNo)
     begin
	      Set @InvoiceNo=''
		  exec prGetTableNo 'SaleInvoiceHDTB','InvoiceNo',@InvoiceNo OUTPUT
		  if @InvoiceNo is null
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='应收账款表单前缀没有设置!'
			  RAISERROR(@string,16,1)
			  return     
		  end
		  select @MaxAudit=MaxAuditLevel from SysTableSetTB where TableId='SaleInvoiceHDTB'
		  --应收记账表头
		  insert into SaleInvoiceHDTB(InvoiceNo,SourceDate,InvoiceDate,SignFlag,CustId,EmpId,SubjoinNo,
								  MakeDate,MakeMan,MakeManName,AuditFlag,bMaxAudit,AuditManName,AuditDate,MaxAuditDate,Remark)       
		   select @InvoiceNo,BillDate,Convert(varchar(20),getdate(),23),SignFlag,ObjectID,WareMan,BillNO,getdate(),MakeMan,MakeManName,@MaxAudit,1,AuditManName,GetDate(),GetDate(),'销售出库自动记账生成记账单' from WareInOutHDTB where BillNo=@BillNo
		  if @@error<>0
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='生成应收记账表头出错！'
			  RAISERROR(@string,16,1)
			  return 
		  end
			--应收记账表体
		  insert into SaleInvoiceDTTB (AutoNo,InvoiceNo,ItemId,ItemCode,ItemName,ItemSpc,ItemPic,ItemUnit,SubUnit,ExchRate,iFlag,ProType ,Color,BatchNo ,PlaceNo ,CompactNo ,ObjectId,
								   SjNo ,sOrderNo ,TechName ,InDate,PState ,TempNo,InvoiceNum,InvoicePrice,TaxPrice,InvoiceMoney,AllMoney,SubNum,SubPrice,SubTaxPrice,SubMoney,IoNo,IoId,Remark)
		  select dbo.fnGetAutoNo('SaleInvoiceHDTB',GetDate()),@InvoiceNo,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemPic,c.ItemUnit,c.SubUnit,c.ExchRate,c.iFlag,b.ProType ,b.Color,b.BatchNo ,b.PlaceNo ,b.CompactNo ,b.ObjectId,
								   b.SjNo ,b.sOrderNo ,b.TechName ,b.InDate,b.PState ,b.TempNo,IsNull(MainNum,0),IsNull(b.MainPrice,0),b.TaxPrice,b.MainMoney,b.AllMoney,b.SubNum,b.SubPrice,b.SubTaxPrice,b.SubMoney,b.BillNO,b.AutoNo,''
			from WareInOutHDTB a left join WareInOutDTTB b on a.BillNo=b.BillNo left join ItemTB c on b.ItemID=c.ItemID where a.BillNo=@BillNo
		  if @@error<>0
		  begin
			 ROLLBACK TRANSACTION 
			 set @string='生成应收记账表体出错！'
			 RAISERROR(@string,16,1)
			 return 
		  end
	  end	
	  --更新仓库单据记账标识
	  Update WareInOutHDTB Set bInvoice=1 where BillNO=@BillNo  
  end
  --取消记账
  else if @IFlag=-1 
  begin
      set @InvoiceNo=''
      --应付记账
      if @WKindId='StockIn'
      begin
         select @InvoiceNo=InvoiceNo,@bMaxAudit=bMaxAudit from StockInvoiceHDTB where SubjoinNo=@BillNo 
         
         set @PayNo=''
         select @PayNo=PayNo from StockPayDTTB where InvoiceNo=@InvoiceNo
         if @PayNo<>''
         begin
         	 ROLLBACK TRANSACTION 
			 set @string='记账单已经付款,付款单号: '+@PayNo
			 RAISERROR(@string,16,1)
			 return 
         end
         
         delete StockInvoiceDTTB where InvoiceNo=@InvoiceNo
         delete StockInvoiceHDTB where InvoiceNo=@InvoiceNo
      end      
      --应收记账
      if @WKindId='SaleOut'
      begin
         select @InvoiceNo=InvoiceNo,@bMaxAudit=bMaxAudit from SaleInvoiceHDTB where SubjoinNo=@BillNo 
         
         set @PayNo=''
         select @PayNo=PayNo from SalePayDTTB where InvoiceNo=@InvoiceNo
         if @PayNo<>''
         begin
         	 ROLLBACK TRANSACTION 
			 set @string='记账单已经收款,收款单号: '+@PayNo
			 RAISERROR(@string,16,1)
			 return 
         end
                  
         delete SaleInvoiceDTTB where InvoiceNo=@InvoiceNo
         delete SaleInvoiceHDTB where InvoiceNo=@InvoiceNo
      end
      --更新仓库单据记账标识
	  Update WareInOutHDTB Set bInvoice=0 where BillNO=@BillNo  
  end
  commit Tran
  select null
end 

--Exec PrWareToInvoice 'XSCK1301052670',-1 
GO

--判断调拨库存是否够
if Exists(select Name from sysobjects where name='PrCheckMoveNum' and type='p')
  Drop procedure dbo.PrCheckMoveNum
go
Create Procedure dbo.PrCheckMoveNum @MoveNO varchar(20),@iFlag Smallint
as
declare @PrintOut varchar(8000)
declare @TempTable table(Z varchar(8000))
set @PrintOut=''
if @iFlag=1 --审核
begin
 insert into @TempTable (Z) 
    select Z='【'+Convert(varchar(60),d.WareName)+'】：'+Convert(varchar(60),c.ItemName)+'  <'+Convert(varchar(20),CONVERT(Numeric(18,2),ISNULL(a.MainNum,0)-ISNULL(b.WareNum,0)))+'>' from 
     (select  a.OutWare,b.ItemId,ProType=ISNULL(b.ProType,''),Color=ISNULL(b.Color,''),BatchNo=ISNULL(b.BatchNo,''),PlaceNo=ISNULL(b.PlaceNo,''), CompactNo=ISNULL(b.CompactNo,''),ObjectID=ISNULL(b.ObjectID,''),SjNo=ISNULL(b.SjNo,''),
             sOrderNO=ISNULL(b.sOrderNO,''),TechName=ISNULL(b.TechName,''),InDate=ISNULL(b.InDate,''),PState=ISNULL(b.PState,''),TempNo=ISNULL(b.TempNo,''),MainNum=SUM(ISNULL(b.MoveNum,0))
             from ItemMoveHDTB a with (NoLock) left join ItemMoveDTTB b on a.MoveNo=b.MoveNo where a.MoveNo=@MoveNO group by   a.OutWare,b.ItemId,ISNULL(b.ProType,''),ISNULL(b.Color,''),ISNULL(b.BatchNo,''),ISNULL(b.PlaceNo,''),ISNULL(b.CompactNo,''),ISNULL(b.ObjectID,''), 
             ISNULL(b.SjNo,''),ISNULL(b.sOrderNO,''),ISNULL(b.TechName,''),ISNULL(b.InDate,''),ISNULL(b.PState,''),ISNULL(b.TempNo,'')) a 
      left join WareStorageTB b with (NoLock) on 
                a.ItemId=b.ItemId and a.OutWare=b.WareId and Isnull(a.ProType,'')=Isnull(b.ProType,'') and Isnull( a.Color,'')=Isnull(b.Color,'') 
			    and Isnull( a.BatchNo,'')=Isnull(b.BatchNo,'') and Isnull(a.PlaceNo,'')=Isnull(b.PlaceNo,'') and Isnull(a.CompactNo,'')=Isnull(b.CompactNo,'') and Isnull(a.ObjectID,'')=Isnull(b.ObjectID,'') and Isnull(a.SjNo,'')=Isnull(b.SjNo,'') 
			    and Isnull(a.sOrderNO,'')=Isnull(b.sOrderNO,'') and Isnull(a.TechName,'')=Isnull(b.TechName,'') and Isnull(a.InDate,'')=Isnull(b.InDate,'') and Isnull(a.PState,'')=Isnull(b.PState,'') and Isnull(a.TempNo,'')=Isnull(b.TempNo,'')
	  left join ItemTB c with (NoLock) on a.ItemId=c.ItemId 
	  left join WareTB d with (NoLock) on a.OutWare=d.WareId	   
      where ISNULL(a.MainNum,0)>ISNULL(b.WareNum,0)  and ISNULL(d.bNoCheck,0)=0 and ISNULL(c.bNoCheckWareNum,0)=0
end
else --反审核
begin
   insert into @TempTable (Z) 
    select Z='【'+Convert(varchar(60),d.WareName)+'】：'+Convert(varchar(60),c.ItemName)+'  <'+Convert(varchar(20),CONVERT(Numeric(18,2),ISNULL(a.MainNum,0)-ISNULL(b.WareNum,0)))+'>' from 
     (select  a.InWare,b.ItemId,ProType=ISNULL(b.InProType,''),Color=ISNULL(b.InColor,''),BatchNo=ISNULL(b.InBatchNo,''),PlaceNo=ISNULL(b.InPlaceNo,''), CompactNo=ISNULL(b.InCompactNo,''),ObjectID=ISNULL(b.InObjectID,''),SjNo=ISNULL(b.InSjNo,''),
             sOrderNO=ISNULL(b.InsOrderNO,''),TechName=ISNULL(b.InTechName,''),InDate=ISNULL(b.InInDate,''),PState=ISNULL(b.InPState,''),TempNo=ISNULL(b.InTempNo,''),MainNum=SUM(ISNULL(b.MoveNum,0))
             from ItemMoveHDTB a with (NoLock) left join ItemMoveDTTB b on a.MoveNo=b.MoveNo where  a.MoveNo=@MoveNO group by  a.InWare,b.ItemId,ISNULL(b.InProType,''),ISNULL(b.InColor,''),ISNULL(b.InBatchNo,''),ISNULL(b.InPlaceNo,''),ISNULL(b.InCompactNo,''),ISNULL(b.InObjectID,''), 
             ISNULL(b.InSjNo,''),ISNULL(b.InsOrderNO,''),ISNULL(b.InTechName,''),ISNULL(b.InInDate,''),ISNULL(b.InPState,''),ISNULL(b.InTempNo,'')) a 
      left join WareStorageTB b with (NoLock) on 
                a.ItemId=b.ItemId and a.InWare=b.WareId and Isnull(a.ProType,'')=Isnull(b.ProType,'') and Isnull( a.Color,'')=Isnull(b.Color,'') 
			    and Isnull( a.BatchNo,'')=Isnull(b.BatchNo,'') and Isnull(a.PlaceNo,'')=Isnull(b.PlaceNo,'') and Isnull(a.CompactNo,'')=Isnull(b.CompactNo,'') and Isnull(a.ObjectID,'')=Isnull(b.ObjectID,'') and Isnull(a.SjNo,'')=Isnull(b.SjNo,'') 
			    and Isnull(a.sOrderNO,'')=Isnull(b.sOrderNO,'') and Isnull(a.TechName,'')=Isnull(b.TechName,'') and Isnull(a.InDate,'')=Isnull(b.InDate,'') and Isnull(a.PState,'')=Isnull(b.PState,'') and Isnull(a.TempNo,'')=Isnull(b.TempNo,'')
	  left join ItemTB c with (NoLock) on a.ItemId=c.ItemId 
	  left join WareTB d with (NoLock) on a.InWare=d.WareId	   
      where ISNULL(a.MainNum,0)>ISNULL(b.WareNum,0)  and ISNULL(d.bNoCheck,0)=0 and ISNULL(c.bNoCheckWareNum,0)=0
end
if exists (select Z from @TempTable )
begin
   select @PrintOut=@PrintOut+Z+',' from @TempTable
end
select CheckResult=@PrintOut

--exec PrCheckMoveNum 'CHDB1301051470',1
go


--判断调拨库存是否够
if Exists(select Name from sysobjects where name='PrCheckMoveInNum' and type='p')
  Drop procedure dbo.PrCheckMoveInNum
go
Create Procedure dbo.PrCheckMoveInNum @MoveNO varchar(20),@iFlag Smallint
as
declare @PrintOut varchar(8000)
declare @TempTable table(Z varchar(8000))
set @PrintOut=''
if @iFlag=1 --审核
begin
 insert into @TempTable (Z) 
    select Z='【'+Convert(varchar(60),d.WareName)+'】：'+Convert(varchar(60),c.ItemName)+'  <'+Convert(varchar(20),CONVERT(Numeric(18,2),ISNULL(a.MainNum,0)-ISNULL(b.WareNum,0)))+'>' from 
     (select  a.OutWare,b.ItemId,ProType=ISNULL(b.ProType,''),Color=ISNULL(b.Color,''),BatchNo=ISNULL(b.BatchNo,''),PlaceNo=ISNULL(b.PlaceNo,''), CompactNo=ISNULL(b.CompactNo,''),ObjectID=ISNULL(b.ObjectID,''),SjNo=ISNULL(b.SjNo,''),
             sOrderNO=ISNULL(b.sOrderNO,''),TechName=ISNULL(b.TechName,''),InDate=ISNULL(b.InDate,''),PState=ISNULL(b.PState,''),TempNo=ISNULL(b.TempNo,''),MainNum=SUM(ISNULL(b.MoveNum,0))
             from ItemMoveHDTB a with (NoLock) left join ItemMoveDT2TB b on a.MoveNo=b.MoveNo where a.MoveNo=@MoveNO group by   a.OutWare,b.ItemId,ISNULL(b.ProType,''),ISNULL(b.Color,''),ISNULL(b.BatchNo,''),ISNULL(b.PlaceNo,''),ISNULL(b.CompactNo,''),ISNULL(b.ObjectID,''), 
             ISNULL(b.SjNo,''),ISNULL(b.sOrderNO,''),ISNULL(b.TechName,''),ISNULL(b.InDate,''),ISNULL(b.PState,''),ISNULL(b.TempNo,'')) a 
      left join WareStorageTB b with (NoLock) on 
                a.ItemId=b.ItemId and a.OutWare=b.WareId and Isnull(a.ProType,'')=Isnull(b.ProType,'') and Isnull( a.Color,'')=Isnull(b.Color,'') 
			    and Isnull( a.BatchNo,'')=Isnull(b.BatchNo,'') and Isnull(a.PlaceNo,'')=Isnull(b.PlaceNo,'') and Isnull(a.CompactNo,'')=Isnull(b.CompactNo,'') and Isnull(a.ObjectID,'')=Isnull(b.ObjectID,'') and Isnull(a.SjNo,'')=Isnull(b.SjNo,'') 
			    and Isnull(a.sOrderNO,'')=Isnull(b.sOrderNO,'') and Isnull(a.TechName,'')=Isnull(b.TechName,'') and Isnull(a.InDate,'')=Isnull(b.InDate,'') and Isnull(a.PState,'')=Isnull(b.PState,'') and Isnull(a.TempNo,'')=Isnull(b.TempNo,'')
	  left join ItemTB c with (NoLock) on a.ItemId=c.ItemId 
	  left join WareTB d with (NoLock) on a.OutWare=d.WareId	   
      where ISNULL(a.MainNum,0)>ISNULL(b.WareNum,0)  and ISNULL(d.bNoCheck,0)=0 and ISNULL(c.bNoCheckWareNum,0)=0
end
else --反审核
begin
    insert into @TempTable (Z) 
    select Z='【'+Convert(varchar(60),d.WareName)+'】：'+Convert(varchar(60),c.ItemName)+'  <'+Convert(varchar(20),CONVERT(Numeric(18,2),ISNULL(a.MainNum,0)-ISNULL(b.WareNum,0)))+'>' from 
     (select  a.InWare,b.ItemId,ProType=ISNULL(b.ProType,''),Color=ISNULL(b.Color,''),BatchNo=ISNULL(b.BatchNo,''),PlaceNo=ISNULL(b.PlaceNo,''), CompactNo=ISNULL(b.CompactNo,''),ObjectID=ISNULL(b.ObjectID,''),SjNo=ISNULL(b.SjNo,''),
             sOrderNO=ISNULL(b.sOrderNO,''),TechName=Case when IsNull(b.bDelTech,0)=0 then ISNULL(b.TechName,'') else '' end,InDate=ISNULL(b.InDate,''),PState=ISNULL(b.PState,''),TempNo=ISNULL(b.TempNo,''),MainNum=SUM(ISNULL(b.MoveNum,0))
             from ItemMoveHDTB a with (NoLock) left join ItemMoveDTTB b on a.MoveNo=b.MoveNo where a.MoveNo=@MoveNO 
             group by   a.InWare,b.ItemId,ISNULL(b.ProType,''),ISNULL(b.Color,''),ISNULL(b.BatchNo,''),ISNULL(b.PlaceNo,''),ISNULL(b.CompactNo,''),ISNULL(b.ObjectID,''), 
             ISNULL(b.SjNo,''),ISNULL(b.sOrderNO,''),Case when IsNull(b.bDelTech,0)=0 then ISNULL(b.TechName,'') else '' end,ISNULL(b.InDate,''),ISNULL(b.PState,''),ISNULL(b.TempNo,'')
      Union all  --不良品
      select  b.SpoilWareId,b.ItemId,ProType=ISNULL(b.ProType,''),Color=ISNULL(b.Color,''),BatchNo=ISNULL(b.BatchNo,''),PlaceNo=ISNULL(b.PlaceNo,''), CompactNo=ISNULL(b.CompactNo,''),ObjectID=ISNULL(b.ObjectID,''),SjNo=ISNULL(b.SjNo,''),
             sOrderNO=ISNULL(b.sOrderNO,''),TechName=Case when IsNull(b.bDelTech,0)=0 then ISNULL(b.TechName,'') else '' end,InDate=ISNULL(b.InDate,''),PState=ISNULL(b.PState,''),TempNo=ISNULL(b.TempNo,''),MainNum=SUM(ISNULL(b.SpoilNum,0))
             from ItemMoveHDTB a with (NoLock) left join ItemMoveDTTB b on a.MoveNo=b.MoveNo where a.MoveNo=@MoveNO  and ISNULL(b.SpoilNum,0)>0 
             group by   b.SpoilWareId,b.ItemId,ISNULL(b.ProType,''),ISNULL(b.Color,''),ISNULL(b.BatchNo,''),ISNULL(b.PlaceNo,''),ISNULL(b.CompactNo,''),ISNULL(b.ObjectID,''), 
             ISNULL(b.SjNo,''),ISNULL(b.sOrderNO,''),Case when IsNull(b.bDelTech,0)=0 then ISNULL(b.TechName,'') else '' end,ISNULL(b.InDate,''),ISNULL(b.PState,''),ISNULL(b.TempNo,'')        
      Union all  --废品
      select  b.WasteWareId,b.ItemId,ProType=ISNULL(b.ProType,''),Color=ISNULL(b.Color,''),BatchNo=ISNULL(b.BatchNo,''),PlaceNo=ISNULL(b.PlaceNo,''), CompactNo=ISNULL(b.CompactNo,''),ObjectID=ISNULL(b.ObjectID,''),SjNo=ISNULL(b.SjNo,''),
             sOrderNO=ISNULL(b.sOrderNO,''),TechName=Case when IsNull(b.bDelTech,0)=0 then ISNULL(b.TechName,'') else '' end,InDate=ISNULL(b.InDate,''),PState=ISNULL(b.PState,''),TempNo=ISNULL(b.TempNo,''),MainNum=SUM(ISNULL(b.WasteNum,0))
             from ItemMoveHDTB a with (NoLock) left join ItemMoveDTTB b on a.MoveNo=b.MoveNo where a.MoveNo=@MoveNO  and ISNULL(b.WasteNum,0)>0 
             group by   b.WasteWareId,b.ItemId,ISNULL(b.ProType,''),ISNULL(b.Color,''),ISNULL(b.BatchNo,''),ISNULL(b.PlaceNo,''),ISNULL(b.CompactNo,''),ISNULL(b.ObjectID,''), 
             ISNULL(b.SjNo,''),ISNULL(b.sOrderNO,''),Case when IsNull(b.bDelTech,0)=0 then ISNULL(b.TechName,'') else '' end,ISNULL(b.InDate,''),ISNULL(b.PState,''),ISNULL(b.TempNo,'')        
      Union all  --料废
      select  b.ScrapWareId,b.ItemId,ProType=ISNULL(b.ProType,''),Color=ISNULL(b.Color,''),BatchNo=ISNULL(b.BatchNo,''),PlaceNo=ISNULL(b.PlaceNo,''), CompactNo=ISNULL(b.CompactNo,''),ObjectID=ISNULL(b.ObjectID,''),SjNo=ISNULL(b.SjNo,''),
             sOrderNO=ISNULL(b.sOrderNO,''),TechName=Case when IsNull(b.bDelTech,0)=0 then ISNULL(b.TechName,'') else '' end,InDate=ISNULL(b.InDate,''),PState=ISNULL(b.PState,''),TempNo=ISNULL(b.TempNo,''),MainNum=SUM(ISNULL(b.ScrapNum,0))
             from ItemMoveHDTB a with (NoLock) left join ItemMoveDTTB b on a.MoveNo=b.MoveNo where a.MoveNo=@MoveNO and ISNULL(b.ScrapNum,0)>0
             group by   b.ScrapWareId,b.ItemId,ISNULL(b.ProType,''),ISNULL(b.Color,''),ISNULL(b.BatchNo,''),ISNULL(b.PlaceNo,''),ISNULL(b.CompactNo,''),ISNULL(b.ObjectID,''), 
             ISNULL(b.SjNo,''),ISNULL(b.sOrderNO,''),Case when IsNull(b.bDelTech,0)=0 then ISNULL(b.TechName,'') else '' end,ISNULL(b.InDate,''),ISNULL(b.PState,''),ISNULL(b.TempNo,'')                   
      ) a 
      left join WareStorageTB b with (NoLock) on 
                a.ItemId=b.ItemId and a.InWare=b.WareId and Isnull(a.ProType,'')=Isnull(b.ProType,'') and Isnull( a.Color,'')=Isnull(b.Color,'') 
			    and Isnull( a.BatchNo,'')=Isnull(b.BatchNo,'') and Isnull(a.PlaceNo,'')=Isnull(b.PlaceNo,'') and Isnull(a.CompactNo,'')=Isnull(b.CompactNo,'') and Isnull(a.ObjectID,'')=Isnull(b.ObjectID,'') and Isnull(a.SjNo,'')=Isnull(b.SjNo,'') 
			    and Isnull(a.sOrderNO,'')=Isnull(b.sOrderNO,'') and Isnull(a.TechName,'')=Isnull(b.TechName,'') and Isnull(a.InDate,'')=Isnull(b.InDate,'') and Isnull(a.PState,'')=Isnull(b.PState,'') and Isnull(a.TempNo,'')=Isnull(b.TempNo,'')
	  left join ItemTB c with (NoLock) on a.ItemId=c.ItemId 
	  left join WareTB d with (NoLock) on a.InWare=d.WareId	   
      where ISNULL(a.MainNum,0)>ISNULL(b.WareNum,0)  and ISNULL(d.bNoCheck,0)=0 and ISNULL(c.bNoCheckWareNum,0)=0
end
if exists (select Z from @TempTable )
begin
   select @PrintOut=@PrintOut+Z+',' from @TempTable
end
select CheckResult=@PrintOut

--exec PrCheckMoveInNum 'WXLL1212065133',1
go


if exists(select Name from sysobjects where name='PrItemMoveAudit' and type='p')
  Drop procedure dbo.PrItemMoveAudit
go
Create procedure dbo.PrItemMoveAudit @MoveNo varchar(30),@IFlag int
as
begin
--入库
  DECLARE @IoNo VARCHAR(30),@String varchar(100),@BreakPoint varchar(10),@MoveDate Datetime,@SubjoinTableId varchar(50),@MaxAudit smallint,@bMaxAudit bit
  BEGIN TRANSACTION
  if @IFlag=1 
  begin
	  Select @MoveDate=MoveDate from ItemMoveHDTB where MoveNo=@MoveNo
	  if exists(select MoveNo from ItemMoveDTTB where MoveNo=@MoveNo and IsNull(MoveNum,0)>0) 
	  begin
	      Set @IoNo=''
		  set @breakpoint=9999
		  exec prGetTableNo 'ItemMoveIn','BillNo',@IoNo OUTPUT
		  if @IoNo is null
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='错误号:'+@breakpoint+'    '+'<调拨入库单前缀没有设置!>'
			  RAISERROR(@string,16,1)
			  return     
		  end
		  set @breakpoint=1000001
		  select @MaxAudit=MaxAuditLevel from SysTableSetTB where TableId='ItemMoveIn'
		  --调拨入库表头
		  insert into WareInOutHDTB(BillNo,WKindID,WFlag,SignFlag,BillDate,WareMan,ObjectID,SubjoinNo,SubjoinTableId,
								  MakeDate,MakeMan,MakeManName,AuditFlag,bMaxAudit,AuditMan,AuditManName,AuditDate,MaxAuditDate,Remark,bAuto)       
		   select @IoNo,'ItemMoveIn',1,1,@MoveDate,MakeMan,AcceptId,MoveNo,MKindId,getdate(),MakeMan,MakeManName,@MaxAudit,1,AuditMan,AuditManName,GetDate(),GetDate(),'调拨单自动生成调拨入库',1 from ItemMoveHDTB where MoveNo=@MoveNo
		  if @@error<>0
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='Err:'+@breakpoint+'    '+'<调拨入库单表头插入错误！>'
			  RAISERROR(@string,16,1)
			  return 
		  end
		  set @breakpoint=1000002
			--调拨入库表体
		  insert into WareInOutDTTB (AutoNo,BillNo,WareId,ItemId,ItemCode,ItemName,ItemSpc,ItemPic,ItemUnit,SubUnit,ExchRate,iFlag,ProType ,Color,BatchNo ,PlaceNo ,CompactNo ,ObjectId,
								   SjNo ,sOrderNo ,TechName ,InDate,PState ,TempNo,MainNum,MainPrice,TaxPrice,MainMoney,AllMoney,SubNum,SubPrice,SubTaxPrice,SubMoney,SubJOinNO,Remark)
		  select dbo.fnGetAutoNo('ItemMoveIn',GetDate()),@IoNo,a.InWare,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemPic,c.ItemUnit,c.SubUnit,c.ExchRate,c.iFlag,b.InProType ,b.InColor,b.InBatchNo ,b.InPlaceNo ,b.InCompactNo ,b.InObjectId,
								   b.InSjNo ,b.InsOrderNo ,b.InTechName ,b.InInDate,b.InPState ,b.InTempNo,IsNull(MoveNum,0),b.MovePrice,b.MovePrice,MainMoney=IsNull(MoveNum,0)*ISNULL(b.MovePrice,0),allMoney=IsNull(MoveNum,0)*ISNULL(b.TaxPrice,0),
								   SubNum=case when c.iFlag=0 then IsNull(MoveNum,0)*ISNULL(c.ExchRate,1) else IsNull(MoveNum,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) end,
								   Subprice=case when c.iFlag=0 then IsNull(b.MovePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.MovePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubTaxPrice=case when c.iFlag=0 then IsNull(b.MovePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.MovePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubMoney=IsNull(MoveNum,0)*ISNULL(b.MovePrice,0),
								   b.AutoNo,'调拨单自动生成调拨入库'
			from ItemMoveHDTB a left join ItemMoveDTTB b on a.MoveNo=b.MoveNo 
			left join ItemTB c on b.ItemID=c.ItemID 
			where a.MoveNo=@MoveNo and IsNull(MoveNum,0)>0
		  if @@error<>0
		  begin
			 ROLLBACK TRANSACTION 
			 set @string='Err:'+@breakpoint+'    '+'<调拨入库单表明细插入错误！>'
			 RAISERROR(@string,16,1)
			 return 
		  end
		  exec prUpDateInOutWareNum @IoNo,1
	  end
	  --出库
	  if exists(select MoveNo from ItemMoveDTTB where MoveNo=@MoveNo and IsNull(MoveNum,0)>0)  
	  begin
	      Set @IoNo=''
		  set @breakpoint=1000003
		  exec prGetTableNo 'ItemMoveOut','BillNo',@IoNo OUTPUT
		  if @IoNo is null
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='错误号:'+@breakpoint+'    '+'<调拨出库单前缀没有设置!>'
			  RAISERROR(@string,16,1)
			  return     
		  end
		  set @breakpoint=1000004
		  select @MaxAudit=MaxAuditLevel from SysTableSetTB where TableId='ItemMoveOut'
			 --调拨出库库表头
		  insert into WareInOutHDTB(BillNo,WKindID,WFlag,SignFlag,BillDate,WareMan,ObjectID,SubjoinNo,SubjoinTableId,
								  MakeDate,MakeMan,MakeManName,AuditFlag,bMaxAudit,AuditMan,AuditManName,AuditDate,MaxAuditDate,Remark,bAuto)       
		   select @IoNo,'ItemMoveOut',-1,1,@MoveDate,MakeMan,SendId,MoveNo,MKindId,getdate(),MakeMan,MakeManName,@MaxAudit,1,AuditMan,AuditManName,GetDate(),GetDate(),'调拨单自动生成调拨出库',1 from ItemMoveHDTB where MoveNo=@MoveNo
		  if @@error<>0
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='Err:'+@breakpoint+'    '+'<调拨出库单表头插入错误！>'
			  RAISERROR(@string,16,1)
			  return 
		  end
		  set @breakpoint=1000005
			--调拨出库表体
		insert into WareInOutDTTB (AutoNo,BillNo,WareId,ItemId,ItemCode,ItemName,ItemSpc,ItemPic,ItemUnit,SubUnit,ExchRate,iFlag,ProType ,Color,BatchNo ,PlaceNo ,CompactNo ,ObjectId,
								   SjNo ,sOrderNo ,TechName ,InDate,PState ,TempNo,MainNum,MainPrice,TaxPrice,MainMoney,AllMoney,SubNum,SubPrice,SubTaxPrice,SubMoney,SubJOinNO,Remark)
		  select dbo.fnGetAutoNo('ItemMoveOut',GetDate()),@IoNo,a.OutWare,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemPic,c.ItemUnit,c.SubUnit,c.ExchRate,c.iFlag,b.ProType ,b.Color,b.BatchNo ,b.PlaceNo ,b.CompactNo ,b.ObjectId,
								   b.SjNo ,b.sOrderNo ,b.TechName ,b.InDate,b.PState ,b.TempNo,IsNull(MoveNum,0),b.MovePrice,b.MovePrice,MainMoney=IsNull(MoveNum,0)*ISNULL(b.MovePrice,0),allMoney=IsNull(MoveNum,0)*ISNULL(b.MovePrice,0),
								   SubNum=case when c.iFlag=0 then IsNull(MoveNum,0)*ISNULL(c.ExchRate,1) else IsNull(MoveNum,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) end,
								   subprice=case when c.iFlag=0 then IsNull(b.MovePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.MovePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubTaxPrice=case when c.iFlag=0 then IsNull(b.MovePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.MovePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubMoney=IsNull(MoveNum,0)*ISNULL(b.MovePrice,0),
								   b.AutoNo,'调拨单自动生成调出库'
			from ItemMoveHDTB a left join ItemMoveDTTB b on a.MoveNo=b.MoveNo left join ItemTB c on b.ItemID=c.ItemID where a.MoveNo=@MoveNo and IsNull(MoveNum,0)>0
		  if @@error<>0
		  begin
			 ROLLBACK TRANSACTION 
			 set @string='Err:'+@breakpoint+'    '+'<调拨出库单表明细插入错误！>'
			 RAISERROR(@string,16,1)
			 return 
		  end
		  exec prUpDateInOutWareNum @IoNo,-1
	  end
  end
  else if @IFlag=-1 
  begin
      set @IoNo=''
      if exists(select BillNo from WareInOutHDTB where WKindID='ItemMoveIn' and SubjoinNo=@MoveNo)
      begin
         select @IoNo=BillNo,@bMaxAudit=bMaxAudit from WareInOutHDTB where  WKindID='ItemMoveIn' and SubjoinNo=@MoveNo 
         if @bMaxAudit=1 
         begin
             exec prUpDateInOutWareNum @IoNo,-1 
             if @@error<>0
			  begin
				 ROLLBACK TRANSACTION 
				 set @string='Err:'+@breakpoint+'    '+'<调拨入库反审核出错！>'
				 RAISERROR(@string,16,1)
				 return 
			  end
         end
         delete WareInOutDTTB where BillNo=@IoNo
         delete WareInOutHDTB where BillNo=@IoNo
         
      end
      
      set @IoNo=''
      if exists(select BillNo from WareInOutHDTB where WKindID='ItemMoveOut' and SubjoinNo=@MoveNo)
      begin
         select @IoNo=BillNo,@bMaxAudit=bMaxAudit from WareInOutHDTB where  WKindID='ItemMoveOut' and  SubjoinNo=@MoveNo 
         if @bMaxAudit=1 
         begin
             exec prUpDateInOutWareNum @IoNo,1 
             if @@error<>0
			  begin
				 ROLLBACK TRANSACTION 
				 set @string='Err:'+@breakpoint+'    '+'<调拨出库反审核出错！>'
				 RAISERROR(@string,16,1)
				 return 
			  end
         end
         delete WareInOutDTTB where BillNo=@IoNo
         delete WareInOutHDTB where BillNo=@IoNo
      end
      
  end
  commit Tran
  select null
end 

--Exec PrItemMoveAudit 'WXLL1212065133',1 
GO



if exists(select Name from sysobjects where name='PrItemMoveInAudit' and type='p')
  Drop procedure dbo.PrItemMoveInAudit
go
Create procedure dbo.PrItemMoveInAudit @MoveNo varchar(30),@IFlag int
as
begin
--入库
  DECLARE @IoNo VARCHAR(30),@String varchar(100),@MoveDate Datetime,@SubjoinTableId varchar(50),@MaxAudit smallint,@bMaxAudit bit
  BEGIN TRANSACTION
  if @IFlag=1 
  begin
	  Select @MoveDate=MoveDate from ItemMoveHDTB where MoveNo=@MoveNo
	  if exists(select MoveNo from ItemMoveDTTB where MoveNo=@MoveNo and IsNull(MoveNum,0)>0) 
	  begin
	      Set @IoNo=''
		  exec prGetTableNo 'ItemMoveIn','BillNo',@IoNo OUTPUT
		  if @IoNo is null
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='调拨入库单前缀没有设置!'
			  RAISERROR(@string,16,1)
			  return     
		  end
		  select @MaxAudit=MaxAuditLevel from SysTableSetTB where TableId='ItemMoveIn'
		  --调拨入库表头
		  insert into WareInOutHDTB(BillNo,WKindID,WFlag,SignFlag,BillDate,WareMan,ObjectID,SubjoinNo,SubjoinTableId,
								  MakeDate,MakeMan,MakeManName,AuditFlag,bMaxAudit,AuditMan,AuditManName,AuditDate,MaxAuditDate,Remark,bAuto)       
		   select @IoNo,'ItemMoveIn',1,1,@MoveDate,MakeMan,AcceptId,MoveNo,MKindId,getdate(),MakeMan,MakeManName,@MaxAudit,1,AuditMan,AuditManName,GetDate(),GetDate(),'调拨单自动生成调拨入库',1 from ItemMoveHDTB where MoveNo=@MoveNo
		  if @@error<>0
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='调拨入库单表头插入错误!'
			  RAISERROR(@string,16,1)
			  return 
		  end
			--调拨入库表体
		  insert into WareInOutDTTB (AutoNo,BillNo,WareId,ItemId,ItemCode,ItemName,ItemSpc,ItemPic,ItemUnit,SubUnit,ExchRate,iFlag,ProType ,Color,BatchNo ,PlaceNo ,CompactNo ,ObjectId,
								   SjNo ,sOrderNo ,TechName ,InDate,PState ,TempNo,MainNum,MainPrice,TaxPrice,MainMoney,AllMoney,SubNum,SubPrice,SubTaxPrice,SubMoney,
								   SubJOinNO,SaleOrderNo,SaleOrderId,ProOrderNo,ProOrderId,DispatchNo,DispatchId,EmpId,EmpName,Remark)
		  select dbo.fnGetAutoNo('ItemMoveIn',GetDate()),@IoNo,a.InWare,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemPic,c.ItemUnit,c.SubUnit,c.ExchRate,c.iFlag,b.ProType ,b.Color,b.BatchNo ,b.PlaceNo ,b.CompactNo ,b.ObjectId,
								   b.SjNo ,b.sOrderNo ,TechName=Case when IsNull(b.bDelTech,0)=0 then ISNULL(b.TechName,'') else '' end,b.InDate,b.PState ,b.TempNo,IsNull(MoveNum,0),b.MovePrice,b.MovePrice,MainMoney=IsNull(MoveNum,0)*ISNULL(b.MovePrice,0),allMoney=IsNull(MoveNum,0)*ISNULL(b.TaxPrice,0),
								   SubNum=case when c.iFlag=1 then IsNull(MoveNum,0)*ISNULL(c.ExchRate,1) else IsNull(MoveNum,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) end,
								   Subprice=case when c.iFlag=1 then IsNull(b.MovePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.MovePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubTaxPrice=case when c.iFlag=1 then IsNull(b.MovePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.MovePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubMoney=IsNull(MoveNum,0)*ISNULL(b.MovePrice,0),
								   b.AutoNo,b.SaleOrderNo,b.SaleOrderId,b.ProOrderNo,b.ProOrderId,b.DispatchNo,b.DispatchId,b.EmpId,b.EmpName,'调拨单自动生成调拨入库'
			from ItemMoveHDTB a left join ItemMoveDTTB b on a.MoveNo=b.MoveNo 
			left join ItemTB c on b.ItemID=c.ItemID 
			where a.MoveNo=@MoveNo and IsNull(MoveNum,0)>0
			Union all --不良品
		    select dbo.fnGetAutoNo('ItemMoveIn',GetDate()),@IoNo,b.SpoilWareId,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemPic,c.ItemUnit,c.SubUnit,c.ExchRate,c.iFlag,b.ProType ,b.Color,b.BatchNo ,b.PlaceNo ,b.CompactNo ,b.ObjectId,
								   b.SjNo ,b.sOrderNo,TechName=Case when IsNull(b.bDelTech,0)=0 then ISNULL(b.TechName,'') else '' end,b.InDate,b.PState ,b.TempNo,IsNull(SpoilNum,0),b.MovePrice,b.MovePrice,MainMoney=IsNull(SpoilNum,0)*ISNULL(b.MovePrice,0),allMoney=IsNull(SpoilNum,0)*ISNULL(b.TaxPrice,0),
								   SubNum=case when c.iFlag=1 then IsNull(SpoilNum,0)*ISNULL(c.ExchRate,1) else IsNull(SpoilNum,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) end,
								   Subprice=case when c.iFlag=1 then IsNull(b.MovePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.MovePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubTaxPrice=case when c.iFlag=1 then IsNull(b.MovePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.MovePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubMoney=IsNull(SpoilNum,0)*ISNULL(b.MovePrice,0),
								   b.AutoNo,b.SaleOrderNo,b.SaleOrderId,b.ProOrderNo,b.ProOrderId,b.DispatchNo,b.DispatchId,b.EmpId,b.EmpName,'调拨单自动生成不良品调拨入库'
			from ItemMoveHDTB a left join ItemMoveDTTB b on a.MoveNo=b.MoveNo 
			left join ItemTB c on b.ItemID=c.ItemID 
			where a.MoveNo=@MoveNo and IsNull(SpoilNum,0)>0
		    Union all --废品
		    select dbo.fnGetAutoNo('ItemMoveIn',GetDate()),@IoNo,b.WasteWareId,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemPic,c.ItemUnit,c.SubUnit,c.ExchRate,c.iFlag,b.ProType ,b.Color,b.BatchNo ,b.PlaceNo ,b.CompactNo ,b.ObjectId,
								   b.SjNo ,b.sOrderNo ,TechName=Case when IsNull(b.bDelTech,0)=0 then ISNULL(b.TechName,'') else '' end,b.InDate,b.PState ,b.TempNo,IsNull(WasteNum,0),b.MovePrice,b.MovePrice,MainMoney=IsNull(WasteNum,0)*ISNULL(b.MovePrice,0),allMoney=IsNull(WasteNum,0)*ISNULL(b.TaxPrice,0),
								   SubNum=case when c.iFlag=1 then IsNull(WasteNum,0)*ISNULL(c.ExchRate,1) else IsNull(WasteNum,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) end,
								   Subprice=case when c.iFlag=1 then IsNull(b.MovePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.MovePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubTaxPrice=case when c.iFlag=1 then IsNull(b.MovePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.MovePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubMoney=IsNull(WasteNum,0)*ISNULL(b.MovePrice,0),
								   b.AutoNo,b.SaleOrderNo,b.SaleOrderId,b.ProOrderNo,b.ProOrderId,b.DispatchNo,b.DispatchId,b.EmpId,b.EmpName,'调拨单自动生成废品调拨入库'
			from ItemMoveHDTB a left join ItemMoveDTTB b on a.MoveNo=b.MoveNo 
			left join ItemTB c on b.ItemID=c.ItemID 
			where a.MoveNo=@MoveNo and IsNull(WasteNum,0)>0
		    Union all --料废
		    select dbo.fnGetAutoNo('ItemMoveIn',GetDate()),@IoNo,b.ScrapWareId,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemPic,c.ItemUnit,c.SubUnit,c.ExchRate,c.iFlag,b.ProType ,b.Color,b.BatchNo ,b.PlaceNo ,b.CompactNo ,b.ObjectId,
								   b.SjNo ,b.sOrderNo,TechName=Case when IsNull(b.bDelTech,0)=0 then ISNULL(b.TechName,'') else '' end,b.InDate,b.PState ,b.TempNo,IsNull(ScrapNum,0),b.MovePrice,b.MovePrice,MainMoney=IsNull(ScrapNum,0)*ISNULL(b.MovePrice,0),allMoney=IsNull(ScrapNum,0)*ISNULL(b.TaxPrice,0),
								   SubNum=case when c.iFlag=1 then IsNull(ScrapNum,0)*ISNULL(c.ExchRate,1) else IsNull(ScrapNum,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) end,
								   Subprice=case when c.iFlag=1 then IsNull(b.MovePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.MovePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubTaxPrice=case when c.iFlag=1 then IsNull(b.MovePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.MovePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubMoney=IsNull(ScrapNum,0)*ISNULL(b.MovePrice,0),
								   b.AutoNo,b.SaleOrderNo,b.SaleOrderId,b.ProOrderNo,b.ProOrderId,b.DispatchNo,b.DispatchId,b.EmpId,b.EmpName,'调拨单自动生成料废调拨入库'
			from ItemMoveHDTB a left join ItemMoveDTTB b on a.MoveNo=b.MoveNo 
			left join ItemTB c on b.ItemID=c.ItemID 
			where a.MoveNo=@MoveNo and IsNull(ScrapNum,0)>0			
		  if @@error<>0
		  begin
			 ROLLBACK TRANSACTION 
			 set @string='调拨入库单表明细插入错误!'
			 RAISERROR(@string,16,1)
			 return 
		  end
		  exec prUpDateInOutWareNum @IoNo,1
	  end
	  --出库
	  if exists(select MoveNo from ItemMoveDTTB where MoveNo=@MoveNo and IsNull(MoveNum,0)>0)  
	  begin
	      Set @IoNo=''
		  exec prGetTableNo 'ItemMoveOut','BillNo',@IoNo OUTPUT
		  if @IoNo is null
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='调拨出库单前缀没有设置!'
			  RAISERROR(@string,16,1)
			  return     
		  end
		  select @MaxAudit=MaxAuditLevel from SysTableSetTB where TableId='ItemMoveOut'
			 --调拨出库库表头
		  insert into WareInOutHDTB(BillNo,WKindID,WFlag,SignFlag,BillDate,WareMan,ObjectID,SubjoinNo,SubjoinTableId,
								  MakeDate,MakeMan,MakeManName,AuditFlag,bMaxAudit,AuditMan,AuditManName,AuditDate,MaxAuditDate,Remark,bAuto)       
		  select @IoNo,'ItemMoveOut',-1,1,@MoveDate,MakeMan,SendId,MoveNo,MKindId,getdate(),MakeMan,MakeManName,@MaxAudit,1,AuditMan,AuditManName,GetDate(),GetDate(),'调拨单自动生成调拨出库',1 from ItemMoveHDTB where MoveNo=@MoveNo
		  if @@error<>0
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='调拨出库单表头插入错误!'
			  RAISERROR(@string,16,1)
			  return 
		  end
		--调拨出库表体
		insert into WareInOutDTTB (AutoNo,BillNo,WareId,ItemId,ItemCode,ItemName,ItemSpc,ItemPic,ItemUnit,SubUnit,ExchRate,iFlag,ProType ,Color,BatchNo ,PlaceNo ,CompactNo ,ObjectId,
								   SjNo ,sOrderNo ,TechName ,InDate,PState ,TempNo,MainNum,MainPrice,TaxPrice,MainMoney,AllMoney,SubNum,SubPrice,SubTaxPrice,SubMoney,SubJOinNO,Remark)
		  select dbo.fnGetAutoNo('ItemMoveOut',GetDate()),@IoNo,a.OutWare,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemPic,c.ItemUnit,c.SubUnit,c.ExchRate,c.iFlag,b.ProType ,b.Color,b.BatchNo ,b.PlaceNo ,b.CompactNo ,b.ObjectId,
								   b.SjNo ,b.sOrderNo ,b.TechName ,b.InDate,b.PState ,b.TempNo,IsNull(MoveNum,0),b.MovePrice,b.MovePrice,MainMoney=IsNull(MoveNum,0)*ISNULL(b.MovePrice,0),allMoney=IsNull(MoveNum,0)*ISNULL(b.MovePrice,0),
								   SubNum=case when c.iFlag=1 then IsNull(MoveNum,0)*ISNULL(c.ExchRate,1) else IsNull(MoveNum,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) end,
								   subprice=case when c.iFlag=1 then IsNull(b.MovePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.MovePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubTaxPrice=case when c.iFlag=1 then IsNull(b.MovePrice,0)/dbo.iszero(ISNULL(c.ExchRate,1),1) else IsNull(b.MovePrice,0)*ISNULL(c.ExchRate,1) end,
								   SubMoney=IsNull(MoveNum,0)*ISNULL(b.MovePrice,0),
								   b.AutoNo,'调拨单自动生成调出库'
		  from ItemMoveHDTB a left join ItemMoveDT2TB b on a.MoveNo=b.MoveNo left join ItemTB c on b.ItemID=c.ItemID where a.MoveNo=@MoveNo and IsNull(MoveNum,0)>0
		  if @@error<>0
		  begin
			 ROLLBACK TRANSACTION 
			 set @string='调拨出库单表明细插入错误!'
			 RAISERROR(@string,16,1)
			 return 
		  end
		  exec prUpDateInOutWareNum @IoNo,-1
	  end
  end
  else if @IFlag=-1 
  begin
      set @IoNo=''
      if exists(select BillNo from WareInOutHDTB where WKindID='ItemMoveIn' and SubjoinNo=@MoveNo)
      begin
         select @IoNo=BillNo,@bMaxAudit=bMaxAudit from WareInOutHDTB where  WKindID='ItemMoveIn' and SubjoinNo=@MoveNo 
         if @bMaxAudit=1 
         begin
             exec prUpDateInOutWareNum @IoNo,-1 
             if @@error<>0
			  begin
				 ROLLBACK TRANSACTION 
				 set @string='调拨入库反审核出错!'
				 RAISERROR(@string,16,1)
				 return 
			  end
         end
         delete WareInOutDTTB where BillNo=@IoNo
         delete WareInOutHDTB where BillNo=@IoNo
         
      end
      
      set @IoNo=''
      if exists(select BillNo from WareInOutHDTB where WKindID='ItemMoveOut' and SubjoinNo=@MoveNo)
      begin
         select @IoNo=BillNo,@bMaxAudit=bMaxAudit from WareInOutHDTB where  WKindID='ItemMoveOut' and  SubjoinNo=@MoveNo 
         if @bMaxAudit=1 
         begin
             exec prUpDateInOutWareNum @IoNo,1 
             if @@error<>0
			  begin
				 ROLLBACK TRANSACTION 
				 set @string='调拨出库反审核出错!'
				 RAISERROR(@string,16,1)
				 return 
			  end
         end
         delete WareInOutDTTB where BillNo=@IoNo
         delete WareInOutHDTB where BillNo=@IoNo
      end
      
  end
  commit Tran
  select null
end 

--Exec PrItemMoveInAudit 'WXLL1212065133',1 
GO


if exists(select Name from sysobjects where name='PrUpdateInvoiceFlag' and type='p')
  Drop procedure dbo.PrUpdateInvoiceFlag
go
Create procedure dbo.PrUpdateInvoiceFlag @BillNo varchar(30)
as
begin
   DECLARE @WKindId varchar(50)
   select @WKindId=WKindId from WareInOutHDTB where BillNO=@BillNo
  --更新仓库的记账标识
  if @WKindId='StockIn'
  begin
   if Exists (select AutoId from StockInvoiceHDTB where SubjoinNo=@BillNo)
      Update WareInOutHDTB Set bInvoice=1 where BillNO=@BillNo 
   else
      Update WareInOutHDTB Set bInvoice=0 where BillNO=@BillNo 
  end 
    if @WKindId='SaleOut'
  begin
   if Exists (select AutoId from SaleInvoiceHDTB where SubjoinNo=@BillNo)
      Update WareInOutHDTB Set bInvoice=1 where BillNO=@BillNo 
   else
      Update WareInOutHDTB Set bInvoice=0 where BillNO=@BillNo 
  end 
end
go

if exists(select Name from sysobjects where name='PrWareToInvoice' and type='p')
  Drop procedure dbo.PrWareToInvoice
go
Create procedure dbo.PrWareToInvoice @BillNo varchar(30),@IFlag int
as
begin
  DECLARE @InvoiceNo VARCHAR(30),@PayNo VARCHAR(50),@String varchar(100),@WKindId varchar(50),@MaxAudit smallint,@bMaxAudit bit
  select @WKindId=WKindId from WareInOutHDTB where BillNO=@BillNo
  BEGIN TRANSACTION
  --记账
  if @IFlag=1 
  begin
	  --应付记账
	  if @WKindId='StockIn' and not Exists (select AutoId from StockInvoiceHDTB where SubjoinNo=@BillNo)
	  begin
	      Set @InvoiceNo=''
		  exec prGetTableNo 'StockInvoiceHDTB','InvoiceNo',@InvoiceNo OUTPUT
		  if @InvoiceNo is null
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='应付账款表单前缀没有设置!'
			  RAISERROR(@string,16,1)
			  return     
		  end
		  select @MaxAudit=MaxAuditLevel from SysTableSetTB where TableId='StockInvoiceHDTB'
		  --应付记账表头
		  insert into StockInvoiceHDTB(InvoiceNo,SourceDate,InvoiceDate,SignFlag,PrvId,EmpId,SubjoinNo,
								  MakeDate,MakeMan,MakeManName,AuditFlag,bMaxAudit,AuditManName,AuditDate,MaxAuditDate,Remark)       
		   select @InvoiceNo,BillDate,Convert(varchar(20),getdate(),23),1,ObjectID,WareMan,BillNO,getdate(),MakeMan,MakeManName,@MaxAudit,1,AuditManName,GetDate(),GetDate(),'销售出库自动记账生成记账单' from WareInOutHDTB where BillNo=@BillNo
		  if @@error<>0
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='生成应付记账表头出错！'
			  RAISERROR(@string,16,1)
			  return 
		  end
		  --应付记账表体
		  insert into StockInvoiceDTTB (AutoNo,InvoiceNo,ItemId,ItemCode,ItemName,ItemSpc,ItemPic,ItemUnit,SubUnit,ExchRate,iFlag,ProType ,Color,BatchNo ,PlaceNo ,CompactNo ,ObjectId,
								   SjNo ,sOrderNo ,TechName ,InDate,PState ,TempNo,InvoiceNum,InvoicePrice,TaxPrice,InvoiceMoney,AllMoney,SubNum,SubPrice,SubTaxPrice,SubMoney,IoNo,IoId,Remark)
		  select dbo.fnGetAutoNo('StockInvoiceHDTB',GetDate()),@InvoiceNo,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemPic,c.ItemUnit,c.SubUnit,c.ExchRate,c.iFlag,b.ProType ,b.Color,b.BatchNo ,b.PlaceNo ,b.CompactNo ,b.ObjectId,
								   b.SjNo ,b.sOrderNo ,b.TechName ,b.InDate,b.PState ,b.TempNo,IsNull(MainNum,0),IsNull(b.MainPrice,0),b.TaxPrice,b.MainMoney,b.AllMoney,b.SubNum,b.SubPrice,b.SubTaxPrice,b.SubMoney,b.BillNO,b.AutoNo,''
			from WareInOutHDTB a left join WareInOutDTTB b on a.BillNo=b.BillNo left join ItemTB c on b.ItemID=c.ItemID where a.BillNo=@BillNo 
		  if @@error<>0
		  begin
			 ROLLBACK TRANSACTION 
			 set @string='生成应付记账表体出错！'
			 RAISERROR(@string,16,1)
			 return 
		  end
	  end
     --应收记账
     if @WKindId='SaleOut' and not Exists (select AutoId from SaleInvoiceHDTB where SubjoinNo=@BillNo)
     begin
	      Set @InvoiceNo=''
		  exec prGetTableNo 'SaleInvoiceHDTB','InvoiceNo',@InvoiceNo OUTPUT
		  if @InvoiceNo is null
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='应收账款表单前缀没有设置!'
			  RAISERROR(@string,16,1)
			  return     
		  end
		  select @MaxAudit=MaxAuditLevel from SysTableSetTB where TableId='SaleInvoiceHDTB'
		  --应收记账表头
		  insert into SaleInvoiceHDTB(InvoiceNo,SourceDate,InvoiceDate,SignFlag,CustId,EmpId,SubjoinNo,
								  MakeDate,MakeMan,MakeManName,AuditFlag,bMaxAudit,AuditManName,AuditDate,MaxAuditDate,Remark)       
		   select @InvoiceNo,BillDate,Convert(varchar(20),getdate(),23),1,ObjectID,WareMan,BillNO,getdate(),MakeMan,MakeManName,@MaxAudit,1,AuditManName,GetDate(),GetDate(),'销售出库自动记账生成记账单' from WareInOutHDTB where BillNo=@BillNo
		  if @@error<>0
		  begin
			  ROLLBACK TRANSACTION 
			  set @string='生成应收记账表头出错！'
			  RAISERROR(@string,16,1)
			  return 
		  end
			--应收记账表体
		  insert into SaleInvoiceDTTB (AutoNo,InvoiceNo,ItemId,ItemCode,ItemName,ItemSpc,ItemPic,ItemUnit,SubUnit,ExchRate,iFlag,ProType ,Color,BatchNo ,PlaceNo ,CompactNo ,ObjectId,
								   SjNo ,sOrderNo ,TechName ,InDate,PState ,TempNo,InvoiceNum,InvoicePrice,TaxPrice,InvoiceMoney,AllMoney,SubNum,SubPrice,SubTaxPrice,SubMoney,IoNo,IoId,Remark)
		  select dbo.fnGetAutoNo('SaleInvoiceHDTB',GetDate()),@InvoiceNo,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemPic,c.ItemUnit,c.SubUnit,c.ExchRate,c.iFlag,b.ProType ,b.Color,b.BatchNo ,b.PlaceNo ,b.CompactNo ,b.ObjectId,
								   b.SjNo ,b.sOrderNo ,b.TechName ,b.InDate,b.PState ,b.TempNo,IsNull(MainNum,0),IsNull(b.MainPrice,0),b.TaxPrice,b.MainMoney,b.AllMoney,b.SubNum,b.SubPrice,b.SubTaxPrice,b.SubMoney,b.BillNO,b.AutoNo,''
			from WareInOutHDTB a left join WareInOutDTTB b on a.BillNo=b.BillNo left join ItemTB c on b.ItemID=c.ItemID where a.BillNo=@BillNo
		  if @@error<>0
		  begin
			 ROLLBACK TRANSACTION 
			 set @string='生成应收记账表体出错！'
			 RAISERROR(@string,16,1)
			 return 
		  end
	  end	
	  --更新仓库单据记账标识
	  Update WareInOutHDTB Set bInvoice=1 where BillNO=@BillNo  
  end
  --取消记账
  else if @IFlag=-1 
  begin
      set @InvoiceNo=''
      --应付记账
      if @WKindId='StockIn'
      begin
         select @InvoiceNo=InvoiceNo,@bMaxAudit=bMaxAudit from StockInvoiceHDTB where SubjoinNo=@BillNo 
         
         set @PayNo=''
         select @PayNo=PayNo from StockPayDTTB where InvoiceNo=@InvoiceNo
         if @PayNo<>''
         begin
         	 ROLLBACK TRANSACTION 
			 set @string='记账单已经付款,付款单号: '+@PayNo
			 RAISERROR(@string,16,1)
			 return 
         end
         
         delete StockInvoiceDTTB where InvoiceNo=@InvoiceNo
         delete StockInvoiceHDTB where InvoiceNo=@InvoiceNo
      end      
      --应收记账
      if @WKindId='SaleOut'
      begin
         select @InvoiceNo=InvoiceNo,@bMaxAudit=bMaxAudit from SaleInvoiceHDTB where SubjoinNo=@BillNo 
         
         set @PayNo=''
         select @PayNo=PayNo from SalePayDTTB where InvoiceNo=@InvoiceNo
         if @PayNo<>''
         begin
         	 ROLLBACK TRANSACTION 
			 set @string='记账单已经收款,收款单号: '+@PayNo
			 RAISERROR(@string,16,1)
			 return 
         end
                  
         delete SaleInvoiceDTTB where InvoiceNo=@InvoiceNo
         delete SaleInvoiceHDTB where InvoiceNo=@InvoiceNo
      end
      --更新仓库单据记账标识
	  Update WareInOutHDTB Set bInvoice=0 where BillNO=@BillNo  
  end
  commit Tran
  select null
end 

--Exec PrWareToInvoice 'XSCK1301052670',-1 
GO


if Exists(select Name from sysobjects where name='prGetMoveOut' and type='p')
  Drop procedure dbo.prGetMoveOut
go
Create Procedure dbo.prGetMoveOut @ItemId varchar(50),@TechName varchar(100),@DispatchID varchar(100),@ProOrderID varchar(100)
as

	declare @TInfo varchar(30),@TechParam Int,@TopTech varchar(100),@Ordinal int,@TaskNo varchar(30),@DispatchNo varchar(30),@IsTl bit,@ProType varchar(100)
   
    select @DispatchNo=DispatchNo from ProDispatchDTTB where AutoNo=@DispatchID
    
    if IsNull(@DispatchID,'')<>''
        Select @TopTech=TopTech from ProDispatchDTTB where AutoNo=@DispatchID
     else if  IsNull(@ProOrderID,'')<>''
        Select @TopTech=TopTech from ProOrderTechTB where AutoNo=@ProOrderID
     
    
	--从派工单取数
	if IsNull(@DispatchID,'')<>''
	begin
	   if Exists (select AutoId from ProDispatchDTTB where AutoNo=@DispatchID and ISNULL(bFirst,0)=1)
	   begin
	      select ItemID=b.ChildId,ProType=b.ChildProType,Dosage=b.Dosage,WasteRate=b.WasteRate,TechName='',NextTech='' from ItemBomHDTB a left join ItemBomDTTB b on a.BillNo=b.BillNo and a.ItemId=b.ItemId where a.ItemID=@ItemId and TechName=@TechName
	   end
	   else
	   begin
	   	  Select a.ItemId,a.ProType,Dosage=1,WasteRate=0,TechName=@TopTech,NextTech=@TechName from ProDispatchDTTB  a where DispatchNo=@DispatchNo and a.ItemID=@ItemId and NextTech=@TechName 
		  union all 
		  select ItemID=b.ChildId,ProType=b.ChildProType,Dosage=b.Dosage,WasteRate=b.WasteRate,TechName='',NextTech='' from ItemBomHDTB a left join ItemBomDTTB b on a.BillNo=b.BillNo and a.ItemId=b.ItemId where a.ItemID=@ItemId and TechName=@TechName
	   end
	end
	else if IsNull(@ProOrderID,'')<>'' --从MRP分析取数
	begin
	   select ''	
	end
    else --从标准Bom取数
    begin
       select ItemID=b.ChildId,ProType=b.ChildProType,Dosage=b.Dosage,WasteRate=b.WasteRate,TechName='',NextTech='' from ItemBomHDTB a left join ItemBomDTTB b on a.BillNo=b.BillNo and a.ItemId=b.ItemId where a.ItemID=@ItemId
    end

-- Exec prGetMoveOut '040001','喷漆','ProDispatchHDTB140625105950013','SCDD140625104742812'       

GO


--仓库月结
if exists (select name from sysobjects where name = 'prMonthAccount' and type = 'p')
  drop procedure dbo.prMonthAccount
go
create procedure dbo.prMonthAccount @AccountFlag Smallint

as
begin
  Declare @FMonthNo varchar(6),@LMonthNo varchar(6),@NMonthNo varchar(6),@FSMonth datetime,@FEMonth datetime,@LSMonth datetime,
          @LEMonth datetime,@TempMonthNo varchar(6),@TempSMonth datetime,@TempEMonth datetime,@bAccount varchar(2)
        --第一个未结账财务月份,最后一个结账财务月份,下一个会计月份,第一个未结账财务月份的起始日期,第一个未结账财务月份的结束日期,最后一个结账财务月份的起始日期
        --最后一个结账财务月份的结束日期,是否已结帐 
  Set @FMonthNo=''
  Set @LMonthNo='' 
  Set @NMonthNo=''
  
  Declare @StartMonthNo varchar(10),@AccountOver varchar(20),@NotAuditBillNo varchar(30)
  
  select @StartMonthNo=isnull(WareStartMon,'') from SysParamTB
  if @StartMonthNo=''
  begin
    select '公司设置中没有指定仓库启用月份!' as ReturStr
    return
  end
  declare GetmonthNo_c scroll cursor for select MonthNo,BeginDate,EndDate,bAccount from vwWareAccount
  open GetmonthNo_c
  fetch next from GetmonthNo_c into @TempMonthNo, @TempSMonth, @TempEMonth,@bAccount
  while @@fetch_status = 0
  begin
	if  @bAccount=0
	begin
		set @FMonthNo = @TempMonthNo
		set @FSMonth = @TempSMonth
		set @FEMonth = @TempEMonth
		fetch RELATIVE 1 from GetmonthNo_c into @TempMonthNo, @TempSMonth, @TempEMonth,@bAccount  --则返回从当前行开始向后的第 1 行，并将返回行变成新的当前行
		if @@fetch_status = 0 
		begin
			set @NMonthNo = @TempMonthNo
		end
		fetch RELATIVE -2 from GetmonthNo_c into @TempMonthNo, @TempSMonth, @TempEMonth,@bAccount --则返回从当前行开始向前的第 2 行，并将返回行变成新的当前行
		if @@fetch_status = 0 
		begin
			set @LMonthNo = @TempMonthNo
			set @LSMonth = @TempSMonth
			set @LEMonth = @TempEMonth	
		end
		break
	end 
	fetch next from GetmonthNo_c into @TempMonthNo, @TempSMonth, @TempEMonth,@bAccount
  end  
  close GetmonthNo_c
  deallocate GetmonthNo_c
  
  

  --反月结 如果一个月都没月结
  if @AccountFlag =2 and @LMonthNo = ''
  begin
      select '没有结账的会计月,不能反月结!' as ReturStr
      return 
  end

  --月结
  if @AccountFlag = 1
  begin
    begin tran 
   
	--检验期初库存是否记帐
	select @AccountOver =AccountFlag from WareAccountTB where AccountNO= @StartMonthNo
	if @AccountOver = '未记账'
	begin
	  rollback tran
	  select '期初登记未记账,不能月结!' as ReturStr
	  return
	end
	
	select @NotAuditBillNo=BillNo from WareInOutHDTB where ISNULL(bMaxAudit,0)=0 and dbo.fnGetMonth(BillDate)=@FMonthNo
	if @NotAuditBillNo<>''
	begin
	  rollback tran
	  select '月结月份有单据未审核完毕!' as ReturStr
	  return
	end
	
	
    --①插入出入库数据到月结表中
    insert into WareAccountTB(AccountNo,ItemId,WareId,ProType,Color,BatchNo,PlaceNo,CompactNo,ObjectId,SjNo,sOrderNo,TechName,InDate,PState,TempNo,FirstNum,FirstPrice,FirstMoney,AccountFlag)
	select distinct @FMonthNo,ItemId,WareId,Isnull(ProType,''),Isnull(Color,''),Isnull(BatchNo,''),Isnull(PlaceNo,''),Isnull(CompactNo,''),Isnull(ObjectId,''),Isnull(SjNo,''),Isnull(sOrderNo,''),
	                Isnull(TechName,''),Isnull(InDate,''),Isnull(PState,''),Isnull(TempNo,''),0,0,0,'月结' from vwInOut 
	                where dbo.fnGetMonth(BillDate)=@FMonthNo
	                and not exists(select m.ItemId from WareAccountTB m where m.AccountNo=@FMonthNo and vwInOut.ItemId=m.ItemId and vwInOut.WareId=m.WareId and Isnull(vwInOut.ProType,'')=Isnull(m.ProType,'') 
	                and Isnull(vwInOut.Color,'')=Isnull(m.Color,'') and Isnull(vwInOut.BatchNo,'')=Isnull(m.BatchNo,'') and Isnull(vwInOut.PlaceNo,'')=Isnull(m.PlaceNo,'') and Isnull(vwInOut.CompactNo,'')=Isnull(m.CompactNo,'') 
	                and Isnull(vwInOut.ObjectId,'')=Isnull(m.ObjectId,'') and Isnull(vwInOut.SjNo,'')=Isnull(m.SjNo,'')and Isnull(vwInOut.sOrderNo,'')=Isnull(m.sOrderNo,'') and Isnull(vwInOut.TechName,'')=Isnull(m.TechName,'') 
	                and Isnull(vwInOut.InDate,'')=Isnull(m.InDate,'') and Isnull(vwInOut.PState,'')=Isnull(m.PState,'') and Isnull(vwInOut.TempNo,'')=Isnull(m.TempNo,''))
   
     
    --②更新出入数量
    Update WareAccountTB Set InNum=m.InNum,InPrice=m.InMoney/dbo.IsZero(m.InNum,1),InMoney=m.InMoney,OutNum=m.OutNum,OutPrice=m.OutMoney/dbo.IsZero(m.OutNum,1)
    from (select ItemId,WareId,ProType=Isnull(ProType,''),Color=Isnull(Color,''),BatchNo=Isnull(BatchNo,''),PlaceNo=Isnull(PlaceNo,''),CompactNo=Isnull(CompactNo,''),ObjectId=Isnull(ObjectId,''),
          SjNo=Isnull(SjNo,''),sOrderNo=Isnull(sOrderNo,''),TechName=Isnull(TechName,''),InDate=Isnull(InDate,''),PState=Isnull(PState,''),TempNo=Isnull(TempNo,''),
          InNum=SUM(ISNULL(InNum,0)),InMoney=SUM(ISNULL(InMoney,0)),OutNum=SUM(ISNULL(OutNum,0)),OutMoney=SUM(ISNULL(OutMoney,0)) 
          from vwInOut where dbo.fnGetMonth(BillDate)=@FMonthNo 
          group by ItemId,WareId,Isnull(ProType,''),Isnull(Color,''),Isnull(BatchNo,''),Isnull(PlaceNo,''),Isnull(CompactNo,''),Isnull(ObjectId,''),Isnull(SjNo,''),Isnull(sOrderNo,''),
	               Isnull(TechName,''),Isnull(InDate,''),Isnull(PState,''),Isnull(TempNo,'') )m 
    where  WareAccountTB.AccountNo=@FMonthNo and WareAccountTB.ItemId=m.ItemId and WareAccountTB.WareId=m.WareId and IsNull(WareAccountTB.ProType,'')=m.ProType and IsNull(WareAccountTB.Color,'')=m.Color 
           and IsNull(WareAccountTB.BatchNo,'')=m.BatchNo and IsNull(WareAccountTB.PlaceNo,'')=m.PlaceNo and IsNull(WareAccountTB.CompactNo,'')=m.CompactNo and IsNull(WareAccountTB.ObjectId,'')=m.ObjectId 
           and IsNull(WareAccountTB.SjNo,'')=m.SjNo and IsNull(WareAccountTB.sOrderNo,'')=m.sOrderNo and IsNull(WareAccountTB.TechName,'')=m.TechName and IsNull(WareAccountTB.InDate,'')=m.InDate 
           and IsNull(WareAccountTB.PState,'')=m.PState and IsNull(WareAccountTB.TempNo,'')=m.TempNo 
   
    --③更新结存数量
    Update WareAccountTB set LastNum=Isnull(FirstNum,0)+Isnull(InNum,0)-Isnull(OutNum,0),LastPrice=(Isnull(FirstMoney,0)+Isnull(InMoney,0)-Isnull(OutMoney,0))/dbo.IsZero((Isnull(FirstNum,0)+Isnull(InNum,0)-Isnull(OutNum,0)),1), LastMoney=Isnull(FirstMoney,0)+Isnull(InMoney,0)-Isnull(OutMoney,0)
    where AccountNo=@FMonthNo 
    
    --④将本月的期末记入下月的期初
    InSert Into WareAccountTB (AccountNo,AccountFlag,ItemId,WareId,ProType,Color,BatchNo,PlaceNo,CompactNo,ObjectId,SjNo,sOrderNo,TechName,InDate,PState,TempNo,FirstNum,FirstPrice,FirstMoney) 
    select @NMonthNo,'月结',ItemId,WareId,ProType,Color,BatchNo,PlaceNo,CompactNo,ObjectId,SjNo,sOrderNo,TechName,InDate,PState,TempNo,LastNum,LastPrice,LastMoney  
    from WareAccountTB where AccountNo=@FMonthNo
    
    --⑤更新当前财务月份和月结标志 下移一个月
    update FinanceDateTB set bNow = 1 where MonthNo = @NMonthNO 
	update FinanceDateTB set bNow = 0,bAccount=1 where MonthNo = @FMonthNo
	
  
    commit tran
    select '月结成功!' as ReturStr
  end
  --反月结
  if @AccountFlag =2
  begin 
	begin tran
	delete WareAccountTB where AccountNo = @FMonthNo
    
    --如果是期初，则删除非期初登记数据
    if @LMonthNo=@StartMonthNo 
    delete WareAccountTB where AccountNo = @LMonthNo and AccountFlag='月结'
	
	--更新上个财务月份的数量
	update WareAccountTB set InNum= null, InPrice=null,InMoney = null, OutNum = null,OutPrice=null, OutMoney = null,
	       LastNum = null,LastPrice=null,LastMoney = null where AccountNo = @LMonthNo

    --更新当前财务月份 上移一个月
	update FinanceDateTB set bNow = 1,bAccount=0 where MonthNo = @LMonthNO 
	update FinanceDateTB set bNow = 0 where MonthNo = @FMonthNo
	
	
		
	commit tran
    select '反月结成功!' as ReturStr	
  end
end

go
--exec prMonthAccount 1 

if exists (select name from sysobjects where name = 'prSFCMonQ' and type = 'p')
  drop procedure dbo.prSFCMonQ
go
create procedure dbo.prSFCMonQ @dtS DateTime,@dtE DateTime,@sWhere varchar(1000) 

as
begin
   Declare @StartDate DateTime,@StartMontNo varchar(30)
   
   Create Table #SFCTB (WareId varchar(20),ItemId varchar(30),ProType varchar(50),Color varchar(50),BatchNo varchar(50),PlaceNo VarChar(50),CompactNo VarChar(50),
          ObjectId VarChar(50),SjNo VarChar(50),sOrderNo VarChar(50),TechName VarChar(50),InDate VarChar(50),PState VarChar(50),TempNo VarChar(50),
          FirstNum Numeric(18,5),FirstPrice Numeric(18,5),FirstMoney numeric(18,5),InNum Numeric(18,5),InPrice Numeric(18,5),InMoney Numeric(18,5),
          OutNum Numeric(18,5),OutPrice Numeric(18,5),OutMoney Numeric(18,5),LastNum Numeric(18,5),LastPrice Numeric(18,5),LastMoney Numeric(18,5))
   
   --如果条件的开始日期在已月结的财务月份之前或者一个月份都没有月结
   select Top 1 @StartDate=BeginDate,@StartMontNo=MonthNo from FinanceDateTB Order by MonthNo
   --如果条件的开始日期在已月结的财务月份之内
   select Top 1 @StartDate=BeginDate,@StartMontNo=MonthNo from FinanceDateTB where IsNull(bAccount,0)=1 and BeginDate<=@dtS and EndDate>=@dtS Order by MonthNo Desc   
   --如果条件的开始日期在所有月结的财务月份之后
   select Top 1 @StartDate=BeginDate,@StartMontNo=MonthNo from FinanceDateTB where IsNull(bAccount,0)=0 and BeginDate<=@dtS Order by MonthNo

   if @StartMontNo=''
   begin
     select '请先设置财务月份!' as ReturStr
     return
   end
   
   --①插入期初一
   InSert into #SFCTB(WareId,ItemId,ProType,Color,BatchNo,PlaceNo,CompactNo,ObjectId,SjNo,sOrderNo,TechName,InDate,PState,TempNo,
          FirstNum,FirstPrice,FirstMoney,InNum,InPrice,InMoney,OutNum,OutPrice,OutMoney,LastNum,LastPrice,LastMoney)
   select WareId,ItemId,ISNULL(ProType,''),ISNULL(Color,''),ISNULL(BatchNo,''),ISNULL(PlaceNo,''),ISNULL(CompactNo,''),ISNULL(ObjectId,''),
          ISNULL(SjNo,''),ISNULL(sOrderNo,''),ISNULL(TechName,''),ISNULL(InDate,''),ISNULL(PState,''),ISNULL(TempNo,''),
          ISNULL(FirstNum,0),ISNULL(FirstPrice,0),ISNULL(FirstMoney,0),InNum=0,InNum=0,InNum=0,OutNum=0,OutPrice=0,OutMoney=0,
          LastNum=ISNULL(FirstNum,0),LastPrice=ISNULL(FirstPrice,0),LastMoney=ISNULL(FirstMoney,0)
   from WareAccountTB where AccountNo=@StartMontNo and ItemId is not null
          

   --②插入期初二
   InSert into #SFCTB(WareId,ItemId,ProType,Color,BatchNo,PlaceNo,CompactNo,ObjectId,SjNo,sOrderNo,TechName,InDate,PState,TempNo,
          FirstNum,FirstPrice,FirstMoney,InNum,InPrice,InMoney,OutNum,OutPrice,OutMoney,LastNum,LastPrice,LastMoney)
   select WareId,ItemId,ISNULL(b.ProType,''),ISNULL(b.Color,''),ISNULL(b.BatchNo,''),ISNULL(b.PlaceNo,''),ISNULL(b.CompactNo,''),ISNULL(b.ObjectId,''),
          ISNULL(b.SjNo,''),ISNULL(b.sOrderNo,''),ISNULL(b.TechName,''),ISNULL(b.InDate,''),ISNULL(b.PState,''),ISNULL(b.TempNo,''),
          FirstNum=Sum(a.WFlag*ISNULL(b.MainNum,0)),FirstPrice=0,FirstMoney=Sum(a.WFlag*ISNULL(b.MainMoney,0)),
          InNum=0,InPrice=0,InMoney=0,OutNum=0,OutPrice=0,OutMoney=0,
          LastNum=Sum(a.WFlag*ISNULL(b.MainNum,0)),LastPrice=0,LastMoney=Sum(a.WFlag*ISNULL(b.MainMoney,0))
   from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO  
   where ISNULL(a.bMaxAudit,0)=1 and BillDate>=@StartDate and BillDate<@dtS and b.ItemId is not null
   group by WareId,ItemId,ISNULL(b.ProType,''),ISNULL(b.Color,''),ISNULL(b.BatchNo,''),ISNULL(b.PlaceNo,''),ISNULL(b.CompactNo,''),ISNULL(b.ObjectId,''),
         ISNULL(b.SjNo,''),ISNULL(b.sOrderNo,''),ISNULL(b.TechName,''),ISNULL(b.InDate,''),ISNULL(b.PState,''),ISNULL(b.TempNo,'')
   
   --③插入本期入库数据
   InSert into #SFCTB(WareId,ItemId,ProType,Color,BatchNo,PlaceNo,CompactNo,ObjectId,SjNo,sOrderNo,TechName,InDate,PState,TempNo,
          FirstNum,FirstPrice,FirstMoney,InNum,InPrice,InMoney,OutNum,OutPrice,OutMoney,LastNum,LastPrice,LastMoney)
   select WareId,ItemId,ISNULL(b.ProType,''),ISNULL(b.Color,''),ISNULL(b.BatchNo,''),ISNULL(b.PlaceNo,''),ISNULL(b.CompactNo,''),ISNULL(b.ObjectId,''),
          ISNULL(b.SjNo,''),ISNULL(b.sOrderNo,''),ISNULL(b.TechName,''),ISNULL(b.InDate,''),ISNULL(b.PState,''),ISNULL(b.TempNo,''),
          FirstNum=0,FirstPrice=0,FirstMoney=0,
          InNum=Sum(a.WFlag*a.SignFlag*ISNULL(b.MainNum,0)),InPrice=Case sum(Isnull(b.MainNum,0)) when 0 then 0 else sum(Isnull(b.MainMoney,0))/sum(Isnull(b.MainNum,0)) end,InMoney=Sum(a.WFlag*a.SignFlag*ISNULL(b.MainMoney,0)),
          OutNum=0,OutPrice=0,OutMoney=0,
          LastNum=Sum(a.WFlag*ISNULL(b.MainNum,0)),LastPrice=Case sum(Isnull(b.MainNum,0)) when 0 then 0 else sum(Isnull(b.MainMoney,0))/sum(Isnull(b.MainNum,0)) end,LastMoney=Sum(a.WFlag*a.SignFlag*ISNULL(b.MainMoney,0))
   from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO  
   where ISNULL(a.bMaxAudit,0)=1 and a.WFlag*a.SignFlag=1  and BillDate>=@dtS and BillDate<=@dtE and b.ItemId is not null
   group by WareId,ItemId,ISNULL(b.ProType,''),ISNULL(b.Color,''),ISNULL(b.BatchNo,''),ISNULL(b.PlaceNo,''),ISNULL(b.CompactNo,''),ISNULL(b.ObjectId,''),
         ISNULL(b.SjNo,''),ISNULL(b.sOrderNo,''),ISNULL(b.TechName,''),ISNULL(b.InDate,''),ISNULL(b.PState,''),ISNULL(b.TempNo,'')
   
   --④插入本期出库数据
   InSert into #SFCTB(WareId,ItemId,ProType,Color,BatchNo,PlaceNo,CompactNo,ObjectId,SjNo,sOrderNo,TechName,InDate,PState,TempNo,
          FirstNum,FirstPrice,FirstMoney,InNum,InPrice,InMoney,OutNum,OutPrice,OutMoney,LastNum,LastPrice,LastMoney)
   select WareId,ItemId,ISNULL(b.ProType,''),ISNULL(b.Color,''),ISNULL(b.BatchNo,''),ISNULL(b.PlaceNo,''),ISNULL(b.CompactNo,''),ISNULL(b.ObjectId,''),
          ISNULL(b.SjNo,''),ISNULL(b.sOrderNo,''),ISNULL(b.TechName,''),ISNULL(b.InDate,''),ISNULL(b.PState,''),ISNULL(b.TempNo,''),
          FirstNum=0,FirstPrice=0,FirstMoney=0,InNum=0,InPrice=0,InMoney=0,
          OutNum=Sum(ISNULL(b.MainNum,0)),OutPrice=Case sum(Isnull(b.MainNum,0)) when 0 then 0 else sum(Isnull(b.MainMoney,0))/sum(Isnull(b.MainNum,0)) end,OutMoney=Sum(ISNULL(b.MainMoney,0)),
          LastNum=Sum(a.WFlag*a.SignFlag*ISNULL(b.MainNum,0)),LastPrice=Case sum(Isnull(b.MainNum,0)) when 0 then 0 else sum(Isnull(b.MainMoney,0))/sum(Isnull(b.MainNum,0)) end,LastMoney=Sum(a.WFlag*a.SignFlag*ISNULL(b.MainMoney,0))
   from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO  
   where ISNULL(a.bMaxAudit,0)=1 and a.WFlag*a.SignFlag=-1  and BillDate>=@dtS and BillDate<=@dtE and b.ItemId is not null
   group by WareId,ItemId,ISNULL(b.ProType,''),ISNULL(b.Color,''),ISNULL(b.BatchNo,''),ISNULL(b.PlaceNo,''),ISNULL(b.CompactNo,''),ISNULL(b.ObjectId,''),
         ISNULL(b.SjNo,''),ISNULL(b.sOrderNo,''),ISNULL(b.TechName,''),ISNULL(b.InDate,''),ISNULL(b.PState,''),ISNULL(b.TempNo,'')            
   
   exec(' select b.ItemCode,b.ItemName,b.ItemSpc,c.WareName,ProType=IsNull(a.ProType,''''),PlaceNo=IsNull(a.PlaceNo,''''),Color=IsNull(a.Color,''''),
          FirstNum=Sum(IsNull(a.FirstNum,0)),FirstPrice=case when sum(FirstNum)=0 then 0 else convert(numeric(18,5),sum(FirstMoney)/sum(FirstNum)) end,FirstMoney=SUM(ISNULL(a.FirstMoney,0)),
          InNum=Sum(IsNull(a.InNum,0)),InPrice=case when sum(a.InNum)=0 then 0 else convert(numeric(18,5),sum(a.InMoney)/sum(a.InNum)) end,InMoney=SUM(ISNULL(a.InMoney,0)),   
          OutNum=Sum(IsNull(a.OutNum,0)),OutPrice=case when sum(a.OutNum)=0 then 0 else convert(numeric(18,5),sum(a.OutMoney)/sum(a.OutNum)) end,OutMoney=SUM(ISNULL(a.OutMoney,0)), 
          LastNum=Sum(IsNull(a.LastNum,0)),LastPrice=case when sum(a.LastNum)=0 then 0 else convert(numeric(18,5),sum(a.LastMoney)/sum(a.LastNum)) end,LastMoney=SUM(ISNULL(a.LastMoney,0))  
          from #SFCTB a left join ItemTB b on a.ItemId=b.ItemId
		  left join WareTB c on a.WareId=c.WareId
		  left join vwObject d on a.ObjectId=d.ObjectID
		  where 1=1 '+@sWhere+' 
		  group by b.ItemCode,b.ItemName,b.ItemSpc,c.WareName,IsNull(a.ProType,''''),IsNull(a.PlaceNo,''''),IsNull(a.Color,'''')')
   
    
end

--exec prSFCMonQ '2011-08-05','2015-09-15',''

go

if Exists (select Name from Sysobjects Where Name='PrProOrderSaleOrderRf' and type='P')
  Drop Procedure PrProOrderSaleOrderRf
go
Create Procedure PrProOrderSaleOrderRf @sWhere Varchar(2000)
As  --未生产订单分析销售订单查询
begin
  exec('select b.bSelect,a.SaleOrderNo,b.CompactNo,a.OrderStyle,a.OrderDate,a.CustId,d.CustName,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,
		b.ProType,Color=b.sColor,NoProOrderNum=IsNull(b.OrderNum,0)-IsNull(m.FinalNum,0),b.OrderNum,
		a.Remark,b.AutoID,b.AutoNo,bBom=Case When IsNull(n.BillNo,'''')<>'''' then ''是'' else '''' end 
		from SaleOrderHDTB a left join SaleOrderDTTB b on a.SaleOrderNo=b.SaleOrderNo
		left join ItemTB c on b.ItemId=c.ItemId
		left join CustTB d on a.CustId=d.CustId
		left join (select FinalNum=SUM(ISNULL(b.FinalNum,0)),b.SaleOrderNo,b.SaleOrderId from ProOrderHDTB a left join ProOrderProTB b on a.ProOrderNo=b.ProOrderNo
		where b.SaleOrderId is not null group by b.SaleOrderNo,b.SaleOrderId)m on b.SaleOrderNo=m.SaleOrderNo and b.AutoNo=m.SaleOrderId
		left join ItemBomHDTB n on b.ItemId=n.ItemId
		where 1=1 '+@sWhere)
end
--exec PrProOrderSaleOrderRf ''
go

if Exists(select Name from sysobjects where name='prItemMrp' and type='p')
  Drop procedure dbo.prItemMrp
go
CREATE procedure dbo.prItemMrp @ProOrderNo Varchar(50)
as
begin

  declare @iNo1 int,@iNo2 int,@iLevel smallint,@bMRPCalCanUseNum bit
  
  select @bMRPCalCanUseNum=IsNull(bMRPCalCanUseNum,0) from SysParamTB
  
  --创建所有物料表
  Create Table #AllItemTB (AutoId int IDENTITY (1, 1) NOT NULL,PId varchar(1000),CId varchar(1000),SaleOrderNo varchar(100),SaleOrderId varchar(100),
                           CpId varchar(50),CpProType  VarChar(100),CpNum Numeric(19,6),TopId varchar(50),TopProType  VarChar(100),TopNum Numeric(19,6),
                           ItemId varchar(50),ItemSource varchar(50),ProType varchar(100),Color VarChar(50),CompactNO VarChar(50),
                           ProduceNum Numeric(18,5),WareNum Numeric(18,5),AdjustNum Numeric(18,5), HasAdjustNum Numeric(18,5),HasUseNum Numeric(18,5),CanUseNum Numeric(18,5),UseNum Numeric(18,5),FinalNum Numeric(18,5),
                           Dosage Numeric(18,5),WasteRate Numeric(18,5),DrawDept varchar (50),
                           iBatch Smallint,iLevel Smallint,bSum bit)

--开始分析 iBatch=1 第一批**************************

  --插入1级物料明细(即要分析的产品)  
  Insert into  #AllItemTB(SaleOrderNo,SaleOrderId,CpId,TopId,TopNum,ItemId,ItemSource,ProType,Color,CompactNO,ProduceNum,WareNum,Dosage,WasteRate,DrawDept,iBatch,iLevel,bSum)
  select SaleOrderNo=IsNull(b.SaleOrderNo,''),SaleOrderId=IsNull(b.SaleOrderId,''),CpId=b.ItemId,TopId='',TopNum=0,ItemId=b.ItemId,e.ItemSource,ProType=IsNull(b.ProType,''),Color=IsNull(b.Color,''),CompactNo=IsNull(b.CompactNo,''),
         ProduceNum=IsNull(b.ProduceNum,0),WareNum=IsNull(m.WareNum,0),
         Dosage=1,WasteRate=0,DrawDept='',iBatch=1,iLevel=1,bSum=0
  from ProOrderHDTB a left join ProOrderDTTB b on a.ProOrderNo=b.ProOrderNo  
  left join ItemTB e on b.ItemId=e.ItemId   
  left join (select ItemId,ProType,Color,WareNum=SUM(ISNULL(WareNum,0)) from WareStorageTB group by ItemId,ProType,Color)m  on b.ItemID=m.ItemId and IsNull(b.ProType,'')=IsNull(m.ProType,'') and IsNull(b.Color,'')=IsNull(m.Color,'')   
  where a.ProOrderNo=@ProOrderNo  and e.ItemSource='自制' and e.ItemParam in ('成品','半成品') --and ISNULL(bDel,0)=0 
  
  
  --插入1级物料汇总
  Insert into  #AllItemTB(SaleOrderNo,SaleOrderId,CpId,TopId,TopNum,ItemId,ItemSource,ProType,Color,CompactNO,ProduceNum,WareNum,Dosage,WasteRate,DrawDept,iBatch,iLevel,bSum)
  select SaleOrderNo,SaleOrderId,CpId='',TopId='',TopNum=0,ItemId,ItemSource,ProType,Color,CompactNO,
         ProduceNum=SUM(ProduceNum),WareNum=AVG(WareNum),
         Dosage=0,WasteRate=0,DrawDept,iBatch=1,iLevel=1,bSum=1
  from  #AllItemTB where iLevel=1 and bSum=0
  group by ItemId,ItemSource,ProType,Color,CompactNO,DrawDept,SaleOrderNo,SaleOrderId
  
  --更新调整数量（重新计算有这种情况）
  Update #AllItemTB Set AdjustNum=m.AdjustNum from ProOrderDTTB m 
  where m.ProOrderNo=@ProOrderNo and #AllItemTB.iLevel=1 and #AllItemTB.bSum=1 and #AllItemTB.ItemId=m.ItemID  and IsNull(#AllItemTB.SaleOrderId,'')=IsNull(m.SaleOrderId,'') 
  
  --更新1级物料可用库存,已使用数量,使用库存等信息
  if @bMRPCalCanUseNum=0 
  begin
	  Update #AllItemTB Set CanUseNum=dbo.IsNegative(ISNULL(WareNum,0),0),
							UseNum=0,
							FinalNum=dbo.IsNegative(ISNULL(ProduceNum,0)+ISNULL(AdjustNum,0),0)
	  where iLevel=1 and bSum=1 
  end
  else
  begin
	  Update #AllItemTB Set CanUseNum=dbo.IsNegative(ISNULL(WareNum,0),0),
							UseNum=Case When ISNULL(ProduceNum,0)+ISNULL(AdjustNum,0)>ISNULL(WareNum,0) then ISNULL(WareNum,0) else ISNULL(ProduceNum,0)+ISNULL(AdjustNum,0) end,
							FinalNum=dbo.IsNegative(ISNULL(ProduceNum,0)+ISNULL(AdjustNum,0)-ISNULL(WareNum,0),0)
	  where iLevel=1 and bSum=1  
  end
  
  --select * from #AllItemTB Return
  
  --插入第2级物料明细  
  Insert into  #AllItemTB(SaleOrderNo,SaleOrderId,CpId,TopId,ItemId,ItemSource,ProType,Color,CompactNO,ProduceNum,WareNum,Dosage,WasteRate,DrawDept,iBatch,iLevel,bSum)
  select a.SaleOrderNo,a.SaleOrderId,a.CpId,TopId=a.ItemId,ItemId=c.ChildId,ItemSource=e.ItemSource,ProType=IsNull(c.ChildProType,''),Color=IsNull(c.ChildColor,''),CompactNo='',
         ProduceNum=IsNull(a.FinalNum,0)*ISNULL(c.Dosage,0)*(1+IsNull(c.WasteRate,0)/100),WareNum=IsNull(m.WareNum,0),
         Dosage=ISNULL(c.Dosage,0),WasteRate=IsNull(c.WasteRate,0),DrawDept=IsNull(c.DrawDept,''),iBatch=1,iLevel=2,bSum=0
  from #AllItemTB a inner join ItemBomHDTB b on a.ItemId=b.ItemID
  inner join ItemBomDTTB c on b.BillNo=c.BillNo and b.ItemID=c.ItemID
  left join ItemTB e on c.ChildId=e.ItemId
  left join (select ItemId,ProType,Color,WareNum=SUM(ISNULL(WareNum,0)) from WareStorageTB group by ItemId,ProType,Color)m on c.ChildId=m.ItemId and IsNull(c.ChildProType,'')=IsNull(m.ProType,'') and IsNull(c.ChildColor,'')=IsNull(m.Color,'')
  where a.bSum=1 and iLevel=1
    
  --插入2级物料汇总
  Insert into  #AllItemTB(SaleOrderNo,SaleOrderId,CpId,TopId,ItemId,ItemSource,ProType,Color,CompactNO,ProduceNum,WareNum,Dosage,WasteRate,DrawDept,iBatch,iLevel,bSum)
  select SaleOrderNo='',SaleOrderId='',CpId='',TopId='',ItemId,ItemSource,ProType,Color,CompactNO,ProduceNum=SUM(ProduceNum),WareNum=AVG(WareNum),Dosage=0,WasteRate=0,DrawDept,iBatch=1,iLevel=2,bSum=1
  from  #AllItemTB where iLevel=2 and bSum=0
  group by ItemId,ItemSource,ProType,Color,CompactNO,DrawDept


  --更新已使用可用库存，已调整数量(本级以上汇总 防止同一个产品可用库存和调整数量被重复计算)
  Update #AllItemTB set HasUseNum=IsNull(m.HasUseNum,0),HasAdjustNum=IsNull(m.HasAdjustNum,0)
  from (select ItemId,HasUseNum=Sum(UseNum),HasAdjustNum=Sum(IsNull(AdjustNum,0)) from #AllItemTB where bSum=1 and iLevel<2 group by ItemId)m
  where #AllItemTB.bSum=1 and #AllItemTB.iLevel=2 and #AllItemTB.ItemId=m.ItemId  

  --更新调整数量（重新计算有这种情况）
  Update #AllItemTB Set AdjustNum=m.AdjustNum from ProOrderProTB m 
  where m.ProOrderNo=@ProOrderNo and #AllItemTB.iLevel=2 and #AllItemTB.bSum=1 and #AllItemTB.ItemId=m.ItemID and m.bSum=1 
  
  --更新2级物料可用库存,已使用数量使用库存等信息
  if @bMRPCalCanUseNum=0 
  begin
	  Update #AllItemTB Set CanUseNum=dbo.IsNegative(ISNULL(WareNum,0),0),
							UseNum=0,
							FinalNum=dbo.IsNegative(ISNULL(ProduceNum,0)+ISNULL(AdjustNum,0)-ISNULL(HasAdjustNum,0),0)
	  where iLevel=2 and bSum=1 
  end
  else
  begin
	  Update #AllItemTB Set CanUseNum=dbo.IsNegative(ISNULL(WareNum,0),0),
							UseNum=Case When ISNULL(ProduceNum,0)+ISNULL(AdjustNum,0)-ISNULL(HasAdjustNum,0)+ISNULL(HasUseNum,0)>ISNULL(WareNum,0) then ISNULL(WareNum,0) else ISNULL(ProduceNum,0)+ISNULL(AdjustNum,0)-ISNULL(HasAdjustNum,0)+ISNULL(HasUseNum,0) end,
							FinalNum=dbo.IsNegative(ISNULL(ProduceNum,0)+ISNULL(AdjustNum,0)-ISNULL(HasAdjustNum,0)+ISNULL(HasUseNum,0)-ISNULL(WareNum,0),0)
	  where iLevel=2 and bSum=1   
  end
  --select * from #AllItemTB where bSum=1  order by ItemId Return   
  
  --递归获取N级物料
  set @iNo1=0
  set @iLevel=3
  select @iNo2=max(AutoId) from #AllItemTB
  while @iNo2-@iNo1>0
  begin  
      --N级物料明细
	  Insert into  #AllItemTB(SaleOrderNo,SaleOrderId,CpId,TopId,ItemId,ItemSource,ProType,Color,CompactNO,ProduceNum,WareNum,Dosage,WasteRate,DrawDept,iBatch,iLevel,bSum)
	  select a.SaleOrderNo,a.SaleOrderId,a.CpId,TopId=a.ItemId,ItemId=c.ChildId,ItemSource=e.ItemSource,ProType=IsNull(c.ChildProType,''),Color=IsNull(c.ChildColor,''),CompactNo='',
			 ProduceNum=IsNull(a.FinalNum,0)*ISNULL(c.Dosage,0)*(1+IsNull(c.WasteRate,0)/100),WareNum=IsNull(m.WareNum,0),
			 Dosage=ISNULL(c.Dosage,0),WasteRate=IsNull(c.WasteRate,0),DrawDept=IsNull(c.DrawDept,''),iBatch=1,iLevel=@iLevel,bSum=0
	  from #AllItemTB a inner join ItemBomHDTB b on a.ItemId=b.ItemID
	  inner join ItemBomDTTB c on b.BillNo=c.BillNo and b.ItemID=c.ItemID
	  left join ItemTB e on c.ChildId=e.ItemId
	  left join (select ItemId,ProType,Color,WareNum=SUM(ISNULL(WareNum,0)) from WareStorageTB group by ItemId,ProType,Color)m on c.ChildId=m.ItemId and IsNull(c.ChildProType,'')=IsNull(m.ProType,'') and IsNull(c.ChildColor,'')=IsNull(m.Color,'')
	  where  a.AutoId>@iNo1 and a.bSum=1 and a.iLevel=@iLevel-1
	  
      --N级物料汇总
	  Insert into  #AllItemTB(SaleOrderNo,SaleOrderId,CpId,TopId,ItemId,ItemSource,ProType,Color,CompactNO,ProduceNum,WareNum,Dosage,WasteRate,DrawDept,iBatch,iLevel,bSum)
	  select SaleOrderNo='',SaleOrderId='',CpId='',TopId='',ItemId,ItemSource,ProType,Color,CompactNO,ProduceNum=SUM(ProduceNum),WareNum=AVG(WareNum),Dosage=0,WasteRate=0,DrawDept,iBatch=1,iLevel=@iLevel,bSum=1
	  from  #AllItemTB where iLevel=@iLevel and bSum=0
	  group by ItemId,ItemSource,ProType,Color,CompactNO,DrawDept
	  

	  --更新已使用可用库存，已调整数量(本级以上汇总 防止同一个产品可用库存和调整数量被重复计算)
	  Update #AllItemTB set HasUseNum=IsNull(m.HasUseNum,0),HasAdjustNum=IsNull(m.HasAdjustNum,0)
	  from (select ItemId,HasUseNum=Sum(UseNum),HasAdjustNum=Sum(IsNull(AdjustNum,0)) from #AllItemTB where bSum=1 and iLevel<@iLevel group by ItemId)m
	  where  #AllItemTB.bSum=1 and  #AllItemTB.iLevel=@iLevel and #AllItemTB.ItemId=m.ItemId  

	  --更新调整数量（重新计算有这种情况）
	  Update #AllItemTB Set AdjustNum=m.AdjustNum from 
	  (select ItemId,AdjustNum=Sum(ISNULL(a.AdjustNum,0)) from 
	   (select ItemId,AdjustNum from ProOrderProTB where ProOrderNo=@ProOrderNo and IsNull(bSum,0)=1
	    Union all
	    select ItemId,AdjustNum from ProOrderMatTB where ProOrderNo=@ProOrderNo and IsNull(bSum,0)=1)a
	    group by a.ItemID) m 
	  where #AllItemTB.iLevel=@iLevel and #AllItemTB.bSum=1 and #AllItemTB.ItemId=m.ItemID 
	  
	  --更新@iLevel级物料可用库存,已使用数量使,用库存等信息
	  if @bMRPCalCanUseNum=0 
      begin
		  Update #AllItemTB Set CanUseNum=dbo.IsNegative(ISNULL(WareNum,0),0),
								UseNum=0,
								FinalNum=dbo.IsNegative(ISNULL(ProduceNum,0)+ISNULL(AdjustNum,0)-ISNULL(HasAdjustNum,0),0)
		  where iLevel=@iLevel and bSum=1 
	  end
	  else
	  begin
		  Update #AllItemTB Set CanUseNum=dbo.IsNegative(ISNULL(WareNum,0),0),
								UseNum=Case When ISNULL(ProduceNum,0)+ISNULL(AdjustNum,0)-ISNULL(HasAdjustNum,0)+ISNULL(HasUseNum,0)>ISNULL(WareNum,0) then ISNULL(WareNum,0) else ISNULL(ProduceNum,0)+ISNULL(AdjustNum,0)-ISNULL(HasAdjustNum,0)+ISNULL(HasUseNum,0) end,
								FinalNum=dbo.IsNegative(ISNULL(ProduceNum,0)+ISNULL(AdjustNum,0)-ISNULL(HasAdjustNum,0)+ISNULL(HasUseNum,0)-ISNULL(WareNum,0),0)
		  where iLevel=@iLevel and bSum=1 	  
	  end	
	    
	  --进行下一个循环
	  Set @iLevel=@iLevel+1
      Set @iNo1=@iNo2
      select @iNo2=max(AutoId) from #AllItemTB  	        
  end


--对第一批进行整理生成第二批  iBatch=2 第二批**************************
  
  Insert into  #AllItemTB(SaleOrderNo,SaleOrderId,ItemId,ItemSource,ProType,Color,CompactNO,ProduceNum,WareNum,AdjustNum,CanUseNum,UseNum,FinalNum,iBatch,bSum) 
  select a.SaleOrderNo,a.SaleOrderId,b.ItemId,b.ItemSource,a.ProType,a.Color,a.CompactNO,
         ProduceNum=SUM(a.ProduceNum),WareNum=AVG(a.WareNum),AdjustNum=Sum(a.AdjustNum),CanUseNum=AVG(a.CanUseNum),UseNum=Sum(a.UseNum),FinalNum=Sum(a.FinalNum),
         iBatch=2,bSum=1
  from #AllItemTB a left join ItemTB b on a.ItemId=b.ItemId
  where a.iBatch=1 and a.bSum=1
  group by a.SaleOrderNo,a.SaleOrderId,b.ItemId,b.ItemSource,a.ProType,a.Color,a.CompactNO

  --select * from #AllItemTB where iBatch=2 Return   
  
--将结果输出MRP各物理表中**************************

  
  --新增产品汇总
  InSert into ProOrderProTB(AutoNo,ProOrderNo,SaleOrderNo,SaleOrderId,ItemID,ItemCode,ItemPYCode,ItemName,ItemSpc,ItemPic,
              ItemUnit,SubUnit,ExchRate,iFlag,ItemParam,ItemSource,
              ProType,Color,CompactNO,CpId,CpCode,CpName,TopId,TopCode,TopName,
              ProduceNum,WareNum,CanUseNum,UseNum,FinalNum,BeforeNum,MRPResult,bSum)
  select AutoNo=dbo.fnGetAutoNo('ProOrderHDTB',GetDate()),@ProOrderNo,a.SaleOrderNo,a.SaleOrderId,a.ItemId,b.ItemCode,b.ItemPYCode,b.ItemName,b.ItemSpc,b.ItemPic ,
         b.ItemUnit,b.SubUnit,b.ExchRate,b.iFlag,b.ItemParam,b.ItemSource,
         a.ProType,a.Color,a.CompactNO,a.CpId,CpCode=c.ItemCode,CpName=c.ItemName,a.TopId,TopCode=d.ItemCode,TopName=d.ItemName,
         a.ProduceNum,a.WareNum,a.CanUseNum,a.UseNum,a.FinalNum,
         BeforeNum=0,MRPResult='0-->'+CONVERT(varchar(20),Convert(Numeric(19,2),ISNULL(FinalNum,0))),bSum=1
  from #AllItemTB a left join ItemTB b on a.ItemId=b.ItemId
  left join ItemTB c on a.CpId=c.ItemId
  left join ItemTB d on a.TopId=d.ItemId
  where iBatch=2 and a.ItemSource='自制'  and not Exists(select AutoNo from ProOrderProTB m where m.ProOrderNo=@ProOrderNo and m.ItemID=a.ItemId and IsNull(m.SaleOrderId,'')=IsNull(a.SaleOrderId,''))

  --更新产品汇总
  Update ProOrderProTB Set ProduceNum=m.ProduceNum,WareNum=m.WareNum,AdjustNum=m.AdjustNum,CanUseNum=m.CanUseNum,UseNum=m.UseNum,FinalNum=m.FinalNum,
         MRPResult=CONVERT(varchar(20),Convert(Numeric(19,2),ISNULL(ProOrderProTB.BeforeNum,0)))+'-->'+CONVERT(varchar(20),m.FinalNum)
  from #AllItemTB m 
  where ProOrderProTB.ProOrderNo=@ProOrderNo  and IsNull(ProOrderProTB.SaleOrderId,'')=IsNull(m.SaleOrderId,'') and m.iBatch=2 and ProOrderProTB.ItemID=m.ItemId 
 
  --删除产品汇总(不直接删除,做上删除标记)
  Update ProOrderProTB Set bDel=1,ProduceNum=null,FinalNum=null
  where ProOrderProTB.ProOrderNo=@ProOrderNo and not Exists (select ItemID from #AllItemTB m where m.iBatch=2 and m.ItemSource='自制' and ProOrderProTB.ItemID=m.ItemId and IsNull(ProOrderProTB.SaleOrderId,'')=IsNull(m.SaleOrderId,'') )

  ----新增产品明细
  --InSert into ProOrderProTB(AutoNo,ProOrderNo,ItemID,ItemCode,ItemPYCode,ItemName,ItemSpc,ItemPic,
  --            ItemUnit,SubUnit,ExchRate,iFlag,ItemParam,ItemSource,
  --            ProType,Color,CompactNO,CpId,CpCode,CpName,TopId,TopCode,TopName,
  --            ProduceNum,WareNum,CanUseNum,UseNum,FinalNum,BeforeNum,MRPResult,bSum)
  --select AutoNo=dbo.fnGetAutoNo('ProOrderHDTB',GetDate()),@ProOrderNo,a.ItemId,b.ItemCode,b.ItemPYCode,b.ItemName,b.ItemSpc,b.ItemPic ,
  --       b.ItemUnit,b.SubUnit,b.ExchRate,b.iFlag,b.ItemParam,a.ItemSource,
  --       a.ProType,a.Color,a.CompactNO,a.CpId,CpCode=c.ItemCode,CpName=c.ItemName,a.TopId,TopCode=d.ItemCode,TopName=d.ItemName,
  --       a.ProduceNum,a.WareNum,a.CanUseNum,a.UseNum,a.FinalNum,
  --       BeforeNum=0,MRPResult='0-->'+CONVERT(varchar(20),Convert(Numeric(19,2),ISNULL(FinalNum,0))),bSum=0
  --from #AllItemTB a left join ItemTB b on a.ItemId=b.ItemId
  --left join ItemTB c on a.CpId=c.ItemId
  --left join ItemTB d on a.TopId=d.ItemId
  --where a.iBatch=1 and a.bSum=0 and a.ItemSource='自制' and not Exists(select AutoNo from ProOrderProTB m where m.ProOrderNo=@ProOrderNo and m.CpId=a.CpId and m.TopId=a.TopId and m.ItemID=a.ItemId and m.bSum=0)

  ----更新产品明细
  --Update ProOrderProTB Set ProduceNum=m.ProduceNum,WareNum=m.WareNum,AdjustNum=m.AdjustNum,CanUseNum=m.CanUseNum,UseNum=m.UseNum,FinalNum=m.FinalNum,
  --       MRPResult=CONVERT(varchar(20),Convert(Numeric(19,2),ISNULL(ProOrderProTB.BeforeNum,0)))+'-->'+CONVERT(varchar(20),Convert(Numeric(19,2),ISNULL(m.FinalNum,0)))
  --from #AllItemTB m 
  --where ProOrderProTB.ProOrderNo=@ProOrderNo and ProOrderProTB.bSum=0 and m.bSum=0 and m.iBatch=1 and ProOrderProTB.ItemID=m.ItemId 
 
  ----删除产品明细(不直接删除,做上删除标记)
  --Update ProOrderProTB Set bDel=1,ProduceNum=null,FinalNum=null
  --where ProOrderProTB.ProOrderNo=@ProOrderNo and ProOrderProTB.bSum=0 and not Exists (select ItemID from #AllItemTB m where  m.bSum=0 and m.iBatch=1 and m.ItemSource='自制' and ProOrderProTB.CPId=m.CPId and ProOrderProTB.TopId=m.TopId and ProOrderProTB.ItemID=m.ItemId)
 
    
  --统一更新产品的上次数量
  Update  ProOrderProTB Set BeforeNum=FinalNum where ProOrderNo=@ProOrderNo


  --新增生产工艺
  InSert into ProOrderTechTB(AutoNo,ProOrderNo,SaleOrderNo,SaleOrderId,ProOrderProId,
              ItemID,ItemCode,ItemPYCode,ItemName,ItemSpc,ItemPic,ItemUnit,SubUnit,ExchRate,iFlag,ItemParam,ItemSource,
              ProType,Color,CompactNO,Ordinal,TechName,TopTech,NextTech,TechParam,DeptId,DeptName,bFirst,bLast,FinalNum)
  select AutoNo=dbo.fnGetAutoNo('ProOrderHDTB',GetDate()),@ProOrderNo,a.SaleOrderNo,a.SaleOrderId,a.AutoNo,
         a.ItemId,c.ItemCode,c.ItemPYCode,c.ItemName,c.ItemSpc,c.ItemPic,
         c.ItemUnit,c.SubUnit,c.ExchRate,b.iFlag,c.ItemParam,c.ItemSource,
         ProType=IsNull(a.ProType,''),Color=IsNull(a.Color,''),CompactNO=IsNull(a.CompactNO,''),b.Ordinal,b.TechName,b.TopTech,b.NextTech,b.TechParam,b.DeptId,b.DeptName,b.bFirst,b.bLast,a.FinalNum
   from ProOrderProTB a left join ItemTechDTTB b on a.ItemID=b.ItemId
   left join ItemTB c on a.ItemID=c.ItemId
   where ProOrderNo=@ProOrderNo and IsNull(a.bDel,0)=0 and not Exists(select AutoId from ProOrderTechTB m where m.ProOrderNo=@ProOrderNo and m.ProOrderProId=a.AutoNo  and m.TechName=b.TechName)
 
   --更新生产工艺
  Update ProOrderTechTB Set FinalNum=m.FinalNum
  from (select a.AutoNo,b.TechName,a.FinalNum from ProOrderProTB a left join ItemTechDTTB b on a.ItemId=b.ItemId where ProOrderNo=@ProOrderNo and IsNull(a.bDel,0)=0) m 
  where ProOrderTechTB.ProOrderNo=@ProOrderNo  and IsNull(ProOrderTechTB.ProOrderProId,'')=IsNull(m.AutoNo,'') and ProOrderTechTB.TechName=m.TechName 
    
  --删除生产工艺(不直接删除,做上删除标记)
  Update ProOrderTechTB Set bDel=1
  where ProOrderTechTB.ProOrderNo=@ProOrderNo 
  and not Exists (select m.AutoId from ProOrderProTB m left join ItemTechDTTB n on m.ItemID=n.ItemId where IsNull(m.bDel,0)=0 and  m.ProOrderNo=@ProOrderNo  and ProOrderTechTB.ProOrderProId=m.AutoNo and IsNull(ProOrderTechTB.TechName,'')=IsNull(n.TechName,''))


  --新增物料汇总
  InSert into ProOrderMatTB(AutoNo,ProOrderNo,ItemID,ItemCode,ItemPYCode,ItemName,ItemSpc,ItemPic,
              ItemUnit,SubUnit,ExchRate,iFlag,ItemParam,ItemSource,StockMode,
              ProType,Color,CompactNO,CpId,CpCode,CpName,TopId,TopCode,TopName,
              ProduceNum,WareNum,CanUseNum,UseNum,FinalNum,BeforeNum,MRPResult,bSum)
  select AutoNo=dbo.fnGetAutoNo('ProOrderHDTB',GetDate()),@ProOrderNo,a.ItemId,b.ItemCode,b.ItemPYCode,b.ItemName,b.ItemSpc,b.ItemPic ,
         b.ItemUnit,b.SubUnit,b.ExchRate,b.iFlag,b.ItemParam,a.ItemSource,b.StockMode,
         a.ProType,a.Color,a.CompactNO,a.CpId,CpCode=c.ItemCode,CpName=c.ItemName,a.TopId,TopCode=d.ItemCode,TopName=d.ItemName,
         a.ProduceNum,a.WareNum,a.CanUseNum,a.UseNum,FinalNum=a.FinalNum,
         BeforeNum=0,MRPResult='0-->'+CONVERT(varchar(20),Convert(Numeric(19,2),ISNULL(FinalNum,0))),bSum=1
  from #AllItemTB a left join ItemTB b on a.ItemId=b.ItemId
  left join ItemTB c on a.CpId=c.ItemId
  left join ItemTB d on a.TopId=d.ItemId
  where iBatch=2 and a.ItemSource='采购' and not Exists(select AutoNo from ProOrderMatTB m where m.ProOrderNo=@ProOrderNo and m.ItemID=a.ItemId and m.bSum=1)

  --更新物料汇总
  Update ProOrderMatTB Set ProduceNum=m.ProduceNum,WareNum=m.WareNum,AdjustNum=m.AdjustNum,CanUseNum=m.CanUseNum,UseNum=m.UseNum,FinalNum=m.FinalNum,
         MRPResult=CONVERT(varchar(20),Convert(Numeric(19,2),ISNULL(ProOrderMatTB.BeforeNum,0)))+'-->'+CONVERT(varchar(20),m.FinalNum)
  from #AllItemTB m 
  where ProOrderMatTB.ProOrderNo=@ProOrderNo  and ProOrderMatTB.bSum=1 and m.iBatch=2 and ProOrderMatTB.ItemID=m.ItemId 
 
  --删除物料汇总(不直接删除,做上删除标记)
  Update ProOrderMatTB Set bDel=1,ProduceNum=null,FinalNum=null
  where ProOrderMatTB.ProOrderNo=@ProOrderNo and not Exists (select ItemID from #AllItemTB m where m.iBatch=2 and m.ItemSource='采购' and ProOrderMatTB.ItemID=m.ItemId )
 

  ----新增物料明细
  --InSert into ProOrderMatTB(AutoNo,ProOrderNo,ItemID,ItemCode,ItemPYCode,ItemName,ItemSpc,ItemPic,
  --            ItemUnit,SubUnit,ExchRate,iFlag,ItemParam,ItemSource,
  --            ProType,Color,CompactNO,CpId,CpCode,CpName,TopId,TopCode,TopName,
  --            ProduceNum,WareNum,CanUseNum,UseNum,FinalNum,BeforeNum,MRPResult,bSum)
  --select AutoNo=dbo.fnGetAutoNo('ProOrderHDTB',GetDate()),@ProOrderNo,a.ItemId,b.ItemCode,b.ItemPYCode,b.ItemName,b.ItemSpc,b.ItemPic ,
  --       b.ItemUnit,b.SubUnit,b.ExchRate,b.iFlag,b.ItemParam,a.ItemSource,
  --       a.ProType,a.Color,a.CompactNO,a.CpId,CpCode=c.ItemCode,CpName=c.ItemName,a.TopId,TopCode=d.ItemCode,TopName=d.ItemName,
  --       a.ProduceNum,a.WareNum,a.CanUseNum,a.UseNum,a.FinalNum,
  --       BeforeNum=0,MRPResult='0-->'+CONVERT(varchar(20),Convert(Numeric(19,2),ISNULL(FinalNum,0))),bSum=0
  --from #AllItemTB a left join ItemTB b on a.ItemId=b.ItemId
  --left join ItemTB c on a.CpId=c.ItemId
  --left join ItemTB d on a.TopId=d.ItemId
  --where a.iBatch=1 and a.bSum=0 and a.ItemSource='采购' and not Exists(select AutoNo from ProOrderMatTB m where m.ProOrderNo=@ProOrderNo and m.CpId=a.CpId and m.TopId=a.TopId and m.ItemID=a.ItemId and m.bSum=0)

  ----更新产品明细
  --Update ProOrderMatTB Set ProduceNum=m.ProduceNum,WareNum=m.WareNum,AdjustNum=m.AdjustNum,CanUseNum=m.CanUseNum,UseNum=m.UseNum,FinalNum=m.FinalNum,
  --       MRPResult=CONVERT(varchar(20),Convert(Numeric(19,2),ISNULL(ProOrderMatTB.BeforeNum,0)))+'-->'+CONVERT(varchar(20),Convert(Numeric(19,2),ISNULL(m.FinalNum,0)))
  --from #AllItemTB m 
  --where ProOrderMatTB.ProOrderNo=@ProOrderNo and ProOrderMatTB.bSum=0 and m.bSum=0 and m.iBatch=1 and ProOrderMatTB.CPId=m.CPId  and ProOrderMatTB.TopId=m.TopId and ProOrderMatTB.ItemID=m.ItemId
 
  ----删除产品汇总(不直接删除,做上删除标记)
  --Update ProOrderMatTB Set bDel=1,ProduceNum=null,FinalNum=null
  --where ProOrderMatTB.ProOrderNo=@ProOrderNo  and ProOrderMatTB.bSum=0  and not Exists (select ItemID from #AllItemTB m where  m.bSum=0 and m.iBatch=1 and m.ItemSource='采购' and ProOrderMatTB.CPId=m.CPId and ProOrderMatTB.TopId=m.TopId and ProOrderMatTB.ItemID=m.ItemId)
 
 
  --统一更新产品的上次数量
  Update  ProOrderMatTB Set BeforeNum=FinalNum where ProOrderNo=@ProOrderNo
  
  --更新分析产品页
  Update ProOrderDTTB set FinalNum=m.FinalNum,BeforeNum=m.FinalNum from ProOrderProTB m where ProOrderDTTB.ProOrderNo=@ProOrderNo and  ProOrderDTTB.ProOrderNo=m.ProOrderNo and IsNull(ProOrderDTTB.SaleOrderId,'')=IsNull(m.SaleOrderId,'') and  IsNull(ProOrderDTTB.ItemId,'')=IsNull(m.ItemId,'') 

  Update ProOrderDTTB Set AdjustNum=null where ProOrderNo=@ProOrderNo --and ISNULL(AdjustNum,0)<>0
  Update ProOrderProTB Set AdjustNum=null where ProOrderNo=@ProOrderNo --and ISNULL(AdjustNum,0)<>0
  
  select Result='分析完成'           

               
end

--Exec prItemMrp 'SCDD131207095404'
go



if Exists(select Name from sysobjects where name='prDispatchGetMat' and type='p')
  Drop procedure dbo.prDispatchGetMat
go
Create Procedure dbo.prDispatchGetMat @ItemId varchar(50),@TechName varchar(100)
as
	declare @TInfo varchar(30),@TechParam Int,@TopTech varchar(100),@Ordinal int,@TaskNo varchar(30),@PgNo varchar(30),@IsTl bit,@ProType varchar(100),@bType bit    
     
    Create Table #TempTB (ItemID varchar(100),ProType  varchar(100),Color  varchar(100),Dosage Numeric(19,6),WasteRate  Numeric(19,6),bVirtual bit)
    
    --插入下级产品
    InSert into #TempTB(ItemID,ProType,Color,Dosage,WasteRate,bVirtual)
    select ItemID=b.ChildId,ProType=IsNull(b.ChildProType,''),Color=IsNull(b.ChildColor,''),Dosage=b.Dosage,WasteRate=b.WasteRate,c.bVirtual
    from ItemBomHDTB a left join ItemBomDTTB b on a.BillNo=b.BillNo and a.ItemId=b.ItemId
    left join ItemBomHDTB c on b.ChildId=c.ItemID  
    where a.ItemID=@ItemId and IsNull(b.TechName,'')=@TechName
   
    --如果有虚拟件则再插入虚拟件下级
    InSert into #TempTB(ItemID,ProType,Color,Dosage,WasteRate,bVirtual)
    select ItemID=b.ChildId,ProType=b.ChildProType,Color=b.ChildColor,Dosage=b.Dosage,WasteRate=b.WasteRate,bVirtual=0
    from #TempTB a left join ItemBomDTTB b on a.ItemID=b.ItemID
    where ISNULL(a.bVirtual,0)=1
    
    select ItemID,ProType,Color,Dosage,WasteRate,bVirtual from #TempTB where ISNULL(bVirtual,0)=0

-- Exec prDispatchGetMat '040001','热处理'

GO

if exists(select Name from sysobjects where name='PrProOrderToRequire' and type='p')
  Drop procedure dbo.PrProOrderToRequire
go
Create procedure dbo.PrProOrderToRequire @ProOrderNo varchar(30),@IFlag int
as
begin
  DECLARE @ReqNo VARCHAR(50),@StockOrderNo varchar(100),@ErrorStr varchar(500),@MaxAudit smallint,@bMaxAudit bit
  BEGIN TRANSACTION
  --审核生成请购单
  if @IFlag=1 
  begin
      Set @ReqNo=''
	  exec prGetTableNo 'RequireHDTB','ReqNo',@ReqNo OUTPUT
	  if @ReqNo is null
	  begin
		  ROLLBACK TRANSACTION 
		  RAISERROR('请购单前缀没有设置!',16,1)
		  return     
	  end
	  select @MaxAudit=MaxAuditLevel from SysTableSetTB where TableId='RequireHDTB'
	  --请购单表头
	  insert into RequireHDTB(ReqNo,ReqDate,SubjoinNo,
							  MakeDate,MakeMan,MakeManName,AuditFlag,bMaxAudit,AuditManName,AuditDate,MaxAuditDate,Remark)       
	   select @ReqNo,Convert(varchar(20),getdate(),23),ProOrderNo,
	          getdate(),MakeMan,MakeManName,@MaxAudit,1,AuditManName,GetDate(),GetDate(),'生产订单审核自动生成请购单' 
	   from ProOrderHDTB where ProOrderNo=@ProOrderNo
	  if @@error<>0
	  begin
		  ROLLBACK TRANSACTION 
		  RAISERROR('生成请购单表头出错！',16,1)
		  return 
	  end
	  --请购单表体
	  insert into RequireDTTB (AutoNo,ReqNo,ItemId,ItemCode,ItemName,ItemSpc,ItemPic,ItemUnit,SubUnit,ExchRate,iFlag,
	                           ProType ,Color,ReqNum,SubNum,ProOrderNo,ProOrderId,Remark)
	  select dbo.fnGetAutoNo('RequireHDTB',GetDate()),@ReqNo,b.ItemId,b.ItemCode,c.ItemName,c.ItemSpc,c.ItemPic,c.ItemUnit,c.SubUnit,c.ExchRate,c.iFlag,b.ProType ,b.Color,
				 IsNull(b.FinalNum,0),SubNum=Case when c.iFlag=0 then IsNull(b.FinalNum,0)*c.ExchRate else IsNull(b.FinalNum,0)/dbo.IsZero(c.ExchRate,null) end,b.ProOrderNo,b.AutoNo,''
		from ProOrderHDTB a left join ProOrderMatTB b on a.ProOrderNo=b.ProOrderNo left join ItemTB c on b.ItemID=c.ItemID 
		where a.ProOrderNo=@ProOrderNo and IsNull(b.FinalNum,0)>0 and c.StockMode='按单'
	  if @@error<>0
	  begin
		 ROLLBACK TRANSACTION 
		 RAISERROR('生成请购单表体出错！',16,1)
		 return 
	  end
	  --反写请购单号到物料汇总
	  Update ProOrderMatTB Set ReqNo=m.ReqNo from (select ReqNo,ProOrderId from RequireDTTB where ProOrderNo=@ProOrderNo )m
	  where ProOrderMatTB.AutoNo=m.ProOrderId
  end
  --反审核删除请购单
  else if @IFlag=-1 
  begin
     set @ReqNo=''
     select @ReqNo=ReqNo,@bMaxAudit=bMaxAudit from RequireHDTB where SubjoinNo=@ProOrderNo 
     
   --  set @StockOrderNo=''
   --  select @StockOrderNo=StockOrderNo from StockOrderDTTB where RfNo=@ReqNo
   --  if @StockOrderNo<>''
   --  begin
   --  	 ROLLBACK TRANSACTION 
   --  	 Set @ErrorStr='生成的请购单已经被采购订单引用,采购订单号: '+@StockOrderNo
		 --RAISERROR(@ErrorStr,16,1)
		 --return 
   --  end
     
     delete RequireDTTB where ReqNo=@ReqNo
     delete RequireHDTB where ReqNo=@ReqNo 
     Update ProOrderMatTB Set ReqNo=''
	 where  ProOrderNO=@ProOrderNo and not Exists(select ProOrderId from RequireDTTB m where ProOrderMatTB.AutoNo=m.ProOrderId)    
  end
  commit Tran
  select null
end 

--Exec PrProOrderToRequire 'XSCK1301052670',-1 
GO

if exists(select name from sysobjects where name='prAssistOutInQ' and type='P')
    drop procedure dbo.prAssistOutInQ
go
create procedure dbo.prAssistOutInQ  @sWhere varchar(1000),@iFlag Smallint
as
begin
	Create Table #AssMoveTB (MoveOutNo varchar(100),MoveOutDate DateTime,MoveInNo varchar(100),MoveInDate DateTime,ObjectId varchar(100),ObjectName varchar(100),
	             ItemId varchar(100),ItemCode varchar(100),ItemName varchar(100),ItemSpc varchar(100),ItemUnit varchar(100),
	             DispatchNo varchar(100),DispatchId varchar(100),TopOrdinal Smallint,TopTech varchar(100),Ordinal Smallint,TechName varchar(100),OutNum Numeric(18,5),InNum Numeric(18,5),
	             SpoilNum Numeric(18,5),WasteNum Numeric(18,5),ScrapNum Numeric(18,5),Weight Numeric(18,5),MovePrice Numeric(18,5),MoveMoney Numeric(18,5),Remark varchar(100))

    
    --插入外协发料
    InSert Into #AssMoveTB(MoveOutDate,ObjectId,ObjectName,ItemId,DispatchNo,TopOrdinal,TopTech,OutNum)
    select Max(a.MoveDate),a.AcceptId,d.ObjectName,b.ItemId,b.DispatchNo,b.Ordinal,b.TechName,OutNum=Sum(IsNull(b.MoveNum,0))
    from ItemMoveHDTB a left join ItemMoveDTTB b on a.MoveNo=b.MoveNo
    left join vwObject d on a.AcceptId=d.ObjectID
    where a.MKindId='AssistMove'
    group by a.AcceptId,d.ObjectName,b.ItemId,b.DispatchNo,b.Ordinal,b.TechName

    --更新入库数量
    
    Update #AssMoveTB  set MoveInDate=m.MoveDate,DispatchId=m.DispatchId,Ordinal=m.Ordinal,TechName=m.TechName,
           InNum=m.InNum,SpoilNum=m.SpoilNum,WasteNum=m.WasteNum,ScrapNum=m.ScrapNum,Weight=m.Weight,MovePrice=m.MovePrice,MoveMoney=ISNULL(m.InNum,0)*ISNULL(m.MovePrice,0) 
    from  
    (select MoveDate=Max(a.MoveDate),b.ItemId,b.DispatchNo,b.DispatchId,b.Ordinal,b.TechName,TopTech=IsNull(m.TopTech,''),
    InNum=Sum(IsNull(b.MoveNum,0)),SpoilNum=Sum(IsNull(b.SpoilNum,0)),WasteNum=Sum(IsNull(b.WasteNum,0)),ScrapNum=Sum(IsNull(b.ScrapNum,0)),Weight=Avg(b.Weight),MovePrice=Avg(b.MovePrice)
    from ItemMoveHDTB a left join ItemMoveDTTB b on a.MoveNo=b.MoveNo
    left join vwObject d on a.AcceptId=d.ObjectID
    left join ProDispatchDTTB m on b.DispatchId=m.AutoNo
    where a.MKindId='AssistMoveIn'
    group by b.ItemId,b.DispatchNo,b.DispatchId,b.Ordinal,b.TechName,IsNull(m.TopTech,'')
     )m where #AssMoveTB.DispatchNo=m.DispatchNo and #AssMoveTB.TopTech=m.TopTech
   

    --因为首道工序没有上道工序(),所以首道工序只统计入库数量
    InSert into #AssMoveTB(ObjectId,ObjectName,MoveInNo,MoveInDate,ItemId,DispatchNo,DispatchId,Ordinal,TechName,TopTech,InNum,SpoilNum,WasteNum,ScrapNum,Weight,MovePrice,MoveMoney,Remark)
    select a.SendId,d.ObjectName,a.MoveNo,a.MoveDate,b.ItemId,b.DispatchNo,b.DispatchId,b.Ordinal,b.TechName,TopTech=IsNull(m.TopTech,''),
    InNum=b.MoveNum,b.SpoilNum,b.WasteNum,b.ScrapNum,b.Weight,b.MovePrice,MoveMoney=ISNULL(b.MoveNum,0)*ISNULL(b.MovePrice,0),b.Remark
    from ItemMoveHDTB a left join ItemMoveDTTB b on a.MoveNo=b.MoveNo
    left join vwObject d on a.SendId=d.ObjectID
    left join ProDispatchDTTB m on b.DispatchId=m.AutoNo
    where a.MKindId='AssistMoveIn' and ISNULL(m.bFirst,0)=1 and ISNULL(m.TechParam,'')='外协'
    
    
    if @iFlag=1
    begin
		exec('select DispatchNo,ObjectId,ObjectName,a.MoveOutNo,a.MoveOutDate,a.MoveInNo,a.MoveInDate,a.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,
			   a.TopOrdinal,a.TopTech,a.Ordinal,a.TechName,a.OutNum,a.InNum,a.SpoilNum,a.WasteNum,a.ScrapNum,AllInNum=IsNull(a.InNum,0)+IsNull(a.SpoilNum,0)+IsNull(a.WasteNum,0)+IsNull(a.ScrapNum,0),
			   a.MovePrice,a.MoveMoney,a.Weight,a.Remark
			from #AssMoveTB a left join ItemTB c on a.ItemId=c.ItemId
			where 1=1 '+@sWhere+'
			order by ObjectId,MoveInDate')
     end
     if @iFlag=2
     begin
		exec('select a.ObjectId,a.ObjectName,OutNum=Sum(IsNull(a.OutNum,0)),InNum=Sum(IsNull(a.InNum,0)),SpoilNum=Sum(IsNull(a.SpoilNum,0)),WasteNum=Sum(IsNull(a.WasteNum,0)),ScrapNum=Sum(IsNull(a.ScrapNum,0)),
		      AllInNum=Sum(IsNull(a.InNum,0))+Sum(IsNull(a.SpoilNum,0))+Sum(IsNull(a.WasteNum,0))+Sum(IsNull(a.ScrapNum,0)),
		      NoInNum=Case when Sum(IsNull(a.OutNum,0))>0 then Sum(IsNull(a.OutNum,0))-Sum(IsNull(a.InNum,0))-Sum(IsNull(a.SpoilNum,0))-Sum(IsNull(a.WasteNum,0))-Sum(IsNull(a.ScrapNum,0)) else 0 end,
		      MoveMoney=Sum(IsNull(a.MoveMoney,0)),Weight=Sum(IsNull(a.Weight,0))
			from #AssMoveTB a 
			where 1=1 '+@sWhere+'
			group by a.ObjectId,a.ObjectName
			order by ObjectId')
     end

end
--exec prAssistOutInQ '',1
go



--应付期初记账
if Exists(select Name from sysobjects where name='prStockFirstAccount' and type='p')
  Drop procedure dbo.prStockFirstAccount
go
create proc dbo.prStockFirstAccount @AccountMan varchar(20),@AccountFlag int  --1 表示记帐 0 表示反记帐

as
  SET NOCOUNT ON
  declare @IntErrCode int,@BreakPoint varchar(20),@StartMonth varchar(6)  --系统启用月份
  
  select @StartMonth=isnull(StockStartMon,'') from SysParamTB
  if @StartMonth=''
  begin
    select '公司设置中没有指定应付启用月份!' as ReturStr
    return
  end

  BEGIN TRANSACTION 
  set @BreakPoint=1000000000
  if @AccountFlag=1       --记帐
  begin    
      update StockAccountTB set AccountFlag='已记账' where AccountNo=@StartMonth and (isnull(AccountFlag,'')='' or isnull(AccountFlag,'')='未记账')
      select @IntErrCode=@@error
      if @IntErrCode=0
      begin
          COMMIT TRANSACTION
          select '记帐成功!' as ReturStr
      end
      else
      begin
          ROLLBACK TRANSACTION
          select '记帐失败!' as ReturStr
      end
  end 
  else  --反记帐
  begin                          
      update StockAccountTB set AccountFlag='未记账' where AccountNo=@StartMonth and AccountFlag='已记账'        
      select @IntErrCode=@@error
      if @IntErrCode=0
      begin
          COMMIT TRANSACTION
          select '反记帐成功!' as ReturStr
      end
      else
      begin
          ROLLBACK TRANSACTION
          select '反记帐失败!' as ReturStr
      end
  end
go

--exec prStockFirstAccount 'admin',-1


--应付月结
if exists (select name from sysobjects where name = 'prStockAccount' and type = 'p')
  drop procedure dbo.prStockAccount
go
create procedure dbo.prStockAccount @AccountFlag Smallint

as
begin
  Declare @FMonthNo varchar(6),@LMonthNo varchar(6),@NMonthNo varchar(6),@FSMonth datetime,@FEMonth datetime,@LSMonth datetime,
          @LEMonth datetime,@TempMonthNo varchar(6),@TempSMonth datetime,@TempEMonth datetime,@bAccount varchar(2)
        --第一个未结账财务月份,最后一个结账财务月份,下一个会计月份,第一个未结账财务月份的起始日期,第一个未结账财务月份的结束日期,最后一个结账财务月份的起始日期
        --最后一个结账财务月份的结束日期,是否已结帐 
  Set @FMonthNo=''
  Set @LMonthNo='' 
  Set @NMonthNo=''
  
  Declare @StartMonthNo varchar(10),@AccountOver varchar(20),@NotAuditBillNo varchar(30)
  
  select @StartMonthNo=isnull(StockStartMon,'') from SysParamTB
  if @StartMonthNo=''
  begin
    select '公司设置中没有指定应付启用月份!' as ReturStr
    return
  end
  declare GetMonthNo_c scroll cursor for select MonthNo,BeginDate,EndDate,bStockAccount from vwStockAccount
  open GetmonthNo_c
  fetch next from GetmonthNo_c into @TempMonthNo, @TempSMonth, @TempEMonth,@bAccount
  while @@fetch_status = 0
  begin
	if  @bAccount=0
	begin
		set @FMonthNo = @TempMonthNo
		set @FSMonth = @TempSMonth
		set @FEMonth = @TempEMonth
		fetch RELATIVE 1 from GetmonthNo_c into @TempMonthNo, @TempSMonth, @TempEMonth,@bAccount  --则返回从当前行开始向后的第 1 行，并将返回行变成新的当前行
		if @@fetch_status = 0 
		begin
			set @NMonthNo = @TempMonthNo
		end
		fetch RELATIVE -2 from GetmonthNo_c into @TempMonthNo, @TempSMonth, @TempEMonth,@bAccount --则返回从当前行开始向前的第 2 行，并将返回行变成新的当前行
		if @@fetch_status = 0 
		begin
			set @LMonthNo = @TempMonthNo
			set @LSMonth = @TempSMonth
			set @LEMonth = @TempEMonth	
		end
		break
	end 
	fetch next from GetmonthNo_c into @TempMonthNo, @TempSMonth, @TempEMonth,@bAccount
  end  
  close GetmonthNo_c
  deallocate GetmonthNo_c
  
  

  --反月结 如果一个月都没月结
  if @AccountFlag =2 and @LMonthNo = ''
  begin
      select '没有结账的会计月,不能反月结!' as ReturStr
      return 
  end

  --月结
  if @AccountFlag = 1
  begin
    begin tran 
   
	--检验期初库存是否记帐
	select @AccountOver =AccountFlag from StockAccountTB where AccountNO= @StartMonthNo
	if @AccountOver = '未记账'
	begin
	  rollback tran
	  select '期初登记未记账,不能月结!' as ReturStr
	  return
	end


    select @NotAuditBillNo=InvoiceNo from StockInvoiceHDTB where ISNULL(bMaxAudit,0)=0 and dbo.fnGetMonth(InvoiceDate)=@FMonthNo
	if @NotAuditBillNo<>''
	begin
	  rollback tran
	  select '月结月份有记账单未审核完毕!' as ReturStr
	  return
	end
	 
    select @NotAuditBillNo=PayNo from StockPayHDTB where ISNULL(bMaxAudit,0)=0 and dbo.fnGetMonth(PayDate)=@FMonthNo
	if @NotAuditBillNo<>''
	begin
	  rollback tran
	  select '月结月份有结算单未审核完毕!' as ReturStr
	  return
	end
 
	
	--①插入客户信息
	insert into StockAccountTB (AccountNo,PrvId,StockM,BackM,DebitM,CreditM,AccountFlag)
	select Distinct @FMonthNo,a.PrvId,StockM=0,BackM=0,DebitM=0,CreditM=0,AccountFlag='月结' 
	from ( select Distinct a.PrvId from  StockInvoiceHDTB a where IsNull(a.bMaxAudit,0)=1 and dbo.fnGetMonth(a.InvoiceDate)=@FMonthNo
	       Union all
	       select Distinct a.PrvId from  StockPayHDTB a where IsNull(a.bMaxAudit,0)=1 and dbo.fnGetMonth(a.PayDate)=@FMonthNo
	       )a
    where not Exists (select m.PrvId from StockAccountTB m where m.AccountNo=@FMonthNo and a.PrvId=m.PrvId)

    --②更新记账信息
    Update StockAccountTB Set StockM=n.StockM,BackM=n.BackM 
    from (select PrvId,StockM=Sum(StockM),BackM=Sum(BackM) from 
         (select a.PrvId,StockM=SUM(Case a.SignFlag when 1 then ISNULL(b.AllMoney,0) else 0 end),BackM=SUM(Case a.SignFlag when -1 then ISNULL(b.AllMoney,0) else 0 end)
          from StockInvoiceHDTB a left join StockInvoiceDTTB b on a.InvoiceNo=b.InvoiceNO 
          where IsNull(a.bMaxAudit,0)=1 and dbo.fnGetMonth(a.InvoiceDate)=@FMonthNo
          group by a.PrvId,a.SignFlag)m  group by m.PrvId)n
    where StockAccountTB.PrvId=n.PrvId
          
    --③更新结算信息
    Update StockAccountTB Set DebitM=n.DebitM,CreditM=n.CreditM 
    from (select PrvId,DebitM=Sum(DebitM),CreditM=Sum(CreditM) from 
         (select a.PrvId,DebitM=SUM(Case a.SignFlag when 1 then ISNULL(a.PayMoney,0) else 0 end),CreditM=SUM(Case a.SignFlag when -1 then ISNULL(a.PayMoney,0) else 0 end)
          from StockPayHDTB a left join StockPayDTTB b on a.PayNo=b.PayNo 
          where IsNull(a.bMaxAudit,0)=1 and dbo.fnGetMonth(a.PayDate)=@FMonthNo
          group by a.PrvId,a.SignFlag)m  group by m.PrvId)n
    where StockAccountTB.PrvId=n.PrvId    
	    

    --④更新结存金额
    Update StockAccountTB set LastM=Isnull(FirstM,0)+Isnull(StockM,0)-Isnull(BackM,0)-ISNULL(DebitM,0)+ISNULL(CreditM,0)
    where AccountNo=@FMonthNo 
    
    --⑤将本月的期末记入下月的期初
    InSert Into StockAccountTB (AccountNo,AccountFlag,PrvId,FirstM) 
    select @NMonthNo,'月结',PrvId,LastM 
    from StockAccountTB where AccountNo=@FMonthNo
    
    --⑤更新当前财务月份月结标志
	update FinanceDateTB set bStockAccount=1 where MonthNo = @FMonthNo
	
  
    commit tran
    select '月结成功!' as ReturStr
  end
  --反月结
  if @AccountFlag =2
  begin 
	begin tran
	delete StockAccountTB where AccountNo = @FMonthNo
    
    --如果是期初，则删除非期初登记数据
    if @LMonthNo=@StartMonthNo 
    delete StockAccountTB where AccountNo = @LMonthNo and AccountFlag='月结'
	
	--更新上个财务月份的金额
	update StockAccountTB set StockM= null, BackM=null,DebitM = null, CreditM = null, LastM = null where AccountNo = @LMonthNo

    --更新当前财务月份 
	update FinanceDateTB set bStockAccount=0 where MonthNo = @LMonthNO 

	commit tran
    select '反月结成功!' as ReturStr	
  end
end
--exec prStockAccount 1 
go



--应收帐龄表
if exists(Select name from SysObjects where Name='PrSaleAccountAgeQ' and Type='P' )
   Drop procedure dbo.PrSaleAccountAgeQ
go
Create Procedure dbo.PrSaleAccountAgeQ @sWhere VarChar(2000),@iKind Smallint
as
begin
    Create Table #AcountAgeTB (CustId varchar(100),CustName varchar(200),InvoiceNo varchar(50),InvoiceDate DateTime, InvoiceMoney  Numeric(19,6), PayMoney  Numeric(19,6), NoPayMoney Numeric(19,6),DayNum int, AgeKind varchar(100))
    
    InSert into #AcountAgeTB (CustId,CustName,InvoiceNo,InvoiceDate, InvoiceMoney,PayMoney,NoPayMoney,DayNum,AgeKind)
    Exec('select a.CustId,c.CustName,a.InvoiceNo,a.InvoiceDate,InvoiceMoney=Isnull(a.InvoiceMoney,0),PayMoney=Isnull(b.PayMoney,0),NoPayMoney=Isnull(a.InvoiceMoney,0)-Isnull(b.PayMoney,0),DayNum=DateDiff(Day,a.InvoiceDate,GetDate()),
           AgeKind=case when DateDiff(Day,a.InvoiceDate,GetDate())<=30  then ''小于30天''
           when DateDiff(Day,a.InvoiceDate,GetDate())>30 and DateDiff(Day,a.InvoiceDate,GetDate())<=60  then ''30-60天'' 
           when DateDiff(Day,a.InvoiceDate,GetDate())>60 and DateDiff(Day,a.InvoiceDate,GetDate())<=120  then ''60-120天''
           when DateDiff(Day,a.InvoiceDate,GetDate())>120 and DateDiff(Day,a.InvoiceDate,GetDate())<=180  then ''121-180天'' when DateDiff(Day,a.InvoiceDate,GetDate())>180 and DateDiff(Day,a.InvoiceDate,GetDate())<=240  then ''181-240天''  
           when DateDiff(Day,a.InvoiceDate,GetDate())>240 and DateDiff(Day,a.InvoiceDate,GetDate())<=300  then ''241-300天'' when DateDiff(Day,a.InvoiceDate,GetDate())>301 and DateDiff(Day,a.InvoiceDate,GetDate())<=360  then ''301-360天''
           when DateDiff(Day,a.InvoiceDate,GetDate())>360  then ''大于360天'' end  
    from (Select a.CustId,a.InvoiceNo,a.InvoiceDate,InvoiceMoney=Sum(Isnull(b.AllMoney,0)) from SaleInvoiceHDTB a inner join SaleInvoiceDTTB b on a.InvoiceNo=b.InvoiceNo 
          where Isnull(a.bMaxAudit,0)=1 group by a.CustId,a.InvoiceNo,a.InvoiceDate)a
    left join(select b.InvoiceNo,PayMoney=Sum(Isnull(b.NowPayMoney,0)) from SalePayHDTB a inner join SalePayDTTB b on a.PayNo=b.PayNo 
              where Isnull(a.bMaxAudit,0)=1 and b.InvoiceNo is not null group by b.InvoiceNo)b on a.InvoiceNo=b.InvoiceNO
    left join CustTB c on a.CustId=c.CustId        
    where Isnull(a.InvoiceMoney,0)>=Isnull(b.PayMoney,0)'+@sWhere)
   
   if @iKind=1   --明细
   begin 
     select * from #AcountAgeTB  order by CustId,InvoiceDate
   end
   if @iKind=2   --图表
   begin 
      select CustId,CustName,AgeKind,NoPayMoney=SUM(ISNULL(NoPayMoney,0)) from   #AcountAgeTB
      group by CustId,CustName,AgeKind
   end
   if @iKind=3   --汇总
   begin 
      select CustId,CustName,NoPayMoney=SUM(ISNULL(NoPayMoney,0)) from   #AcountAgeTB
      group by CustId,CustName
      order by SUM(ISNULL(NoPayMoney,0)) Desc 
   end
end
--exec PrSaleAccountAgeQ '',1
go

if Exists (select Name from Sysobjects Where Name='PrStockInvoiceStockInRf' and type='P')
  Drop Procedure PrStockInvoiceStockInRf
go
Create Procedure PrStockInvoiceStockInRf @sWhere Varchar(2000)
As  --未应付记账采购入库查询
begin
  exec('select b.bSelect,a.BillNO,a.BillDate,a.ObjectID,d.ObjectName,a.SignFlag,
		b.ItemId,c.ItemCode,c.ItemPYCode,c.ItemName,c.ItemSpc,
		b.ProType,b.Color,NoRfNum=IsNull(b.MainNum,0)-IsNull(m.InvoiceNum,0),
		NoAllMoney=IsNull(b.AllMoney,0)-IsNull(m.AllMoney,0),
		b.MainNum,b.MainPrice,b.TaxPrice,b.TaxRate,b.AllMoney,a.Remark,b.AutoID,b.AutoNo
		from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO
		left join ItemTB c on b.ItemId=c.ItemId
		left join vwObject d on a.ObjectID=d.ObjectID
		left join (select InvoiceNum=SUM(ISNULL(b.InvoiceNum,0)),AllMoney=SUM(ISNULL(b.AllMoney,0)),b.IoNo,b.IoId from SaleInvoiceHDTB a left join SaleInvoiceDTTB b on a.InvoiceNo=b.InvoiceNo
		where b.IoId is not null group by b.IoNo,b.IoId)m on b.BillNO=m.IoNo and b.AutoNo=m.IoId
		where a.WKindID=''StockIn'' and IsNull(a.bMaxAudit,0)=1 and ISNULL(a.bCashDeal,0)=0 and IsNull(b.MainNum,0)>IsNull(m.InvoiceNum,0) '+@sWhere)
end
--exec PrStockInvoiceStockInRf ''
go

if Exists (select Name from Sysobjects Where Name='PrSaleInvoiceSaleOutRf' and type='P')
  Drop Procedure PrSaleInvoiceSaleOutRf
go
Create Procedure PrSaleInvoiceSaleOutRf @sWhere Varchar(2000)
As  --未应收记账销售出库查询
begin
  exec('select b.bSelect,a.BillNO,a.BillDate,a.ObjectId,d.ObjectName,a.SignFlag,
		b.ItemId,c.ItemCode,c.ItemPYCode,c.ItemName,c.ItemSpc,
		b.ProType,b.Color,NoRfNum=IsNull(b.MainNum,0)-IsNull(m.InvoiceNum,0),
		NoAllMoney=IsNull(b.AllMoney,0)-IsNull(m.AllMoney,0),
		b.MainNum,b.MainPrice,b.TaxPrice,b.TaxRate,b.AllMoney,a.Remark,b.AutoID,b.AutoNo
		from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO
		left join ItemTB c on b.ItemId=c.ItemId
		left join vwObject d on a.ObjectID=d.ObjectID
		left join (select InvoiceNum=SUM(ISNULL(b.InvoiceNum,0)),AllMoney=SUM(ISNULL(b.AllMoney,0)),b.IoNo,b.IoId from SaleInvoiceHDTB a left join SaleInvoiceDTTB b on a.InvoiceNo=b.InvoiceNo
		where b.IoId is not null group by b.IoNo,b.IoId)m on b.BillNO=m.IoNo and b.AutoNo=m.IoId
		where a.WKindID=''SaleOut'' and IsNull(a.bMaxAudit,0)=1 and ISNULL(a.bCashDeal,0)=0 and IsNull(b.MainNum,0)>IsNull(m.InvoiceNum,0)'+@sWhere)
end
--exec PrSaleInvoiceSaleOutRf ''
go

if Exists (select Name from Sysobjects Where Name='PrSalePaySaleInvoiceRf' and type='P')
  Drop Procedure PrSalePaySaleInvoiceRf
go
Create Procedure PrSalePaySaleInvoiceRf @sWhere Varchar(2000)
As  --未收款应收记账查询
begin
  exec('select a.bSelect,a.InvoiceNo,a.InvoiceDate,a.CustId,c.CustName,
		NoPayMoney=Sum(a.SignFlag*ISNULL(b.InvoiceMoney,0))-ISNULL(m.PayMoney,0),
		InvoiceMoney=Sum(a.SignFlag*ISNULL(b.InvoiceMoney,0)),HasPayMoney=ISNULL(m.PayMoney,0),
		PayPre=ISNULL(m.PayMoney,0)/dbo.IsZero(Sum(a.SignFlag*ISNULL(b.InvoiceMoney,0)),null)*100,
		d.EmpName,a.SourceDate
		from SaleInvoiceHDTB a left join SaleInvoiceDTTB b on a.InvoiceNo=b.InvoiceNO
		left join CustTB c on a.CustId=c.CustId
		left join EmployeeTB d on a.EmpId=d.EmpId
		left join (select InvoiceNo,PayMoney=SUM(ISNULL(NowPayMoney,0)) from SalePayDTTB group by InvoiceNo)m on a.InvoiceNo=m.InvoiceNo
		where ISNULL(a.bMaxAudit,0)=1' +@sWhere+ '
		group by a.bSelect,a.InvoiceNo,a.InvoiceDate,a.CustId,c.CustName,d.EmpName,a.SourceDate,ISNULL(m.PayMoney,0)
		Having Sum(a.SignFlag*ISNULL(b.InvoiceMoney,0))>ISNULL(m.PayMoney,0)')
end
--exec PrSalePaySaleInvoiceRf ''
go

if Exists (select Name from Sysobjects Where Name='PrProductInMatOutRf' and type='P')
  Drop Procedure PrProductInMatOutRf
go
Create Procedure PrProductInMatOutRf @sWhere Varchar(2000)
As  --未产品入库生BOM发料查询
begin
  exec('select c.bSelect,a.BillNO,a.BillDate,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,
		NoInNum=IsNull(b.MainNum,0)-IsNull(m.InNum,0),b.MainNum,a.Remark,b.AutoID,b.AutoNO
		from WareInOutHDTB a left join BomMatOutDTTB b on a.BillNO=b.BillNO
		left join ItemTB c on b.ItemId=c.ItemId
		left join (select InNum=SUM(ISNULL(b.MainNum,0)),b.MatOutNo,b.MatOutId from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO
		where a.WKindID=''ProductIn'' and b.MatOutId is not null group by b.MatOutNo,b.MatOutId)m on b.BillNo=m.MatOutNo and b.AutoNo=m.MatOutId
		where a.bMaxAudit=1 and IsNull(b.MainNum,0)>IsNull(m.InNum,0)'+@sWhere)
end
--exec PrProductInMatOutRf ''
go

if Exists(select Name from sysobjects where name='PrItemMoveQ' and type='p')
  Drop procedure dbo.PrItemMoveQ
go
Create Procedure PrItemMoveQ @sWhere Varchar(2000),@MKindId varchar(50)
As
begin
  Exec('select a.MoveNo,a.MoveDate,SendName=d.ObjectName,SendWare=f.WareName,AcceptName=e.ObjectName,AcceptWare=g.WareName,
		b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,c.ItemPic,c.ItemUnit,
		b.ProType,b.Color,j.EmpName,b.Ordinal,b.TechName,b.ObjectId,h.ObjectName,b.InObjectId,InObjectName=i.ObjectName,
		b.MoveNum,b.MovePrice,b.SpoilNum,b.WasteNum,b.ScrapNum,b.AutoNO,b.ProOrderNo,b.ProOrderId,b.DispatchNo,b.DisPatchId,b.Remark
		from ItemMoveHDTB a left join ItemMoveDTTB b on a.MoveNo=b.MoveNo
		left join ItemTB c on b.ItemId=c.ItemId
		left join vwObject d on a.SendId=d.ObjectID
		left join vwObject e on a.AcceptId=e.ObjectID
		left join WareTB f on a.OutWare=f.WareId
		left join WareTB g on a.InWare=g.WareId
		left join vwObject h on b.ObjectId=h.ObjectID
		left join vwObject i on b.InObjectId=i.ObjectID
		left join EmployeeTB j on b.EmpId=j.EmpId
		where a.MKindId='+@MKindId+' '+@sWhere+' 
		order by b.DispatchNo Desc,a.MoveDate  ')
end
--exec PrItemMoveQ '','''ShopMoveIn'''
GO

if Exists(select Name from sysobjects where name='PrProOrderQ' and type='p')
  Drop procedure dbo.PrProOrderQ
go
Create Procedure PrProOrderQ @sWhere Varchar(2000)
As
begin
    Exec('select a.ProOrderNo,a.MrpDate,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,
		b.ProType,b.Color,b.FinalNum,NoInNum=IsNull(b.FinalNum,0)-IsNull(m.InNum,0),ProductIn=IsNull(m.InNum,0),b.Remark,
		b.AutoID,b.AutoNO,b.SaleOrderNo,b.SaleOrderId,b.CompactNO,
		bComplete=Case when IsNull(m.InNum,0)>=IsNull(b.FinalNum,0)  then Convert(bit,1) else Convert(bit,0) end
		from ProOrderHDTB a left join ProOrderDTTB b on a.ProOrderNo=b.ProOrderNo
		left join ItemTB c on b.ItemId=c.ItemId
		left join (select InNum=SUM(ISNULL(b.MainNum,0)),b.ProOrderNo,b.ProOrderId from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO
		where a.WKindID=''ProductIn'' and b.ProOrderId is not null group by b.ProOrderNo,b.ProOrderId)m on b.ProOrderNo=m.ProOrderNo and b.AutoNo=m.ProOrderId
		where 1=1 '+@sWhere+' order by a.MrpDate Desc ')
end
--exec PrProOrderQ ''

GO

if Exists (select Name from Sysobjects Where Name='PrGetEmpWorkRecord' and type='P')
  Drop Procedure PrGetEmpWorkRecord
go
Create Procedure PrGetEmpWorkRecord @BillNO varchar(20)
As  --提取员工生产记录
begin

  SET NOCOUNT ON
  DECLARE @IntErrCode int, @dtS DateTime,@dtE DateTime
  
  select @dtS=StartDate,@dtE=EndDate from EmpWorkRecordHDTB where BillNo=@BillNO

  Create Table #EmpWorkTB(SourceNo varchar(50),SourceBillDate DateTime,SourceAutoNo varchar(50),CompactNo varchar(100),ItemId varchar(100),
       EmpId varchar(30),MainNum Numeric(19,6),Remark varchar(1000))


  select @IntErrCode=@@error
  
  BEGIN TRANSACTION       
  if @IntErrCode=0
  begin        
	  --插入成品入库员工记录
	  InSert into #EmpWorkTB(SourceNo,SourceBillDate,SourceAutoNo,CompactNo,ItemId,EmpId,MainNum,Remark) 
	  exec('select a.BillNo,a.BillDate,c.AutoNo,b.CompactNo,b.ItemId,c.EmpId,c.MainNum,c.Remark
		   from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO
		   left join WorkEmpTB c on b.AutoNo=c.DetAutoNo 
		   left join ItemTB d on b.ItemId=d.ItemId
		   left join EmployeeTB e on c.EmpId=e.EmpId
		   where not Exists (select AutoNo from  EmpWorkRecordDTTB where EmpWorkRecordDTTB.SourceAutoNo=c.AutoNo)
		   and a.WKindID=''ProductIn'' and ISNULL(c.EmpId,'''')<>'''' and a.BillDate>='''+@dtS+''' and a.BillDate<'''+@dtE+''' ')
	  
	 
	  --插入车间领料员工记录
	  InSert into #EmpWorkTB(SourceNo,SourceBillDate,SourceAutoNo,CompactNo,ItemId,EmpId,MainNum,Remark) 
	  exec('select a.MoveNo,a.MoveDate,c.AutoNo,b.CompactNo,b.ItemId,c.EmpId,c.MainNum,c.Remark
		   from ItemMoveHDTB a left join ItemMoveDTTB b on a.MoveNo=b.MoveNo
		   left join WorkEmpTB c on b.AutoNo=c.DetAutoNo 
		   left join ItemTB d on b.ItemId=d.ItemId
		   left join EmployeeTB e on c.EmpId=e.EmpId
		   where not Exists (select AutoNo from  EmpWorkRecordDTTB where EmpWorkRecordDTTB.SourceAutoNo=c.AutoNo) 
		   and a.MKindID=''ShopMove'' and ISNULL(c.EmpId,'''')<>''''  and a.MoveDate>='''+@dtS+''' and a.MoveDate<'''+@dtE+''' ') 
      
      select @IntErrCode=@@Error

  end  	
  if @IntErrCode=0
  begin
      --select * from EmpWorkRecordDTTB 
      
      Insert into EmpWorkRecordDTTB(AutoNo,BillNo,BillDate,SourceNo,SourceAutoNo,CompactNo,
                  ItemId,ItemCode,ItemPYCode,ItemName,ItemSpc,ItemPic,ItemUnit,iFlag,ExchRate,
                  EmpId ,EmpCode,EmpName,MainNum,Remark)
      select dbo.fnGetAutoNo('EmpWorkRecordHDTB',GETDATE()),@BillNO,a.SourceBillDate,a.SourceNo,a.SourceAutoNo,a.CompactNO,
             a.ItemId,b.ItemCode,b.ItemPYCode,b.ItemName,b.ItemSpc,b.ItemPic,b.ItemUnit,b.iFlag,b.ExchRate,
             a.EmpId,c.EmpCode,c.EmpName,a.MainNum,a.Remark
      from #EmpWorkTB a left join ItemTB b with (NoLock) on a.ItemId=b.ItemId   
      left join EmployeeTB c on a.EmpId=c.EmpId                
      Order by a.ItemId 
       
      COMMIT TRANSACTION  
  end
  else
  begin
	 ROLLBACK TRANSACTION 
	 RAISERROR('提取员工记录错误',16,1)
	 return 
  end	
	
  select * from #EmpWorkTB 	
end
--exec PrGetEmpWorkRecord 'SCJL20140001'
go

if Exists(select Name from sysobjects where name='PrEmpWorkRecordQ' and type='p')
  Drop procedure dbo.PrEmpWorkRecordQ
go
Create Procedure PrEmpWorkRecordQ @sWhere Varchar(8000)
As
begin
    exec('select a.BillNo,b.BillDate,b.ItemId,b.ItemCode,b.ItemName,b.ItemSpc,
		b.CompactNo,e.DeptName,b.EmpId,b.EmpCode,b.EmpName,MainNum=IsNull(b.MainNum,0),b.Remark
		from EmpWorkRecordHDTB a left join EmpWorkRecordDTTB b on a.BillNo=b.BillNo
		left join ItemTB c on b.ItemId=c.ItemId
		left join EmployeeTB d on b.EmpId=d.EmpId
		left join DeptTB e on d.DeptID=e.DeptId
		where 1=1 '+@sWhere+' order by b.BillDate Desc' )
end
--exec PrEmpWorkRecordQ ''

GO

--BOM分析
if Exists (select Name from Sysobjects Where Name='PrOrderBomItemQ' and type='P')
  Drop Procedure PrOrderBomItemQ
go
Create Procedure PrOrderBomItemQ @sWhere Varchar(2000)
As
begin
  exec('Select d.CustName,z.CompactNo,z.SaleOrderNo,b.BillNo,i.ItemID,i.ItemCode,i.ItemName,i.ItemSpc,a.AutoNo,a.OrderNum
		from SaleOrderHDTB z left join SaleOrderDTTB a on z.SaleOrderNo=a.SaleOrderNo
		left join ItemBomHDTB b on a.ItemID=b.ItemID
		left join CustTB d on z.CustId=d.CustId
		left join  ItemTB i on b.ItemID=i.ItemId
		where b.ItemId is not null '+@sWhere+'')

end
--exec PrOrderBomItemQ ''
go

if Exists (select Name from Sysobjects Where Name='PrOrderBomChildQ' and type='P')
  Drop Procedure PrOrderBomChildQ
go
Create Procedure PrOrderBomChildQ @sWhere Varchar(2000)
As
begin
  exec('Select d.CustName,z.CompactNo,z.SaleOrderNo,b.BillNo,c.ChildId,ChildCode=i.ItemCode,ChildName=i.ItemName,ChildSpc=i.ItemSpc,
		a.OrderNum,c.Dosage,c.WasteRate,UseNum=IsNull(a.OrderNum,0)*ISNULL(c.Dosage,0)*(1+IsNull(c.WasteRate/100,0)),
		a.ItemID,j.ItemCode,j.ItemName,j.ItemSpc,a.AutoNo,c.AutoID 
		from SaleOrderHDTB z left join SaleOrderDTTB a on z.SaleOrderNo=a.SaleOrderNo
		left join ItemBomHDTB b on a.ItemID=b.ItemID
		left join ItemBomDTTB c on b.BillNo=c.BillNo
		left join CustTB d on z.CustId=d.CustId
		left join ItemTB i on c.ChildId=i.ItemID
		left join ItemTB j on c.ItemId=j.ItemId
		where b.ItemId is not null  '+@sWhere+'
        order by d.CustName,z.CompactNo,z.SaleOrderNo,a.ItemID,c.ChildId ')

end
--exec PrOrderBomChildQ ''
go


if Exists(select Name from sysobjects where name='PrProProcessQ' and type='p')
  Drop procedure dbo.PrProProcessQ
go
Create Procedure PrProProcessQ @sWhere Varchar(2000)
As
begin
    Exec('select a.DispatchNo,a.DispatchDate,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,
		b.ProType,b.Color,b.ObjectId,d.ObjectName,b.TechName,b.SaleOrderNo,b.CompactNo,
		b.DispatchNum,NoInNum=IsNull(b.DispatchNum,0)-IsNull(m.InNum,0),ProductIn=IsNull(m.InNum,0),b.Remark,
		b.AutoID,b.AutoNO,b.ProOrderNo,b.ProOrderId,g.CustCode,g.CustName,
		bComplete=Case when IsNull(m.InNum,0)>=IsNull(b.DispatchNum,0) or IsNull(b.bComplete,0)=1 or IsNull(b.bStop,0)=1 then Convert(bit,1) else Convert(bit,0) end
		from ProDispatchHDTB a left join ProDispatchDTTB b on a.DispatchNo=b.DispatchNo
		left join ItemTB c on b.ItemId=c.ItemId
		left join vwObject d on b.ObjectId=d.ObjectId
		left join SaleOrderHDTB f on b.SaleOrderNo=f.SaleOrderNo
		left join CustTB g on f.CustId=g.CustId
		left join (select InNum=SUM(ISNULL(b.MainNum,0)),b.DispatchNo,b.DispatchId from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO
		where a.WKindID in(''ProductIn'',''ItemMoveIn'') and b.DispatchId is not null group by b.DispatchNo,b.DispatchId)m on b.DispatchNo=m.DispatchNo and b.AutoNo=m.DispatchId
		where 1=1 '+@sWhere+' order by a.DispatchDate Desc ')
end
--exec PrProProcessQ ''

GO

if Exists(select Name from sysobjects where name='PrProProcessMatQ' and type='p')
  Drop procedure dbo.PrProProcessMatQ
go
Create Procedure PrProProcessMatQ @sWhere Varchar(2000)
As
begin
    Exec('select a.BillNo,a.BillDate,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,b.MainNum,b.DispatchNo,b.DispatchId,m.DetAutoNo
		 from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO
		 left join ItemTB c on b.ItemId=c.ItemId
		 left join ProDispatchMatTB m on b.DispatchId=m.AutoNo
		 where a.WKindID=''MatOut'' and ISNULL(a.bMaxAudit,0)=1 '+@sWhere+'
		 order by a.BillDate')
end
--exec PrProProcessMatQ ''

GO

if Exists(select Name from sysobjects where name='PrProProcessInQ' and type='p')
  Drop procedure dbo.PrProProcessInQ
go
Create Procedure PrProProcessInQ @sWhere Varchar(2000)
As
begin
    Exec('select a.BillNo,a.BillDate,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,b.MainNum,b.DispatchNo,b.DispatchId
		 from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO
		 left join ItemTB c on b.ItemId=c.ItemId
		 where a.WKindID=''ProductIn'' and ISNULL(a.bMaxAudit,0)=1 '+@sWhere+'
		 order by a.BillDate')
end
--exec PrProProcessInQ ''

GO

if Exists(select Name from sysobjects where name='PrProProcessTechQ' and type='p')
  Drop procedure dbo.PrProProcessTechQ
go
Create Procedure PrProProcessTechQ @sWhere Varchar(2000)
As
begin
    Exec('select a.MoveNo,a.MoveDate,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,
         b.Ordinal,b.TechName,b.MoveNum,b.SpoilNum,b.WasteNum,b.DispatchNo,b.DispatchId
		 from ItemMoveHDTB a left join ItemMoveDTTB b on a.MoveNo=b.MoveNo
		 left join ItemTB c on b.ItemId=c.ItemId
		 where a.MKindID in (''ShopMoveIn'',''AssistMoveIn'') and ISNULL(a.bMaxAudit,0)=1 '+@sWhere+'
		 order by a.MoveDate,b.Ordinal')
end
--exec PrProProcessTechQ ''

GO

if Exists (select Name from Sysobjects Where Name='PrProDispatchProOrderRf' and type='P')
  Drop Procedure PrProDispatchProOrderRf
go
Create Procedure PrProDispatchProOrderRf @sWhere Varchar(2000)
As  --未生产派工生产订单查询
begin
  exec('select b.bSelect,a.ProOrderNo,a.MrpDate,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,c.ExchRate,
        b.CompactNo,b.ProType,b.Color,b.Ordinal,b.TechName,b.TechParam,b.TopTech,b.NextTech,b.bFirst,b.bLast,b.DeptId,b.DeptName,
		b.Remark,b.AutoNo,
		NoDispatchNum=IsNull(b.FinalNum,0)-IsNull(m.DispatchNum,0),b.FinalNum,m.DispatchNum
		from ProOrderHDTB a left join ProOrderTechTB b on a.ProOrderNo=b.ProOrderNo
		left join ItemTB c on b.ItemId=c.ItemId
		left join (select DispatchNum=SUM(ISNULL(b.DispatchNum,0)),b.ProOrderId from ProDispatchHDTB a left join ProDispatchDTTB b on a.DispatchNo=b.DispatchNo
		where  b.ProOrderId is not null group by b.ProOrderId)m on b.AutoNo=m.ProOrderId
		where  a.bMaxAudit=1 and IsNull(bDel,0)=0 and  b.ItemParam in(''成品'',''半成品'')  and IsNull(b.FinalNum,0)>IsNull(m.DispatchNum,0)'+@sWhere+' Order by a.ProOrderNo,c.ItemId,b.ProType,b.Color,b.Ordinal')
		
end
--exec PrProDispatchProOrderRf ''
go

--应付分析
if exists (select name from sysobjects where name = 'prStockPayQ' and type = 'p')
  drop procedure dbo.prStockPayQ
go
create procedure dbo.prStockPayQ @dtS DateTime,@dtE DateTime,@sWhere varchar(2000),@iFlag Smallint 
as
begin
   Declare @StartDate DateTime,@StartMontNo varchar(30),@PrvId varchar(30),
   @AutoId int,@StockM Numeric(18,5),@BackM Numeric(18,5),@DebitM Numeric(18,5),@CreditM Numeric(18,5),@fLastM Numeric(18,5)
   
   Create Table #StockPaySumTB (PrvId varchar(20),FirstM Numeric(18,5),StockM Numeric(18,5),BackM numeric(18,5),DebitM Numeric(18,5),CreditM Numeric(18,5),FactM Numeric(18,5),LastM Numeric(18,5))
   
   Create Table #StockPayListTB (AutoId int Identity(1,1),PrvId varchar(20),BillDate DateTime,BillKind varchar(20),BillNo varchar(50),iFlag Smallint,
			    ItemId varchar(100),ProType varchar(100),Color varchar(100),
			    StockNum Numeric(18,5),BackNum Numeric(18,5),TaxPrice Numeric(18,5),StockM Numeric(18,5),BackM numeric(18,5),
			    DebitM Numeric(18,5),CreditM Numeric(18,5),FactM Numeric(18,5),LastM Numeric(18,5))
      
   
   --如果条件的开始日期在已月结的财务月份之前或者一个月份都没有月结
   select Top 1 @StartDate=BeginDate,@StartMontNo=MonthNo from vwStockAccount Order by MonthNo
   --如果条件的开始日期在已月结的财务月份之内
   select Top 1 @StartDate=BeginDate,@StartMontNo=MonthNo from vwStockAccount where IsNull(bStockAccount,0)=1 and BeginDate<=@dtS and EndDate>=@dtS Order by MonthNo Desc   
   --如果条件的开始日期在所有月结的财务月份之后
   select Top 1 @StartDate=BeginDate,@StartMontNo=MonthNo from vwStockAccount where IsNull(bStockAccount,0)=0 and BeginDate<=@dtS Order by MonthNo

   if @StartMontNo=''
   begin
     select '请先设置财务月份和应付启用月份!' as ReturStr
     return
   end
   
   --创建临时表插入期初的数据
   Create Table #FirstTempTB (PrvId varchar(20),FirstM Numeric(18,5))
  
   --插入期初 已月结期初
   InSert into #FirstTempTB(PrvId,FirstM)
   exec('select a.PrvId,FirstM
         from StockAccountTB a where AccountNo='''+@StartMontNo+''' '+@sWhere+' and a.PrvId is not null')
   
   --插入期初 发货/退货金额
   InSert InTo #FirstTempTB(PrvId,FirstM)
   exec('select a.PrvId,StockM=Sum(a.SignFlag*ISNULL(b.AllMoney,0))
         from StockInvoiceHDTB a left join StockInvoiceDTTB b on a.InvoiceNo=b.InvoiceNO
         where IsNull(a.bMaxAudit,0)=1 and a.InvoiceDate>='''+@StartDate+''' and a.InvoiceDate<'''+@dtS+''' '+@sWhere+' group by a.PrvId')
   
    --插入期初 收款/退款金额
   InSert InTo #FirstTempTB(PrvId,FirstM)
   exec('select a.PrvId,StockM=-Sum(a.SignFlag*ISNULL(a.PayMoney,0))
         from StockPayHDTB a where IsNull(a.bMaxAudit,0)=1 and a.PayDate>='''+@StartDate+''' and a.PayDate<'''+@dtS+''' '+@sWhere+'  group by a.PrvId')
   
    
   
   --明细报表
   --①插入客户信息
   InSert into #StockPayListTB(PrvId,BillDate,BillKind,BillNo,iFlag,ItemId,ProType,Color,StockNum,BackNum,TaxPrice,StockM,BackM,DebitM,CreditM,FactM,LastM)
   exec(' select a.PrvId,BillDate=null,BillKind=''期初'',BillNo=null,iFlag=0,ItemId=null,ProType=null,Color=null,
	      StockNum=null,BackNum=null,TaxPrice=null,StockM=null,BackM=null,DebitM=null,CreditM=null,FactM=null,LastM=null 
	      from ProviderTB a where 1=1 '+@sWhere+' group by a.PrvId ')
  
   Update #StockPayListTB Set LastM=m.FirstM from (Select PrvId,FirstM=SUM(IsNull(FirstM,0)) from #FirstTempTB group by PrvId) m where #StockPayListTB.PrvId=m.PrvId
   
   --②插入本期 收货/退货明细
   InSert into #StockPayListTB(PrvId,BillDate,BillKind,BillNo,iFlag,ItemId,ProType,Color,StockNum,BackNum,TaxPrice,StockM,BackM,DebitM,CreditM,FactM,LastM)
   exec (' select PrvId=a.PrvId,BillDate=a.InvoiceDate,BillKind=Case a.SignFlag when 1 then ''应付发票(蓝字)'' when -1 then ''应付发票(红字)'' end,
		   BillNo=a.InvoiceNo,iFlag=1,ItemId=b.ItemId,ProType=b.ProType,Color=b.Color,
		   StockNum=Case a.SignFlag when 1 then Sum(ISNULL(b.InvoiceNum,0)) else 0 end,BackNum=Case a.SignFlag when -1 then Sum(ISNULL(b.InvoiceNum,0)) else 0 end,
		   TaxPrice=ISNULL(b.TaxPrice,0),StockM=Case a.SignFlag when 1 then Sum(ISNULL(b.AllMoney,0)) else 0 end,BackM=Case a.SignFlag when -1 then Sum(ISNULL(b.AllMoney,0)) else 0 end,
		   DebitM=0,CreditM=0,FactM=0,LastM=SUM(ISNULL(a.SignFlag,1)*IsNull(b.AllMoney,0)) 
		   from StockInvoiceHDTB a left join StockInvoiceDTTB b on a.InvoiceNo=b.InvoiceNO
		   where ISNULL(a.bMaxAudit,0)=1 and a.InvoiceDate>='''+@dtS+''' and a.InvoiceDate<='''+@dtE+'''  '+@sWhere+'
		   group by a.PrvId,a.InvoiceDate,a.SignFlag,a.InvoiceNo,b.ItemID,b.ProType,b.Color,b.TaxPrice ')
   
   --③插入本期 付款/退款明细
   InSert into #StockPayListTB(PrvId,BillDate,BillKind,BillNo,iFlag,ItemId,ProType,Color,StockNum,BackNum,TaxPrice,StockM,BackM,DebitM,CreditM,FactM,LastM)
   exec (' select PrvId=a.PrvId,BillDate=a.PayDate,BillKind=Case  a.BillKind when ''收货付款'' then Case a.SignFlag when 1 then ''收货付款'' else ''退货退款'' end else a.BillKind end,
		   BillNo=a.PayNO,iFlag=2,ItemId=null,ProType=null,Color=null,StockNum=null,BackNum=null,TaxPrice=null,StockM=null,BackM=null,
		   DebitM=Case a.SignFlag when 1 then SUM(IsNull(a.PayMoney,0)) else 0 end,CreditM=Case a.SignFlag when -1 then SUM(IsNull(a.PayMoney,0)) else 0 end,FactM=SUM(IsNull(a.FactMoney,0)),
		   LastM=SUM(ISNULL(a.SignFlag,1)*IsNull(a.PayMoney,0))
		   from StockPayHDTB a 
		   where ISNULL(a.bMaxAudit,0)=1 and a.PayDate>='''+@dtS+''' and a.PayDate<='''+@dtE+'''  '+@sWhere+'
		   group by a.PrvId,a.PayDate,a.SignFlag,a.PayNO,a.BillKind ')
   
   --通过游标计算每笔记录后的余额
   declare crCustListM Cursor for select distinct PrvId from #StockPayListTB where Isnull(PrvId,'')<>''
   open crCustListM
   Fetch Next from crCustListM into @PrvId
   while (@@Fetch_Status=0)
   begin
      Set @fLastM=0
      select @fLastM=IsNull(LastM,0) from #StockPayListTB where PrvId=@PrvId and iFlag=0
     
        declare crUpdateLastM Cursor for select AutoId,StockM=IsNull(StockM,0),BackM=IsNull(BackM,0),DebitM=IsNull(DebitM,0),CreditM=IsNull(CreditM,0) from #StockPayListTB where PrvId=@PrvId and BillDate<>'' and iFlag>0 order by BillDate,AutoId
		open crUpdateLastM
		Fetch Next from crUpdateLastM into @AutoId,@StockM,@BackM,@DebitM,@CreditM
		while (@@Fetch_Status=0)
		begin
			update #StockPayListTB set LastM=@fLastM+@StockM-@BackM+@CreditM-@DebitM where AutoId=@AutoId    
			set @fLastM=@fLastM+@StockM+@CreditM-@BackM-@DebitM
			Fetch Next from crUpdateLastM into @AutoId,@StockM,@BackM,@DebitM,@CreditM
		end
		Close crUpdateLastM
		Deallocate crUpdateLastM
            
	  Fetch Next from crCustListM into @PrvId
   end
   Close crCustListM
   Deallocate crCustListM
   
   
   --汇总报表 
   --①从临时表插入总期初金额
   InSert into #StockPaySumTB(PrvId,FirstM)
   exec('select PrvId,FirstM=0 from ProviderTB a where 1=1 '+@sWhere+'')
   
   Update #StockPaySumTB Set FirstM=m.FirstM from (Select PrvId,FirstM=SUM(IsNull(FirstM,0)) from #FirstTempTB group by PrvId) m where #StockPaySumTB.PrvId=m.PrvId
   
  --②插入本期收货/退货金额 
   InSert Into #StockPaySumTB(PrvId,StockM,BackM)
   exec('select a.PrvId,StockM=SUM(Case a.SignFlag when 1 then IsNull(b.AllMoney,0) else 0 end),BackM=SUM(Case a.SignFlag when -1 then IsNull(b.AllMoney,0) else 0 end)
	    from StockInvoiceHDTB a left join StockInvoiceDTTB b on a.InvoiceNo=b.InvoiceNO
	    where ISNULL(a.bMaxAudit,0)=1 and a.InvoiceDate>='''+@dtS+''' and a.InvoiceDate<='''+@dtE+''' '+@sWhere+' group by a.PrvId ')
      
   
  --③插入本期付款/退款金额 
   InSert Into #StockPaySumTB(PrvId,DebitM,CreditM,FactM)
   exec('select a.PrvId,StockM=SUM(Case a.SignFlag when 1 then IsNull(a.PayMoney,0) else 0 end),BackM=SUM(Case a.SignFlag when -1 then IsNull(a.PayMoney,0) else 0 end),FactM=SUM(IsNull(a.FactMoney,0))
		 from StockPayHDTB a 
		 where ISNULL(a.bMaxAudit,0)=1 and a.PayDate>='''+@dtS+''' and a.PayDate<='''+@dtE+''' '+@sWhere+'  group by a.PrvId ')

  if @iFlag=0 or @iFlag=2  --明细
  begin    
	  select a.PrvId,b.PrvName,a.BillDate,a.BillKind,a.BillNo,a.ItemId,c.ItemCode,c.ItemName,a.ProType,a.Color,
	  a.StockNum,a.BackNum,a.TaxPrice,a.StockM,a.BackM,a.DebitM,a.CreditM,a.FactM,a.LastM  
	  from #StockPayListTB a left join ProviderTB b on a.PrvId=b.PrvId 
	  left join ItemTB c on a.ItemId=c.ItemId 
	  where a.LastM is not null
	  order by a.PrvId,BillDate,a.AutoId   
  end
   
  if @iFlag=1 or @iFlag=2  --明细
  begin    
	  select a.PrvId,b.PrvName,FirstM=SUM(ISNULL(a.FirstM,0)),StockM=SUM(ISNULL(a.StockM,0)),BackM=SUM(ISNULL(a.BackM,0)),AllInvocieM=SUM(ISNULL(a.StockM,0))-SUM(ISNULL(a.BackM,0)),
	  DebitM=SUM(ISNULL(a.DebitM,0)),CreditM=SUM(ISNULL(a.CreditM,0)),AllPayM=SUM(ISNULL(a.DebitM,0))-SUM(ISNULL(a.CreditM,0)),
	  PayPer=(SUM(ISNULL(a.DebitM,0))-SUM(ISNULL(a.CreditM,0)))/dbo.IsZero(SUM(ISNULL(a.StockM,0))-SUM(ISNULL(a.BackM,0)),Null)*100,FactM=SUM(ISNULL(a.FactM,0)),
	  LastM=SUM(ISNULL(a.FirstM,0))+SUM(ISNULL(a.StockM,0))-SUM(ISNULL(a.BackM,0))-SUM(ISNULL(a.DebitM,0))+SUM(ISNULL(a.CreditM,0))
	  from #StockPaySumTB a left join ProviderTB b on a.PrvId=b.PrvId
	  where 1=1
	  group by a.PrvId,b.PrvName 
	  Having not(SUM(ISNULL(a.FirstM,0))=0 and SUM(ISNULL(a.StockM,0))=0 and SUM(ISNULL(a.BackM,0))=0 and SUM(ISNULL(a.DebitM,0))=0 and SUM(ISNULL(a.CreditM,0))=0)
	  order by a.PrvId
  end    
end

--exec prStockPayQ '2013-01-01','2013-12-15','',2

go   

--应付帐龄表
if exists(Select name from SysObjects where Name='PrStockAccountAgeQ' and Type='P' )
   Drop procedure dbo.PrStockAccountAgeQ
go
Create Procedure dbo.PrStockAccountAgeQ @sWhere VarChar(2000),@iKind Smallint
as
begin
    Create Table #AcountAgeTB (PrvId varchar(100),PrvName varchar(200),InvoiceNo varchar(50),InvoiceDate DateTime, InvoiceMoney  Numeric(19,6), PayMoney  Numeric(19,6), NoPayMoney Numeric(19,6),DayNum int, AgeKind varchar(100))
    
    InSert into #AcountAgeTB (PrvId,PrvName,InvoiceNo,InvoiceDate, InvoiceMoney,PayMoney,NoPayMoney,DayNum,AgeKind)
    Exec('select a.PrvId,c.PrvName,a.InvoiceNo,a.InvoiceDate,InvoiceMoney=Isnull(a.InvoiceMoney,0),PayMoney=Isnull(b.PayMoney,0),NoPayMoney=Isnull(a.InvoiceMoney,0)-Isnull(b.PayMoney,0),DayNum=DateDiff(Day,a.InvoiceDate,GetDate()),
           AgeKind=case when DateDiff(Day,a.InvoiceDate,GetDate())<=30  then ''小于30天''
           when DateDiff(Day,a.InvoiceDate,GetDate())>30 and DateDiff(Day,a.InvoiceDate,GetDate())<=60  then ''30-60天'' 
           when DateDiff(Day,a.InvoiceDate,GetDate())>60 and DateDiff(Day,a.InvoiceDate,GetDate())<=120  then ''60-120天''
           when DateDiff(Day,a.InvoiceDate,GetDate())>120 and DateDiff(Day,a.InvoiceDate,GetDate())<=180  then ''121-180天'' when DateDiff(Day,a.InvoiceDate,GetDate())>180 and DateDiff(Day,a.InvoiceDate,GetDate())<=240  then ''181-240天''  
           when DateDiff(Day,a.InvoiceDate,GetDate())>240 and DateDiff(Day,a.InvoiceDate,GetDate())<=300  then ''241-300天'' when DateDiff(Day,a.InvoiceDate,GetDate())>301 and DateDiff(Day,a.InvoiceDate,GetDate())<=360  then ''301-360天''
           when DateDiff(Day,a.InvoiceDate,GetDate())>360  then ''大于360天'' end  
    from (Select a.PrvId,a.InvoiceNo,a.InvoiceDate,InvoiceMoney=Sum(Isnull(b.AllMoney,0)) from StockInvoiceHDTB a inner join StockInvoiceDTTB b on a.InvoiceNo=b.InvoiceNo 
          where Isnull(a.bMaxAudit,0)=1 group by a.PrvId,a.InvoiceNo,a.InvoiceDate)a
    left join(select b.InvoiceNo,PayMoney=Sum(Isnull(b.NowPayMoney,0)) from StockPayHDTB a inner join StockPayDTTB b on a.PayNo=b.PayNo 
              where Isnull(a.bMaxAudit,0)=1 and b.InvoiceNo is not null group by b.InvoiceNo)b on a.InvoiceNo=b.InvoiceNO
    left join ProviderTB c on a.PrvId=c.PrvId        
    where Isnull(a.InvoiceMoney,0)>Isnull(b.PayMoney,0)'+@sWhere)
   
   if @iKind=1   --明细
   begin 
     select * from #AcountAgeTB  order by PrvId,InvoiceDate
   end
   if @iKind=2   --图表
   begin 
      select PrvId,PrvName,AgeKind,NoPayMoney=SUM(ISNULL(NoPayMoney,0)) from   #AcountAgeTB
      group by PrvId,PrvName,AgeKind
   end
   if @iKind=3   --汇总
   begin 
      select PrvId,PrvName,NoPayMoney=SUM(ISNULL(NoPayMoney,0)) from   #AcountAgeTB
      group by PrvId,PrvName
      order by SUM(ISNULL(NoPayMoney,0)) Desc 
   end
end
--exec PrStockAccountAgeQ '',1
go


--应收期初记账
if Exists(select Name from sysobjects where name='prSaleFirstAccount' and type='p')
  Drop procedure dbo.prSaleFirstAccount
go
create proc dbo.prSaleFirstAccount @AccountMan varchar(20),@AccountFlag int  --1 表示记帐 0 表示反记帐

as
  SET NOCOUNT ON
  declare @IntErrCode int,@BreakPoint varchar(20),@StartMonth varchar(6)  --系统启用月份
  
  select @StartMonth=isnull(SaleStartMon,'') from SysParamTB
  if @StartMonth=''
  begin
    select '公司设置中没有指定应收启用月份!' as ReturStr
    return
  end

  BEGIN TRANSACTION 
  set @BreakPoint=1000000000
  if @AccountFlag=1       --记帐
  begin    
      update SaleAccountTB set AccountFlag='已记账' where AccountNo=@StartMonth and (isnull(AccountFlag,'')='' or isnull(AccountFlag,'')='未记账')
      select @IntErrCode=@@error
      if @IntErrCode=0
      begin
          COMMIT TRANSACTION
          select '记帐成功!' as ReturStr
      end
      else
      begin
          ROLLBACK TRANSACTION
          select '记帐失败!' as ReturStr
      end
  end 
  else  --反记帐
  begin                          
      update SaleAccountTB set AccountFlag='未记账' where AccountNo=@StartMonth and AccountFlag='已记账'        
      select @IntErrCode=@@error
      if @IntErrCode=0
      begin
          COMMIT TRANSACTION
          select '反记帐成功!' as ReturStr
      end
      else
      begin
          ROLLBACK TRANSACTION
          select '反记帐失败!' as ReturStr
      end
  end
go

--exec prSaleFirstAccount 'admin',-1


--应收月结
if exists (select name from sysobjects where name = 'prSaleAccount' and type = 'p')
  drop procedure dbo.prSaleAccount
go
create procedure dbo.prSaleAccount @AccountFlag Smallint

as
begin
  Declare @FMonthNo varchar(6),@LMonthNo varchar(6),@NMonthNo varchar(6),@FSMonth datetime,@FEMonth datetime,@LSMonth datetime,
          @LEMonth datetime,@TempMonthNo varchar(6),@TempSMonth datetime,@TempEMonth datetime,@bAccount varchar(2)
        --第一个未结账财务月份,最后一个结账财务月份,下一个会计月份,第一个未结账财务月份的起始日期,第一个未结账财务月份的结束日期,最后一个结账财务月份的起始日期
        --最后一个结账财务月份的结束日期,是否已结帐 
  Set @FMonthNo=''
  Set @LMonthNo='' 
  Set @NMonthNo=''
  
  Declare @StartMonthNo varchar(10),@AccountOver varchar(20),@NotAuditBillNo varchar(30)
  
  select @StartMonthNo=isnull(SaleStartMon,'') from SysParamTB
  if @StartMonthNo=''
  begin
    select '公司设置中没有指定应收启用月份!' as ReturStr
    return
  end
  declare GetMonthNo_c scroll cursor for select MonthNo,BeginDate,EndDate,bSaleAccount from vwSaleAccount
  open GetmonthNo_c
  fetch next from GetmonthNo_c into @TempMonthNo, @TempSMonth, @TempEMonth,@bAccount
  while @@fetch_status = 0
  begin
	if  @bAccount=0
	begin
		set @FMonthNo = @TempMonthNo
		set @FSMonth = @TempSMonth
		set @FEMonth = @TempEMonth
		fetch RELATIVE 1 from GetmonthNo_c into @TempMonthNo, @TempSMonth, @TempEMonth,@bAccount  --则返回从当前行开始向后的第 1 行，并将返回行变成新的当前行
		if @@fetch_status = 0 
		begin
			set @NMonthNo = @TempMonthNo
		end
		fetch RELATIVE -2 from GetmonthNo_c into @TempMonthNo, @TempSMonth, @TempEMonth,@bAccount --则返回从当前行开始向前的第 2 行，并将返回行变成新的当前行
		if @@fetch_status = 0 
		begin
			set @LMonthNo = @TempMonthNo
			set @LSMonth = @TempSMonth
			set @LEMonth = @TempEMonth	
		end
		break
	end 
	fetch next from GetmonthNo_c into @TempMonthNo, @TempSMonth, @TempEMonth,@bAccount
  end  
  close GetmonthNo_c
  deallocate GetmonthNo_c
  
  

  --反月结 如果一个月都没月结
  if @AccountFlag =2 and @LMonthNo = ''
  begin
      select '没有结账的会计月,不能反月结!' as ReturStr
      return 
  end

  --月结
  if @AccountFlag = 1
  begin
    begin tran 
   
	--检验期初库存是否记帐
	select @AccountOver =AccountFlag from SaleAccountTB where AccountNO= @StartMonthNo
	if @AccountOver = '未记账'
	begin
	  rollback tran
	  select '期初登记未记账,不能月结!' as ReturStr
	  return
	end


    select @NotAuditBillNo=InvoiceNo from SaleInvoiceHDTB where ISNULL(bMaxAudit,0)=0 and dbo.fnGetMonth(InvoiceDate)=@FMonthNo
	if @NotAuditBillNo<>''
	begin
	  rollback tran
	  select '月结月份有记账单未审核完毕!' as ReturStr
	  return
	end
	 
    select @NotAuditBillNo=PayNo from SalePayHDTB where ISNULL(bMaxAudit,0)=0 and dbo.fnGetMonth(PayDate)=@FMonthNo
	if @NotAuditBillNo<>''
	begin
	  rollback tran
	  select '月结月份有结算单未审核完毕!' as ReturStr
	  return
	end
    
	--①插入客户信息
	insert into SaleAccountTB (AccountNo,CustId,SaleM,BackM,DebitM,CreditM,AccountFlag)
	select Distinct @FMonthNo,a.CustId,SaleM=0,BackM=0,DebitM=0,CreditM=0,AccountFlag='月结'
	from ( select Distinct a.CustId from  SaleInvoiceHDTB a where IsNull(a.bMaxAudit,0)=1 and dbo.fnGetMonth(a.InvoiceDate)=@FMonthNo
       Union all
       select Distinct a.CustId from  SalePayHDTB a where IsNull(a.bMaxAudit,0)=1 and dbo.fnGetMonth(a.PayDate)=@FMonthNo
       )a 
    where not Exists (select m.CustId from SaleAccountTB m where m.AccountNo=@FMonthNo and a.CustId=m.CustId)

    --②更新记账信息
    Update SaleAccountTB Set SaleM=n.SaleM,BackM=n.BackM 
    from (select CustId,SaleM=Sum(SaleM),BackM=Sum(BackM) from 
         (select a.CustId,SaleM=SUM(Case a.SignFlag when 1 then ISNULL(b.AllMoney,0) else 0 end),BackM=SUM(Case a.SignFlag when -1 then ISNULL(b.AllMoney,0) else 0 end)
          from SaleInvoiceHDTB a left join SaleInvoiceDTTB b on a.InvoiceNo=b.InvoiceNO 
          where IsNull(a.bMaxAudit,0)=1 and dbo.fnGetMonth(a.InvoiceDate)=@FMonthNo
          group by a.CustId,a.SignFlag)m group by m.CustId)n 
    where SaleAccountTB.CustId=n.CustId
          
    --③更新结算信息
    Update SaleAccountTB Set DebitM=n.DebitM,CreditM=n.CreditM 
    from (select CustId,DebitM=Sum(DebitM),CreditM=Sum(CreditM)  from
         (select a.CustId,DebitM=SUM(Case a.SignFlag when 1 then ISNULL(a.PayMoney,0) else 0 end),CreditM=SUM(Case a.SignFlag when -1 then ISNULL(a.PayMoney,0) else 0 end)
          from SalePayHDTB a left join SalePayDTTB b on a.PayNo=b.PayNo 
          where IsNull(a.bMaxAudit,0)=1 and dbo.fnGetMonth(a.PayDate)=@FMonthNo
          group by a.CustId,a.SignFlag)m group by m.CustId )n 
    where SaleAccountTB.CustId=n.CustId    
	    

    --④更新结存金额
    Update SaleAccountTB set LastM=Isnull(FirstM,0)+Isnull(SaleM,0)-Isnull(BackM,0)-ISNULL(DebitM,0)+ISNULL(CreditM,0)
    where AccountNo=@FMonthNo 
    
    --⑤将本月的期末记入下月的期初
    InSert Into SaleAccountTB (AccountNo,AccountFlag,CustId,FirstM) 
    select @NMonthNo,'月结',CustId,LastM 
    from SaleAccountTB where AccountNo=@FMonthNo
    
    --⑤更新当前财务月份月结标志
	update FinanceDateTB set bSaleAccount=1 where MonthNo = @FMonthNo
	
  
    commit tran
    select '月结成功!' as ReturStr
  end
  --反月结
  if @AccountFlag =2
  begin 
	begin tran
	delete SaleAccountTB where AccountNo = @FMonthNo
    
    --如果是期初，则删除非期初登记数据
    if @LMonthNo=@StartMonthNo 
    delete SaleAccountTB where AccountNo = @LMonthNo and AccountFlag='月结'
	
	--更新上个财务月份的金额
	update SaleAccountTB set SaleM= null, BackM=null,DebitM = null, CreditM = null, LastM = null where AccountNo = @LMonthNo

    --更新当前财务月份 
	update FinanceDateTB set bSaleAccount=0 where MonthNo = @LMonthNO 

	commit tran
    select '反月结成功!' as ReturStr	
  end
end
--exec prSaleAccount 1 
go


--应收分析
if exists (select name from sysobjects where name = 'prSalePayQ' and type = 'p')
  drop procedure dbo.prSalePayQ
go
create procedure dbo.prSalePayQ @dtS DateTime,@dtE DateTime,@sWhere varchar(2000),@iFlag Smallint 
as
begin
   Declare @StartDate DateTime,@StartMontNo varchar(30),@CustId varchar(30),
   @AutoId int,@SaleM Numeric(18,5),@BackM Numeric(18,5),@DebitM Numeric(18,5),@CreditM Numeric(18,5),@fLastM Numeric(18,5)
   
   Create Table #SalePaySumTB (CustId varchar(20),FirstM Numeric(18,5),SaleM Numeric(18,5),BackM numeric(18,5),DebitM Numeric(18,5),CreditM Numeric(18,5),FactM Numeric(18,5),LastM Numeric(18,5))
   
   Create Table #SalePayListTB (AutoId int Identity(1,1),CustId varchar(20),BillDate DateTime,BillKind varchar(20),BillNo varchar(50),iFlag Smallint,
			    ItemId varchar(100),ProType varchar(100),Color varchar(100),
			    SaleNum Numeric(18,5),BackNum Numeric(18,5),TaxPrice Numeric(18,5),SaleM Numeric(18,5),BackM numeric(18,5),
			    DebitM Numeric(18,5),CreditM Numeric(18,5),FactM Numeric(18,5),LastM Numeric(18,5))
      
   
   --如果条件的开始日期在已月结的财务月份之前或者一个月份都没有月结
   select Top 1 @StartDate=BeginDate,@StartMontNo=MonthNo from vwSaleAccount Order by MonthNo
   --如果条件的开始日期在已月结的财务月份之内
   select Top 1 @StartDate=BeginDate,@StartMontNo=MonthNo from vwSaleAccount where IsNull(bSaleAccount,0)=1 and BeginDate<=@dtS and EndDate>=@dtS Order by MonthNo Desc   
   --如果条件的开始日期在所有月结的财务月份之后
   select Top 1 @StartDate=BeginDate,@StartMontNo=MonthNo from vwSaleAccount where IsNull(bSaleAccount,0)=0 and BeginDate<=@dtS Order by MonthNo

   if @StartMontNo=''
   begin
     select '请先设置财务月份和应收启用月份!' as ReturStr
     return
   end
   
   --print @StartDate
   --print @StartMontNo 
   
   
   --创建临时表插入期初的数据
   Create Table #FirstTempTB (CustId varchar(20),FirstM Numeric(18,5))
  
   --插入期初 已月结期初
   InSert into #FirstTempTB(CustId,FirstM)
   exec('select CustId,FirstM
         from SaleAccountTB a where AccountNo='''+@StartMontNo+''' '+@sWhere+' and CustId is not null')
   
   --插入期初 发货/退货金额
   InSert InTo #FirstTempTB(CustId,FirstM)
   exec('select a.CustId,SaleM=Sum(a.SignFlag*ISNULL(b.AllMoney,0))
         from SaleInvoiceHDTB a left join SaleInvoiceDTTB b on a.InvoiceNo=b.InvoiceNO
         where IsNull(a.bMaxAudit,0)=1 and a.InvoiceDate>='''+@StartDate+''' and a.InvoiceDate<'''+@dtS+''' '+@sWhere+' group by a.CustId')
   
    --插入期初 收款/退款金额
   InSert InTo #FirstTempTB(CustId,FirstM)
   exec('select a.CustId,SaleM=-Sum(a.SignFlag*ISNULL(a.PayMoney,0))
         from SalePayHDTB a where IsNull(a.bMaxAudit,0)=1 and a.PayDate>='''+@StartDate+''' and a.PayDate<'''+@dtS+''' '+@sWhere+'  group by a.CustId')
   
      
   --Select CustId,FirstM=SUM(IsNull(FirstM,0)) from #FirstTempTB group by CustId return
   
   --明细报表
   --①插入客户信息
   InSert into #SalePayListTB(CustId,BillDate,BillKind,BillNo,iFlag,ItemId,ProType,Color,SaleNum,BackNum,TaxPrice,SaleM,BackM,DebitM,CreditM,FactM,LastM)
   exec(' select CustId,BillDate=null,BillKind=''期初'',BillNo=null,iFlag=0,ItemId=null,ProType=null,Color=null,
	      SaleNum=null,BackNum=null,TaxPrice=null,SaleM=null,BackM=null,DebitM=null,CreditM=null,FactM=null,LastM=null 
	      from CustTB a where 1=1 '+@sWhere+' group by a.CustId ')
  
   Update #SalePayListTB Set LastM=m.FirstM from (Select CustId,FirstM=SUM(IsNull(FirstM,0)) from #FirstTempTB group by CustId) m where #SalePayListTB.CustId=m.CustId
   
   --②插入本期 发货/退货明细
   InSert into #SalePayListTB(CustId,BillDate,BillKind,BillNo,iFlag,ItemId,ProType,Color,SaleNum,BackNum,TaxPrice,SaleM,BackM,DebitM,CreditM,FactM,LastM)
   exec (' select CustId=a.CustId,BillDate=a.InvoiceDate,BillKind=Case a.SignFlag when 1 then ''销售发票(蓝字)'' when -1 then ''销售发票(红字)'' end,
		   BillNo=a.InvoiceNo,iFlag=1,ItemId=b.ItemId,ProType=b.ProType,Color=b.Color,
		   SaleNum=Case a.SignFlag when 1 then Sum(ISNULL(b.InvoiceNum,0)) else 0 end,BackNum=Case a.SignFlag when -1 then Sum(ISNULL(b.InvoiceNum,0)) else 0 end,
		   TaxPrice=ISNULL(b.TaxPrice,0),SaleM=Case a.SignFlag when 1 then Sum(ISNULL(b.AllMoney,0)) else 0 end,BackM=Case a.SignFlag when -1 then Sum(ISNULL(b.AllMoney,0)) else 0 end,
		   DebitM=0,CreditM=0,FactM=0,LastM=SUM(ISNULL(a.SignFlag,1)*IsNull(b.AllMoney,0)) 
		   from SaleInvoiceHDTB a left join SaleInvoiceDTTB b on a.InvoiceNo=b.InvoiceNO
		   where ISNULL(a.bMaxAudit,0)=1 and a.InvoiceDate>='''+@dtS+''' and a.InvoiceDate<='''+@dtE+'''  '+@sWhere+'
		   group by a.CustId,a.InvoiceDate,a.SignFlag,a.InvoiceNo,b.ItemID,b.ProType,b.Color,b.TaxPrice ')
   
   --③插入本期 收款/退款明细
   InSert into #SalePayListTB(CustId,BillDate,BillKind,BillNo,iFlag,ItemId,ProType,Color,SaleNum,BackNum,TaxPrice,SaleM,BackM,DebitM,CreditM,FactM,LastM)
   exec (' select CustId=a.CustId,BillDate=a.PayDate,BillKind=Case  a.BillKind when ''发货收款'' then Case a.SignFlag when 1 then ''发货收款'' else ''发货退款'' end else a.BillKind end,
		   BillNo=a.PayNO,iFlag=2,ItemId=null,ProType=null,Color=null,SaleNum=null,BackNum=null,TaxPrice=null,SaleM=null,BackM=null,
		   DebitM=Case a.SignFlag when 1 then SUM(IsNull(a.PayMoney,0)) else 0 end,CreditM=Case a.SignFlag when -1 then SUM(IsNull(a.PayMoney,0)) else 0 end,FactM=SUM(IsNull(a.FactMoney,0)),
		   LastM=SUM(ISNULL(a.SignFlag,1)*IsNull(a.PayMoney,0))
		   from SalePayHDTB a 
		   where ISNULL(a.bMaxAudit,0)=1 and a.PayDate>='''+@dtS+''' and a.PayDate<='''+@dtE+'''  '+@sWhere+'
		   group by a.CustId,a.PayDate,a.SignFlag,a.PayNO,a.BillKind ')
   
   --通过游标计算每笔记录后的余额
   declare crCustListM Cursor for select distinct CustId from #SalePayListTB where Isnull(CustId,'')<>''
   open crCustListM
   Fetch Next from crCustListM into @CustId
   while (@@Fetch_Status=0)
   begin
      Set @fLastM=0
      select @fLastM=IsNull(LastM,0) from #SalePayListTB where CustId=@CustId and iFlag=0
     
        declare crUpdateLastM Cursor for select AutoId,SaleM=IsNull(SaleM,0),BackM=IsNull(BackM,0),DebitM=IsNull(DebitM,0),CreditM=IsNull(CreditM,0) from #SalePayListTB where CustId=@CustId and BillDate<>'' and iFlag>0 order by BillDate,AutoId
		open crUpdateLastM
		Fetch Next from crUpdateLastM into @AutoId,@SaleM,@BackM,@DebitM,@CreditM
		while (@@Fetch_Status=0)
		begin
			update #SalePayListTB set LastM=@fLastM+@SaleM-@BackM+@CreditM-@DebitM where AutoId=@AutoId    
			set @fLastM=@fLastM+@SaleM+@CreditM-@BackM-@DebitM
			Fetch Next from crUpdateLastM into @AutoId,@SaleM,@BackM,@DebitM,@CreditM
		end
		Close crUpdateLastM
		Deallocate crUpdateLastM
            
	  Fetch Next from crCustListM into @CustId
   end
   Close crCustListM
   Deallocate crCustListM
   

   --汇总报表 
   --①从临时表插入总期初金额
   InSert into #SalePaySumTB(CustId,FirstM)
   exec('select CustId,FirstM=0 from CustTB a where 1=1 '+@sWhere+'')
   
   Update #SalePaySumTB Set FirstM=m.FirstM from (Select CustId,FirstM=SUM(IsNull(FirstM,0)) from #FirstTempTB group by CustId) m where #SalePaySumTB.CustId=m.CustId
   
  --②插入本期发货/退货金额 
   InSert Into #SalePaySumTB(CustId,SaleM,BackM)
   exec('select a.CustId,SaleM=SUM(Case a.SignFlag when 1 then IsNull(b.AllMoney,0) else 0 end),BackM=SUM(Case a.SignFlag when -1 then IsNull(b.AllMoney,0) else 0 end)
	    from SaleInvoiceHDTB a left join SaleInvoiceDTTB b on a.InvoiceNo=b.InvoiceNO
	    where ISNULL(a.bMaxAudit,0)=1 and a.InvoiceDate>='''+@dtS+''' and a.InvoiceDate<='''+@dtE+''' '+@sWhere+' group by a.CustId ')
      
   
  --③插入本期收款/退款金额 
   InSert Into #SalePaySumTB(CustId,DebitM,CreditM,FactM)
   exec('select a.CustId,SaleM=SUM(Case a.SignFlag when 1 then IsNull(a.PayMoney,0) else 0 end),BackM=SUM(Case a.SignFlag when -1 then IsNull(a.PayMoney,0) else 0 end),FactM=SUM(IsNull(a.FactMoney,0))
		 from SalePayHDTB a 
		 where ISNULL(a.bMaxAudit,0)=1 and a.PayDate>='''+@dtS+''' and a.PayDate<='''+@dtE+''' '+@sWhere+'  group by a.CustId ')
   
 
  if @iFlag=0 or @iFlag=2  --明细
  begin 
	  select a.CustId,b.CustName,a.BillDate,a.BillKind,a.BillNo,a.ItemId,c.ItemCode,c.ItemName,a.ProType,a.Color,
	  a.SaleNum,a.BackNum,a.TaxPrice,a.SaleM,a.BackM,a.DebitM,a.CreditM,a.FactM,a.LastM  
	  from #SalePayListTB a left join CustTB b on a.CustId=b.CustId 
	  left join ItemTB c on a.ItemId=c.ItemId 
	  where a.LastM is not null
	  order by a.CustId,BillDate,a.AutoId   
  end
  
  if @iFlag=1 or @iFlag=2  --汇总
  begin    
	  select a.CustId,b.CustName,FirstM=SUM(ISNULL(a.FirstM,0)),SaleM=SUM(ISNULL(a.SaleM,0)),BackM=SUM(ISNULL(a.BackM,0)),AllInvocieM=SUM(ISNULL(a.SaleM,0))-SUM(ISNULL(a.BackM,0)),
	  DebitM=SUM(ISNULL(a.DebitM,0)),CreditM=SUM(ISNULL(a.CreditM,0)),AllPayM=SUM(ISNULL(a.DebitM,0))-SUM(ISNULL(a.CreditM,0)),
	  PayPer=(SUM(ISNULL(a.DebitM,0))-SUM(ISNULL(a.CreditM,0)))/dbo.IsZero(SUM(ISNULL(a.SaleM,0))-SUM(ISNULL(a.BackM,0)),Null)*100,
	  FactM=SUM(ISNULL(a.FactM,0)),
	  LastM=SUM(ISNULL(a.FirstM,0))+SUM(ISNULL(a.SaleM,0))-SUM(ISNULL(a.BackM,0))-SUM(ISNULL(a.DebitM,0))+SUM(ISNULL(a.CreditM,0))
	  from #SalePaySumTB a left join CustTB b on a.CustId=b.CustId
	  where 1=1 
	  group by a.CustId,b.CustName 
	  Having not(SUM(ISNULL(a.FirstM,0))=0 and SUM(ISNULL(a.SaleM,0))=0 and SUM(ISNULL(a.BackM,0))=0 and SUM(ISNULL(a.DebitM,0))=0 and SUM(ISNULL(a.CreditM,0))=0)
	  order by a.CustId
  end   
end

--exec prSalePayQ '2014-05-01','2014-05-30','',2

go

--应收帐龄表
if exists(Select name from SysObjects where Name='PrSaleAccountAgeQ' and Type='P' )
   Drop procedure dbo.PrSaleAccountAgeQ
go
Create Procedure dbo.PrSaleAccountAgeQ @sWhere VarChar(2000),@iKind Smallint
as
begin
    Create Table #AcountAgeTB (CustId varchar(100),CustName varchar(200),InvoiceNo varchar(50),InvoiceDate DateTime, InvoiceMoney  Numeric(19,6), PayMoney  Numeric(19,6), NoPayMoney Numeric(19,6),DayNum int, AgeKind varchar(100))
    
    InSert into #AcountAgeTB (CustId,CustName,InvoiceNo,InvoiceDate, InvoiceMoney,PayMoney,NoPayMoney,DayNum,AgeKind)
    Exec('select a.CustId,c.CustName,a.InvoiceNo,a.InvoiceDate,InvoiceMoney=Isnull(a.InvoiceMoney,0),PayMoney=Isnull(b.PayMoney,0),NoPayMoney=Isnull(a.InvoiceMoney,0)-Isnull(b.PayMoney,0),DayNum=DateDiff(Day,a.InvoiceDate,GetDate()),
           AgeKind=case when DateDiff(Day,a.InvoiceDate,GetDate())<=30  then ''小于30天''
           when DateDiff(Day,a.InvoiceDate,GetDate())>30 and DateDiff(Day,a.InvoiceDate,GetDate())<=60  then ''30-60天'' 
           when DateDiff(Day,a.InvoiceDate,GetDate())>60 and DateDiff(Day,a.InvoiceDate,GetDate())<=120  then ''60-120天''
           when DateDiff(Day,a.InvoiceDate,GetDate())>120 and DateDiff(Day,a.InvoiceDate,GetDate())<=180  then ''121-180天'' when DateDiff(Day,a.InvoiceDate,GetDate())>180 and DateDiff(Day,a.InvoiceDate,GetDate())<=240  then ''181-240天''  
           when DateDiff(Day,a.InvoiceDate,GetDate())>240 and DateDiff(Day,a.InvoiceDate,GetDate())<=300  then ''241-300天'' when DateDiff(Day,a.InvoiceDate,GetDate())>301 and DateDiff(Day,a.InvoiceDate,GetDate())<=360  then ''301-360天''
           when DateDiff(Day,a.InvoiceDate,GetDate())>360  then ''大于360天'' end  
    from (Select a.CustId,a.InvoiceNo,a.InvoiceDate,InvoiceMoney=Sum(Isnull(b.AllMoney,0)) from SaleInvoiceHDTB a inner join SaleInvoiceDTTB b on a.InvoiceNo=b.InvoiceNo 
          where Isnull(a.bMaxAudit,0)=1 group by a.CustId,a.InvoiceNo,a.InvoiceDate)a
    left join(select b.InvoiceNo,PayMoney=Sum(Isnull(b.NowPayMoney,0)) from SalePayHDTB a inner join SalePayDTTB b on a.PayNo=b.PayNo 
              where Isnull(a.bMaxAudit,0)=1 and b.InvoiceNo is not null group by b.InvoiceNo)b on a.InvoiceNo=b.InvoiceNO
    left join CustTB c on a.CustId=c.CustId        
    where Isnull(a.InvoiceMoney,0)>Isnull(b.PayMoney,0)'+@sWhere)
   
   if @iKind=1   --明细
   begin 
     select * from #AcountAgeTB  order by CustId,InvoiceDate
   end
   if @iKind=2   --图表
   begin 
      select CustId,CustName,AgeKind,NoPayMoney=SUM(ISNULL(NoPayMoney,0)) from   #AcountAgeTB
      group by CustId,CustName,AgeKind
   end
   if @iKind=3   --汇总
   begin 
      select CustId,CustName,NoPayMoney=SUM(ISNULL(NoPayMoney,0)) from   #AcountAgeTB
      group by CustId,CustName
      order by SUM(ISNULL(NoPayMoney,0)) Desc 
   end
end
--exec PrSaleAccountAgeQ '',1
go


--出纳期初记账
if Exists(select Name from sysobjects where name='prCNFirstAccount' and type='p')
  Drop procedure dbo.prCNFirstAccount
go
create proc dbo.prCNFirstAccount @AccountMan varchar(20),@AccountFlag int  --1 表示记帐 0 表示反记帐

as
  SET NOCOUNT ON
  declare @IntErrCode int,@BreakPoint varchar(20),@StartMonth varchar(6)  --系统启用月份
  
  select @StartMonth=isnull(CNStartMon,'') from SysParamTB
  if @StartMonth=''
  begin
    select '系统设置中没有指定出纳启用月份!' as ReturStr
    return
  end

  BEGIN TRANSACTION 
  set @BreakPoint=1000000000
  if @AccountFlag=1       --记帐
  begin    
      update CNAccountTB set AccountFlag='已记账' where AccountNo=@StartMonth and (isnull(AccountFlag,'')='' or isnull(AccountFlag,'')='未记账')
      select @IntErrCode=@@error
      if @IntErrCode=0
      begin
          COMMIT TRANSACTION
          select '记帐成功!' as ReturStr
      end
      else
      begin
          ROLLBACK TRANSACTION
          select '记帐失败!' as ReturStr
      end
  end 
  else  --反记帐
  begin                          
      update CNAccountTB set AccountFlag='未记账' where AccountNo=@StartMonth and AccountFlag='已记账'        
      select @IntErrCode=@@error
      if @IntErrCode=0
      begin
          COMMIT TRANSACTION
          select '反记帐成功!' as ReturStr
      end
      else
      begin
          ROLLBACK TRANSACTION
          select '反记帐失败!' as ReturStr
      end
  end

--exec prCNFirstAccount 'admin',-1  
go

--出纳月结
if exists (select name from sysobjects where name = 'prCNAccount' and type = 'p')
  drop procedure dbo.prCNAccount
go
create procedure dbo.prCNAccount @AccountFlag Smallint

as
begin
  Declare @FMonthNo varchar(6),@LMonthNo varchar(6),@NMonthNo varchar(6),@FSMonth datetime,@FEMonth datetime,@LSMonth datetime,
          @LEMonth datetime,@TempMonthNo varchar(6),@TempSMonth datetime,@TempEMonth datetime,@bAccount varchar(2)
        --第一个未结账财务月份,最后一个结账财务月份,下一个会计月份,第一个未结账财务月份的起始日期,第一个未结账财务月份的结束日期,最后一个结账财务月份的起始日期
        --最后一个结账财务月份的结束日期,是否已结帐 
  Set @FMonthNo=''
  Set @LMonthNo='' 
  Set @NMonthNo=''
  
  Declare @StartMonthNo varchar(10),@AccountOver varchar(20),@NotAuditBillNo varchar(30)
  
  select @StartMonthNo=isnull(CNStartMon,'') from SysParamTB
  if @StartMonthNo=''
  begin
    select '系统设置中没有指定出纳启用月份!' as ReturStr
    return
  end
  declare GetMonthNo_c scroll cursor for select MonthNo,BeginDate,EndDate,bCNAccount from vwCNAccount
  open GetmonthNo_c
  fetch next from GetmonthNo_c into @TempMonthNo, @TempSMonth, @TempEMonth,@bAccount
  while @@fetch_status = 0
  begin
	if  @bAccount=0
	begin
		set @FMonthNo = @TempMonthNo
		set @FSMonth = @TempSMonth
		set @FEMonth = @TempEMonth
		fetch RELATIVE 1 from GetmonthNo_c into @TempMonthNo, @TempSMonth, @TempEMonth,@bAccount  --则返回从当前行开始向后的第 1 行，并将返回行变成新的当前行
		if @@fetch_status = 0 
		begin
			set @NMonthNo = @TempMonthNo
		end
		fetch RELATIVE -2 from GetmonthNo_c into @TempMonthNo, @TempSMonth, @TempEMonth,@bAccount --则返回从当前行开始向前的第 2 行，并将返回行变成新的当前行
		if @@fetch_status = 0 
		begin
			set @LMonthNo = @TempMonthNo
			set @LSMonth = @TempSMonth
			set @LEMonth = @TempEMonth	
		end
		break
	end 
	fetch next from GetmonthNo_c into @TempMonthNo, @TempSMonth, @TempEMonth,@bAccount
  end  
  close GetmonthNo_c
  deallocate GetmonthNo_c
  
  

  --反月结 如果一个月都没月结
  if @AccountFlag =2 and @LMonthNo = ''
  begin
      select '没有结账的会计月,不能反月结!' as ReturStr
      return 
  end

  --月结
  if @AccountFlag = 1
  begin
    begin tran 
   
	--检验期初是否记帐
	select @AccountOver =AccountFlag from CNAccountTB where AccountNO= @StartMonthNo
	if @AccountOver = '未记账'
	begin
	  rollback tran
	  select '出纳期初登记未记账,不能月结!' as ReturStr
	  return
	end


    select @NotAuditBillNo=BillNo from CNBillTB where ISNULL(bMaxAudit,0)=0 and dbo.fnGetMonth(BillDate)=@FMonthNo
	if @NotAuditBillNo<>''
	begin
	  rollback tran
	  select '月结月份有记账单未审核完毕!' as ReturStr
	  return
	end
	
    
	--①插入账户信息
	insert into CNAccountTB (AccountNo,AccName,DebitM,CreditM,AccountFlag)
	select Distinct @FMonthNo,a.AccName,DebitM=0,CreditM=0,AccountFlag='月结'
	from ( select Distinct a.AccName from  CNBillTB a where IsNull(a.bMaxAudit,0)=1 and dbo.fnGetMonth(a.BillDate)=@FMonthNo)a
    where not Exists (select m.AccName from CNAccountTB m where m.AccountNo=@FMonthNo and a.AccName=m.AccName)

          
    --②更新记账信息
    Update CNAccountTB Set DebitM=n.DebitM,CreditM=n.CreditM 
    from (select AccName,DebitM=Sum(DebitM),CreditM=Sum(CreditM)  from
         (select a.AccName,DebitM=SUM(Case a.iFlag when 1 then ISNULL(a.CNMoney,0) else 0 end),CreditM=SUM(Case a.iFlag when -1 then ISNULL(a.CNMoney,0) else 0 end)
          from CNBillTB a where IsNull(a.bMaxAudit,0)=1 and dbo.fnGetMonth(a.BillDate)=@FMonthNo
          group by a.AccName,a.iFlag)m group by m.AccName )n 
    where CNAccountTB.AccName=n.AccName    
	    

    --③更新结存金额
    Update CNAccountTB set LastM=Isnull(FirstM,0)+ISNULL(DebitM,0)-ISNULL(CreditM,0)
    where AccountNo=@FMonthNo 
    
    --④将本月的期末记入下月的期初
    InSert Into CNAccountTB (AccountNo,AccountFlag,AccName,FirstM) 
    select @NMonthNo,'月结',AccName,LastM 
    from CNAccountTB where AccountNo=@FMonthNo
    
    --⑤更新当前财务月份月结标志
	update FinanceDateTB set bCNAccount=1 where MonthNo = @FMonthNo
	
  
    commit tran
    select '月结成功!' as ReturStr
  end
  --反月结
  if @AccountFlag =2
  begin 
	begin tran
	delete CNAccountTB where AccountNo = @FMonthNo
    
    --如果是期初，则删除非期初登记数据
    if @LMonthNo=@StartMonthNo 
    delete CNAccountTB where AccountNo = @LMonthNo and AccountFlag='月结'
	
	--更新上个财务月份的金额
	update CNAccountTB set DebitM = null, CreditM = null, LastM = null where AccountNo = @LMonthNo

    --更新当前财务月份 
	update FinanceDateTB set bCNAccount=0 where MonthNo = @LMonthNO 

	commit tran
    select '反月结成功!' as ReturStr	
  end
end
--exec prCNAccount 1 
go

if Exists (select Name from Sysobjects Where Name='PrPayToCN' and type='P')
  Drop Procedure PrPayToCN 
go
Create Procedure PrPayToCN @BillNo varchar(50),@sFlag varchar(20)
As  
begin
   Declare @CNBillNo varchar(50),@String varchar(200),@sCNKind varchar(20)
   
   Create Table #BillTB (BillNo varchar(100))
   
   InSert into #BillTB (BillNo)
   exec prGetTimeNo 'CNCashQ','BillNO'
  
   set @CNBillNo=''
   select @CNBillNo=BillNo from #BillTB
   
   if @sFlag='收款单'
   begin
     InSert into CNBillTB(AutoNo,CNKind,AccName,BillDate,BillNo,CNItemName,iFlag,sFlag,CNMoney,FZObjectId,FZObjectName,
                 HandMan,HandManName,Remark,MakeDate,MakeMan,MakeManName,SubjoinNo,bOtherToCN,bMaxAudit,AuditDate,AuditFlag,AuditManName)
     select AutoNo=dbo.fnGetAutoNo('CNCashQ',GETDATE()),CNKind=Case b.AccKind when '现金账户' then '现金' when '银行账户' then '银行' end,
     a.AccName,BillDate=a.PayDate,BillNo=@CNBillNo,a.CNItemName,c.iFlag,c.sFlag,CNMoney=a.PayMoney,FZObjectId=a.CustId,FZObjectName=d.CustName,
     HandMan=a.MakeMan,HandManName=a.MakeManName,Remark='由收款单['+a.PayNO+']自动生成',MakeDate=GetDAte(),MakeMan=a.MakeMan,MakeManName=a.MakeManName,
     SubjoinNo=a.PayNO,bOtherToCN=1,bMaxAudit=1,AuditDate=GETDATE(),AuditFlag=1,AuditManName=a.AuditManName
     from SalePayHDTB a left join  CNAccNameTB b on a.AccName=b.AccName
     left join CNItemTB c on a.CNItemName=c.CNItemName
     left join CustTB d on a.CustId=d.CustId
     where  PayNO=@BillNo and not Exists(select AutoId from CNBillTB where SubjoinNo=@BillNo)
   end
   
   if @sFlag='付款单'
   begin
     InSert into CNBillTB(AutoNo,CNKind,AccName,BillDate,BillNo,CNItemName,iFlag,sFlag,CNMoney,FZObjectId,FZObjectName,
                 HandMan,HandManName,Remark,MakeDate,MakeMan,MakeManName,SubjoinNo,bOtherToCN,bMaxAudit,AuditDate,AuditFlag,AuditManName)
     select AutoNo=dbo.fnGetAutoNo('CNCashQ',GETDATE()),CNKind=Case b.AccKind when '现金账户' then '现金' when '银行账户' then '银行' end,
     a.AccName,BillDate=a.PayDate,BillNo=@CNBillNo,a.CNItemName,c.iFlag,c.sFlag,CNMoney=a.PayMoney,FZObjectId=a.PrvId,FZObjectName=d.PrvName,
     HandMan=a.MakeMan,HandManName=a.MakeManName,Remark='由付款单['+a.PayNO+']自动生成',MakeDate=GetDAte(),MakeMan=a.MakeMan,MakeManName=a.MakeManName,
     SubjoinNo=a.PayNO,bOtherToCN=1,bMaxAudit=1,AuditDate=GETDATE(),AuditFlag=1,AuditManName=a.AuditManName
     from StockPayHDTB a left join  CNAccNameTB b on a.AccName=b.AccName
     left join CNItemTB c on a.CNItemName=c.CNItemName
     left join ProviderTB d on a.PrvId=d.PrvId
     where  PayNO=@BillNo and not Exists(select AutoId from CNBillTB where SubjoinNo=@BillNo)
   end

end
 --exec PrPayToCN 'SKD140627150816','收款单'
go 

if exists(select Name from sysobjects where name='PrCNMoveAudit' and type='P')
Drop procedure dbo.PrCNMoveAudit
go
Create Procedure dbo.PrCNMoveAudit @MoveNo varchar(20),@iFlag Smallint
as 
begin
  
  Declare  @OutCNKind varchar(50),@InCNKind varchar(50),@OutBillNo varchar(50),@InBillNo varchar(50)
  
  select @OutCNKind=Case when b.AccKind='现金账户' then '现金' else '银行' end
  from CNMoveTB a left join CNAccNameTB b on a.OutAccName=b.AccName
  where BillNo=@MoveNo
  
  select @InCNKind=Case when b.AccKind='现金账户' then '现金' else '银行' end
  from CNMoveTB a left join CNAccNameTB b on a.InAccName=b.AccName
  where BillNo=@MoveNo
  
  if  @iFlag=1   --审核
  begin
    --插入支出
   
    Set @OutBillNo=''
    if @OutCNKind='现金'
       exec prGetTableNo 'CNCashQ','BillNo',@OutBillNo OUTPUT
    else
       exec prGetTableNo 'CNBankQ','BillNo',@OutBillNo OUTPUT
    
    
    InSert into CNBillTB(AutoNo,CNKind,AccName,BillDate,BillNo,CNItemName,iFlag,sFlag,CNMoney,FZObjectId,FZObjectName,HandMan,HandManName,Remark,
                PZNo,bBorrow,MakeDate,MakeManName,AuditDate,AuditFlag,AuditManName,bMaxAudit,MaxAuditDate,SubJoinNo,bOtherToCN,CNMoveNo,CNMoveId)
    select AutoNo=Case when @OutCNKind='现金' then dbo.fnGetAutoNo('CNCashQ',GETDATE()) else dbo.fnGetAutoNo('CNBankQ',GETDATE()) end,CNKind=@OutCNKind,
           AccName=OutAccName,BillDate,BillNo=@OutBillNo,CNItemName=OutCNItemName,iFlag=-1,sFlag='支',CNMoney=CNMoveMoney,
           FZObjectId=OutFZObjectId,FZObjectName=OutFZObjectName,HandMan=OutHandMan,HandManName=OutHandManName,Remark='由出纳转账自动生成 '+IsNull(OutRemark,''),
           PZNo=OutPZNo,bBorrow,MakeDate,MakeManName,AuditDate=GETDATE(),AuditFlag=1,AuditManName,bMaxAudit=1,MaxAuditDate,SubJoinNo=@MoveNo,bOtherToCN=1,CNMoveNo=@MoveNo,CNMoveId=AutoNo
    from CNMoveTB where BillNo=@MoveNo
    and not Exists(select AutoId from CNBillTB m where m.iFlag=-1 and CNMoveTB.AutoNo=m.CNMoveId)
    
    --插入收入
    Set @InBillNo=''
    if @InCNKind='现金'
       exec prGetTableNo 'CNCashQ','BillNo',@InBillNo OUTPUT
    else
       exec prGetTableNo 'CNBankQ','BillNo',@InBillNo OUTPUT
    
    
    InSert into CNBillTB(AutoNo,CNKind,AccName,BillDate,BillNo,CNItemName,iFlag,sFlag,CNMoney,FZObjectId,FZObjectName,HandMan,HandManName,Remark,
                PZNo,bBorrow,MakeDate,MakeManName,AuditDate,AuditFlag,AuditManName,bMaxAudit,MaxAuditDate,SubJoinNo,bOtherToCN,CNMoveNo,CNMoveId)
    select AutoNo=Case when @InCNKind='现金' then dbo.fnGetAutoNo('CNCashQ',GETDATE()) else dbo.fnGetAutoNo('CNBankQ',GETDATE()) end,CNKind=@InCNKind,
           AccName=InAccName,BillDate,BillNo=@InBillNo,CNItemName=InCNItemName,iFlag=1,sFlag='收',CNMoney=CNMoveMoney,
           FZObjectId=InFZObjectId,FZObjectName=InFZObjectName,HandMan=InHandMan,HandManName=InHandManName,Remark='由出纳转账自动生成 '+IsNull(InRemark,''),
           PZNo=InPZNo,bBorrow,MakeDate,MakeManName,AuditDate=GETDATE(),AuditFlag=1,AuditManName,bMaxAudit=1,MaxAuditDate,SubJoinNo=@MoveNo,bOtherToCN=1,CNMoveNo=@MoveNo,CNMoveId=AutoNo
    from CNMoveTB where BillNo=@MoveNo
    and not Exists(select AutoId from CNBillTB m where m.iFlag=1 and CNMoveTB.AutoNo=m.CNMoveId)     
  end 
  else if @iFlag=-1 
  begin
    Delete CNBillTB where CNMoveNo=@MoveNo
  end
  
  select Null
end
-- exec PrCNMoveAudit '',1
go

--出纳查询
if exists (select name from sysobjects where name = 'prCNBillQ' and type = 'p')
  drop procedure dbo.prCNBillQ
go
create procedure dbo.prCNBillQ @dtS DateTime,@dtE DateTime,@sWhereAccName varchar(200),@sWhere varchar(8000),@iFlag Smallint 
as
begin
   Declare @StartDate DateTime,@StartMontNo varchar(30),@AccName varchar(200),
   @AutoId int,@DebitM Numeric(18,5),@CreditM Numeric(18,5),@fLastM Numeric(18,5)
  
   set @StartMontNo=''
    
   Create Table #CNBillSumTB (AccName varchar(100),FirstM Numeric(18,5),DebitM Numeric(18,5),CreditM Numeric(18,5),LastM Numeric(18,5))
   
   Create Table #CNBillListTB (AutoId int Identity(1,1),AutoNo varchar(100),BillNo varchar(50),BillDate DateTime,CNKind varchar(20),AccName varchar(100),
			    CNItemName varchar(200),iFlag Smallint,sFlag varchar(10),FZObjectId varchar(50),FZObjectName varchar(100),
			    HandMan varchar(50),HandManName varchar(100),AccSubjectId varchar(50),PZNo varchar(50),SubJoinNo varchar(50),bOtherToCN bit,Remark varchar(500),
			    DebitM Numeric(18,5),CreditM Numeric(18,5),LastM Numeric(18,5),
			    MakeMan varchar(50),MakeManName varchar(50),AuditFlag Smallint,bMaxAudit bit,AuditManName varchar(50),AuditDate VarChar(100),MaxAuditDate DateTime)
      
   
   --如果条件的开始日期在已月结的财务月份之前或者一个月份都没有月结
   select Top 1 @StartDate=BeginDate,@StartMontNo=MonthNo from vwCNAccount Order by MonthNo
   --如果条件的开始日期在已月结的财务月份之内
   select Top 1 @StartDate=BeginDate,@StartMontNo=MonthNo from vwCNAccount where IsNull(bCNAccount,0)=1 and BeginDate<=@dtS and EndDate>=@dtS Order by MonthNo Desc   
   --如果条件的开始日期在所有月结的财务月份之后
   select Top 1 @StartDate=BeginDate,@StartMontNo=MonthNo from vwCNAccount where IsNull(bCNAccount,0)=0 and BeginDate<=@dtS Order by MonthNo

   if @StartMontNo=''
   begin
     select '请先设置财务月份和出纳启用月份!' as ReturStr
     return
   end
   
   --print @StartDate
   --print @StartMontNo 
   
   
   --创建临时表插入期初的数据
   Create Table #FirstTempTB (AccName varchar(50),FirstM Numeric(18,5))
  
   --插入期初 已月结期初
   InSert into #FirstTempTB(AccName,FirstM)
   exec('select AccName,FirstM
         from CNAccountTB a where AccountNo='''+@StartMontNo+''' '+@sWhereAccName+' and AccName is not null')
  
    --插入期初 收入/支出金额
   InSert InTo #FirstTempTB(AccName,FirstM)
   exec('select a.AccName,FirstM=Sum(a.iFlag*ISNULL(a.CNMoney,0))
         from CNBillTB a where a.BillDate>='''+@StartDate+''' and a.BillDate<'''+@dtS+''' '+@sWhere+'  group by a.AccName')
   
      
   --Select AccName,FirstM=SUM(IsNull(FirstM,0)) from #FirstTempTB group by AccName return
   
   --明细报表
   --①插入账户信息
   InSert into #CNBillListTB(AccName,BillDate,CNKind,BillNo,iFlag,CNItemName,sFlag,FZObjectId,FZObjectName,HandMan,HandManName,AccSubjectId,PZNo,SubJoinNo,bOtherToCN,Remark,DebitM,CreditM,LastM,MakeMan,MakeManName,AuditFlag,bMaxAudit,AuditManName,AuditDate,MaxAuditDate)
   exec(' select AccName,BillDate=null,CNKind=null,BillNo=null,iFlag=0,CNItemName=null,sFlag=''期初'',FZObjectId=null,FZObjectName=null,
	      HandMan=null,HandManName=null,AccSubjectId=null,PZNo=null,SubJoinNo=null,bOtherToCN=null,Remark=null,DebitM=null,CreditM=null,LastM=0,MakeMan=null,MakeManName=null,AuditFlag=null,bMaxAudit=0,AuditManName=null,AuditDate=null,MaxAuditDate=null 
	      from CNAccNameTB a where 1=1 '+@sWhereAccName+' group by a.AccName ')
  
   Update #CNBillListTB Set LastM=m.FirstM from (Select AccName,FirstM=SUM(IsNull(FirstM,0)) from #FirstTempTB group by AccName) m where #CNBillListTB.AccName=m.AccName
   
   --②插入本期 收入/支出明细
   InSert into #CNBillListTB(AccName,BillDate,CNKind,BillNo,iFlag,CNItemName,sFlag,FZObjectId,FZObjectName,HandMan,HandManName,AccSubjectId,PZNo,SubJoinNo,bOtherToCN,Remark,DebitM,CreditM,LastM,MakeMan,MakeManName,AuditFlag,bMaxAudit,AuditManName,AuditDate,MaxAuditDate)
   exec (' select AccName=a.AccName,BillDate=a.BillDate,a.CNKind,
		   BillNo=a.BillNo,a.iFlag,a.CNItemName,a.sFlag,a.FZObjectId,a.FZObjectName,a.HandMan,a.HandManName,a.AccSubjectId,a.PZNo,a.SubJoinNo,a.bOtherToCN,a.Remark,
		   DebitM=Case a.iFlag when 1 then SUM(IsNull(a.CNMoney,0)) else 0 end,CreditM=Case a.iFlag when -1 then SUM(IsNull(a.CNMoney,0)) else 0 end,LastM=SUM(ISNULL(a.iFlag,1)*IsNull(a.CNMoney,0)),
		   a.MakeMan,a.MakeManName,a.AuditFlag,bMaxAudit=IsNull(a.bMaxAudit,0),a.AuditManName,a.AuditDate,a.MaxAuditDate
		   from CNBillTB a 
		   where a.BillDate>='''+@dtS+''' and a.BillDate<='''+@dtE+'''  '+@sWhere+'
		   group by AccName,BillDate,CNKind,BillNo,iFlag,CNItemName,sFlag,FZObjectId,FZObjectName,HandMan,HandManName,AccSubjectId,a.PZNo,a.SubJoinNo,a.bOtherToCN,Remark,a.MakeMan,a.MakeManName,AuditFlag,bMaxAudit,AuditManName,AuditDate,MaxAuditDate')
   

   --通过游标计算每笔记录后的余额
   declare crCustListM Cursor for select distinct AccName from #CNBillListTB where Isnull(AccName,'')<>''
   open crCustListM
   Fetch Next from crCustListM into @AccName
   while (@@Fetch_Status=0)
   begin
      Set @fLastM=0
      select @fLastM=IsNull(LastM,0) from #CNBillListTB where AccName=@AccName and iFlag=0
     
        declare crUpdateLastM Cursor for select AutoId,DebitM=IsNull(DebitM,0),CreditM=IsNull(CreditM,0) from #CNBillListTB where AccName=@AccName and BillDate<>'' order by BillDate,AutoId
		open crUpdateLastM
		Fetch Next from crUpdateLastM into @AutoId,@DebitM,@CreditM
		while (@@Fetch_Status=0)
		begin
			update #CNBillListTB set LastM=@fLastM+@DebitM-@CreditM where AutoId=@AutoId    
			set @fLastM=@fLastM+@DebitM-@CreditM
			Fetch Next from crUpdateLastM into @AutoId,@DebitM,@CreditM
		end
		Close crUpdateLastM
		Deallocate crUpdateLastM
            
	  Fetch Next from crCustListM into @AccName
   end
   Close crCustListM
   Deallocate crCustListM
   

   --汇总报表 
   --①从临时表插入总期初金额
   InSert into #CNBillSumTB(AccName,FirstM)
   exec('select AccName,FirstM=0 from CNAccNameTB a where 1=1 '+@sWhereAccName+'')
   
   Update #CNBillSumTB Set FirstM=m.FirstM from (Select AccName,FirstM=SUM(IsNull(FirstM,0)) from #FirstTempTB group by AccName) m where #CNBillSumTB.AccName=m.AccName
   
   
  --②插入本期收入/支出 金额
   InSert Into #CNBillSumTB(AccName,DebitM,CreditM)
   exec('select a.AccName,DebitM=SUM(Case a.iFlag when 1 then IsNull(a.CNMoney,0) else 0 end),CreditM=SUM(Case a.iFlag when -1 then IsNull(a.CNMoney,0) else 0 end)
		 from CNBillTB a 
		 where 1=1 and a.BillDate>='''+@dtS+''' and a.BillDate<='''+@dtE+''' '+@sWhere+'  group by a.AccName ')
   
 
  if @iFlag=0 or @iFlag=2  --明细
  begin 
	  select a.AccName,a.BillDate,a.CNKind,a.BillNo,a.iFlag,a.CNItemName,a.sFlag,a.FZObjectName,a.HandManName,a.AccSubjectId,a.PZNo,a.SubJoinNo,a.bOtherToCN,a.Remark,
	  a.DebitM,a.CreditM,a.LastM,a.MakeMan,a.MakeManName,a.AuditFlag,a.bMaxAudit,a.AuditManName,a.AuditDate,a.MaxAuditDate  
	  from #CNBillListTB a
	  where a.LastM is not null
	  order by a.AccName,a.BillDate,a.AutoId   
  end
  
  if @iFlag=1 or @iFlag=2  --汇总
  begin    
	  select a.AccName,FirstM=SUM(ISNULL(a.FirstM,0)),DebitM=SUM(ISNULL(a.DebitM,0)),CreditM=SUM(ISNULL(a.CreditM,0)),
             LastM=SUM(ISNULL(a.FirstM,0))+SUM(ISNULL(a.DebitM,0))-SUM(ISNULL(a.CreditM,0))
	  from #CNBillSumTB a
	  where 1=1 
	  group by a.AccName
	  Having not(SUM(ISNULL(a.FirstM,0))=0  and SUM(ISNULL(a.DebitM,0))=0 and SUM(ISNULL(a.CreditM,0))=0)
	  order by a.AccName
  end   
end

--exec prCNBillQ '2014-05-01','2014-07-30',' and a.AccName in(select AccName from CNAccNameTB where AccKind=''现金账户'')',' and IsNull(a.CNKind,'''')=''现金'' ',0
go


If exists(Select Name from SysObjects where name='prGetAllright' and type='p')
  Drop procedure dbo.prGetAllright
go
Create procedure dbo.prGetAllright @UserId varchar(20)
as
begin

	--插入菜单
	Insert into UserRightTB(UserId,TableId,ModuleId,Tag,pTag,bShow,bCheck,bUnCheck,SumRightLevel,HasRightLevel,bAdd,bEditPart,bEditAll,bDelPart,bDelAll,bFindPart,bFindAll,bShowPrice,bEditPrice,bPrint,bExpand,bInvoice,bOther1,bOther2,bOther3)
		 select @UserId,TableId,ModuleId,Tag,pTag,1,1,1,1,HasRightLevel=1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 from SysTableSetTB where not Exists (select AutoId from UserRightTB where UserId=@UserId and SysTableSetTB.TableID=UserRightTB.TableId )
	--更新权限
	Update UserRightTB Set bShow=1,bCheck=1,bUnCheck=1,SumRightLevel=1,HasRightLevel=1,bAdd=1,bEditPart=1,bEditAll=1,bDelPart=1,bDelAll=1,bFindPart=1,bFindAll=1,bShowPrice=1,bEditPrice=1,bPrint=1,bExpand=1,bInvoice=1,bOther1=1,bOther2=1,bOther3=1 
	where UserId=@UserId

end
--exec prGetAllright 'cx'
GO

IF EXISTS (SELECT NAME FROM Sysobjects WHERE Name='prImportFromExcel' AND type='P')
  DROP PROCEDURE prImportFromExcel
go
CREATE PROCEDURE prImportFromExcel 
   @sKind VARCHAR (20),
   @FilePath varchar(500)
--从EXCEL中导入资料
as
Begin

   IF  @FilePath='' RETURN

   IF @sKind='产品资料'
   BEGIN
       --select * from ItemTB
       --更新已有数据
	   --EXEC('UPDATE ItemTB SET ItemCode=m.产品代号,ItemName=m.产品名称,ItemSpc=m.规格,ItemPic=m.图号,
	   --                        WareId=m.仓库编号,ItemSource=m.来源,ItemPYCode=dbo.fnGetPY(产品名称),
	   --                        ItemParam=m.属性,ItemUnit=m.主单位,SubUnit=副单位,ExchRate=m.转化率,
	   --                        ItemKindId=m.产品类别编号,MakeMan=''admin'',MakeManName=''系统导入'',MakeDate=GetDate()
	                           
	   --FROM  OpenDataSource( ''Microsoft.Jet.OLEDB.4.0'',''Data Source="'+@FilePath+'";Extended properties=Excel 8.0 '')...[Sheet1$] m
	   --WHERE ItemTB.ItemId=m.产品编号 AND m.产品编号 IS NOT NULL ')
	   
	  --插入新增的
	  EXEC  ('INSERT INTO ItemTB(ItemId,ItemCode,ItemName,ItemSpc,ItemPic,
	                             WareId,WareName,ItemSource,ItemPYCode,ItemParam,ItemUnit,SubUnit,ExchRate,
	                             ItemKindId,ItemKindName,MakeMan,MakeManName,MakeDate)
	   
	   SELECT 产品编号,产品代号,产品名称,规格,图号,仓库编号,仓库名称,来源,拼音码=dbo.fnGetPY(产品名称),属性,主单位,副单位,转化率,
	          产品类别编号,产品类别名称,MakeMan=''admin'',MakeManName=''系统导入'',MakeDate=GetDate()
	   FROM OpenDataSource( ''Microsoft.Jet.OLEDB.4.0'',''Data Source="'+@FilePath+'";Extended properties=Excel 8.0 '')...[Sheet1$] m
	   WHERE NOT EXISTS (SELECT ItemId FROM ItemTB WHERE m.产品编号=ItemTB.ItemId)
	   AND m.产品编号 IS NOT NULL ')   
   END
   
   IF @sKind='客户资料'
   BEGIN
       --select * from CustTB
       --更新已有数据
	   --EXEC('UPDATE CustTB SET CustCode=m.客户代号,CustName=m.客户名称,CustPYCode=dbo.fnGetPY(客户名称),
	   --                        CustKindId=m.客户类别编号,Principal=m.负责人,Mobile=m.手机,CustAddress=m.地址,
	   --                        MakeMan=''admin'',MakeManName=''系统导入'',MakeDate=GetDate()
	                           
	   --FROM  OpenDataSource( ''Microsoft.Jet.OLEDB.4.0'',''Data Source="'+@FilePath+'";Extended properties=Excel 8.0 '')...[Sheet1$] m
	   --WHERE CustTB.CustID=m.客户编号 AND m.客户编号 IS NOT NULL ')
	   
	  --插入新增的
	  EXEC  ('INSERT INTO CustTB(CustID,CustCode,CustName,CustPYCode,CustKindId,Principal,Mobile,CustAddress,
	                             MakeMan,MakeManName,MakeDate)
	   
	   SELECT 客户编号,客户代号,客户名称,拼音码=dbo.fnGetPY(客户名称),客户类别编号,负责人,手机,地址,
	          MakeMan=''admin'',MakeManName=''系统导入'',MakeDate=GetDate()
	   FROM OpenDataSource( ''Microsoft.Jet.OLEDB.4.0'',''Data Source="'+@FilePath+'";Extended properties=Excel 8.0 '')...[Sheet1$] m
	   WHERE NOT EXISTS (SELECT CustID FROM CustTB WHERE m.客户编号=CustTB.CustID)
	   AND m.客户编号 IS NOT NULL ')   
   END  
   
   IF @sKind='供应商资料'
   BEGIN
       --select * from ProviderTB
       --更新已有数据
	   --EXEC('UPDATE ProviderTB SET PrvCode=m.供应商代号,PrvName=m.供应商名称,PrvPYCode=dbo.fnGetPY(供应商名称),
	   --                        PrvKindId=m.供应商类别编号,Principal=m.负责人,Mobile=m.手机,PrvAddress=m.地址,
	   --                        MakeMan=''admin'',MakeManName=''系统导入'',MakeDate=GetDate()
	                           
	   --FROM  OpenDataSource( ''Microsoft.Jet.OLEDB.4.0'',''Data Source="'+@FilePath+'";Extended properties=Excel 8.0 '')...[Sheet1$] m
	   --WHERE ProviderTB.PrvId=m.供应商编号 AND m.供应商编号 IS NOT NULL ')
	   
	  --插入新增的
	  EXEC  ('INSERT INTO ProviderTB(PrvId,PrvCode,PrvName,PrvPYCode,PrvKindId,Principal,Mobile,PrvAddress,
	                             MakeMan,MakeManName,MakeDate)
	   
	   SELECT 供应商编号,供应商代号,供应商名称,拼音码=dbo.fnGetPY(供应商名称),供应商类别编号,负责人,手机,地址,
	          MakeMan=''admin'',MakeManName=''系统导入'',MakeDate=GetDate()
	   FROM OpenDataSource( ''Microsoft.Jet.OLEDB.4.0'',''Data Source="'+@FilePath+'";Extended properties=Excel 8.0 '')...[Sheet1$] m
	   WHERE NOT EXISTS (SELECT PrvId FROM ProviderTB WHERE m.供应商编号=ProviderTB.PrvId)
	   AND m.供应商编号 IS NOT NULL ')   
   END          
   
   IF @sKind='员工资料'
   BEGIN
       --select * from EmployeeTB
       --更新已有数据
	   --EXEC('UPDATE EmployeeTB SET EmpCode=m.员工代号,EmpName=m.姓名,PYCode=dbo.fnGetPY(姓名),
	   --                        DeptId=m.部门编号,EmpSex=m.性别,Mobile=m.手机,Address=m.地址,
	   --                        MakeMan=''admin'',MakeManName=''系统导入'',MakeDate=GetDate()
	                           
	   --FROM  OpenDataSource( ''Microsoft.Jet.OLEDB.4.0'',''Data Source="'+@FilePath+'";Extended properties=Excel 8.0 '')...[Sheet1$] m
	   --WHERE EmployeeTB.EmpId=m.员工编号 AND m.员工编号 IS NOT NULL ')
	   
	  --插入新增的
	  EXEC  ('INSERT INTO EmployeeTB(EmpId,EmpCode,EmpName,PYCode,DeptId,EmpSex,Mobile,Address,
	                             MakeMan,MakeManName,MakeDate)
	   
	   SELECT 员工编号,员工代号,姓名,拼音码=dbo.fnGetPY(姓名),部门编号,性别,手机,地址,
	          MakeMan=''admin'',MakeManName=''系统导入'',MakeDate=GetDate()
	   FROM OpenDataSource( ''Microsoft.Jet.OLEDB.4.0'',''Data Source="'+@FilePath+'";Extended properties=Excel 8.0 '')...[Sheet1$] m
	   WHERE NOT EXISTS (SELECT EmpId FROM EmployeeTB WHERE m.员工编号=EmployeeTB.EmpId)
	   AND m.员工编号 IS NOT NULL ')   
   END             
   
END
--exec prImportFromExcel '供应商资料','F:\供应商资料模板.xls'

GO

if Exists(select Name from sysobjects where name='prUserRightImport' and type='p')
  Drop procedure dbo.prUserRightImport
go
Create Procedure dbo.prUserRightImport @UserId varchar(20),@iKind Smallint
as
begin

  --删除系统表单
 Delete UserRightTB where UserId=@UserId and Not Exists (select Tag from SysMenuTB m where  UserRightTB.Tag=m.Tag)
   
   --导入系统表单
   Insert Into UserRightTB (UserId,TableId,ModuleId,Tag,pTag)
   select @UserId,TableId,ModuleId,Tag,pTag from SysTableSetTB where exists (select Tag from SysMenuTB m where m.Tag=SysTableSetTB.Tag)
   and TableID not in (select Distinct TableID from  UserRightTB where UserId=@UserId)

   --获取类型为1的导入产品类别
   if @iKind=1 
   begin
	   Insert Into ItemKindRightTB (UserId,ItemKindId,ParentId)
	   select @UserId,ItemKindId,ParentId from ItemKindTB  
	   where ItemKindId not in (select Distinct ItemKindId from  ItemKindRightTB where UserId=@UserId)
   end
end
--exec prUserRightImport 'LQ',0
go

if Exists(select Name from sysobjects where name='prUpdateSaleOrderStop' and type='p')
  Drop procedure dbo.prUpdateSaleOrderStop
go
Create Procedure dbo.prUpdateSaleOrderStop @sAutoNo varchar(100),@sSaleOrderNo varchar(100)
as
begin
   --如果单号不为空则整单停止否单条停止
   if @sSaleOrderNo<>''
     Update SaleOrderDTTB Set bStop=Case ISNULL(bStop,0) when 0 then 1 else 0 end where SaleOrderNo=@sSaleOrderNo
   else
     Update SaleOrderDTTB Set bStop=Case ISNULL(bStop,0) when 0 then 1 else 0 end where AutoNo=@sAutoNo
end
--exec prUpdateSaleOrderStop '',''
go  

if Exists (select Name from Sysobjects Where Name='PrUpdateItemInfo' and type='P')
  Drop Procedure PrUpdateItemInfo
go
Create Procedure PrUpdateItemInfo
As 
begin
  --更新一些单据的产品资料信息
  
  
  --出入库表
  Update WareInOutDTTB Set ItemCode=m.ItemCode,ItemPYCode=m.ItemPYCode,ItemName=m.ItemName,ItemSpc=m.ItemSpc,ItemPic=m.ItemPic,
  ItemUnit=m.ItemUnit,SubUnit=m.SubUnit,ExchRate=m.ExchRate,iFlag=m.iFlag from ItemTB m where WareInOutDTTB.ItemId=m.ItemId
  --采购订单
  Update StockOrderDTTB Set ItemCode=m.ItemCode,ItemPYCode=m.ItemPYCode,ItemName=m.ItemName,ItemSpc=m.ItemSpc,ItemPic=m.ItemPic,
  ItemUnit=m.ItemUnit,SubUnit=m.SubUnit,ExchRate=m.ExchRate,iFlag=m.iFlag from ItemTB m where StockOrderDTTB.ItemId=m.ItemId
  --销售订单
  Update SaleOrderDTTB Set ItemCode=m.ItemCode,ItemPYCode=m.ItemPYCode,ItemName=m.ItemName,ItemSpc=m.ItemSpc,ItemPic=m.ItemPic,
  ItemUnit=m.ItemUnit,SubUnit=m.SubUnit,ExchRate=m.ExchRate,iFlag=m.iFlag from ItemTB m where SaleOrderDTTB.ItemId=m.ItemId
  --销售发货
  Update SaleSenderDTTB Set ItemCode=m.ItemCode,ItemPYCode=m.ItemPYCode,ItemName=m.ItemName,ItemSpc=m.ItemSpc,ItemPic=m.ItemPic,
  ItemUnit=m.ItemUnit,SubUnit=m.SubUnit,ExchRate=m.ExchRate,iFlag=m.iFlag from ItemTB m where SaleSenderDTTB.ItemId=m.ItemId  
  --BOM
  Update ItemBomDTTB Set ChildCode=m.ItemCode,ChildPYCode=m.ItemPYCode,ChildName=m.ItemName,ChildSpc=m.ItemSpc,ChildPic=m.ItemPic,
  ChildUnit=m.ItemUnit,ChildSubUnit=m.SubUnit,ChildExchRate=m.ExchRate,ChildiFlag=m.iFlag from ItemTB m where ItemBomDTTB.ChildId=m.ItemId    
  
end
--exec PrUpdateItemInfo
go
  

--表单检索
if exists(select name from sysobjects where name='prBillFind' and type='P')
    drop procedure dbo.prBillFind
go
create procedure dbo.prBillFind 
  @TableId varchar(50)
as
begin
  if @TableId='StockOrderHDTB'
  begin
    select 日期=a.OrderDate,单位=b.ObjectName,单号=a.StockOrderNO,制单人=a.MakeManName,
           信息=Convert(varchar(20),a.OrderDate,23)+'    |    '+a.StockOrderNO+'    |    '+IsNull(b.ObjectName,'')
    from StockOrderHDTB a left join vwObject b on a.PrvId=b.ObjectID 
    order by a.OrderDate Desc
  end
  if @TableId='StockReceHDTB'
  begin
    select 日期=a.ReceDate,单位=b.ObjectName,单号=a.StockReceNo,制单人=a.MakeManName,
           信息=Convert(varchar(20),a.ReceDate,23)+'    |    '+a.StockReceNo+'    |    '+IsNull(b.ObjectName,'')
    from StockReceHDTB a left join vwObject b on a.PrvId=b.ObjectID 
    order by a.ReceDate Desc
  end
  if @TableId='SaleOrderHDTB'
  begin
    select 日期=a.OrderDate,单位=b.ObjectName,单号=a.SaleOrderNo,制单人=a.MakeManName,
           信息=Convert(varchar(20),a.OrderDate,23)+'    |    '+a.SaleOrderNo+'    |    '+IsNull(b.ObjectName,'')
    from SaleOrderHDTB a left join vwObject b on a.CustId=b.ObjectID
    order by a.OrderDate  Desc
  end
  if @TableId='SaleSenderHDTB'
  begin
    select 日期=a.SenderDate,单位=b.ObjectName,单号=a.SenderNo,制单人=a.MakeManName,
           信息=Convert(varchar(20),a.SenderDate,23)+'    |    '+a.SenderNo+'    |    '+IsNull(b.ObjectName,'')
    from SaleSenderHDTB a left join vwObject b on a.CustId=b.ObjectID
    order by a.SenderDate  Desc
  end
  if (@TableId='StockIn') or (@TableId='ProductIn')  or (@TableId='OtherIn')  or (@TableId='AssistIn')  
  or (@TableId='MatOut') or (@TableId='SaleOut') or (@TableId='OtherOut') or (@TableId='AssistOut')
  begin
	select 日期=a.BillDate,单位=b.ObjectName,单号=a.BillNO,制单人=a.MakeManName,
		信息=Convert(varchar(20),a.BillDate,23)+'    |    '+a.BillNO+'    |    '+IsNull(b.ObjectName,'')
	from WareInOutHDTB a left join vwObject b on a.ObjectID=b.ObjectID 
	where a.WKindID=@TableId
	order by a.BillDate Desc
  end
  if @TableId='ProOrderHDTB'
  begin
    select 日期=a.MrpDate,单位='',单号=a.ProOrderNo,制单人=a.MakeManName,
           信息=Convert(varchar(20),a.MrpDate,23)+'    |    '+a.ProOrderNo+'    |    '+a.MakeManName
    from ProOrderHDTB a
    order by a.MrpDate  Desc
  end
  if @TableId='EmpWorkRecord'
  begin
    select 日期=a.BillDate,单位=Convert(varchar(20),a.StartDate,23)+'---'+Convert(varchar(20),a.EndDate,23),单号=a.BillNo,制单人=a.MakeManName,
           信息=Convert(varchar(20),a.BillDate,23)+'    |    '+Convert(varchar(20),a.StartDate,23)+'---'+Convert(varchar(20),a.EndDate,23)+'    |    '+a.MakeManName
    from EmpWorkRecordHDTB a
    order by a.BillDate  Desc
  end
end
--exec prBillFind 'ProOrderHDTB'
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
    select a.Tag,b.MetroInfo from SysMenuTB a left join vwMetroInfo b on a.Tag=b.Tag
  end
  else
  begin
    select a.Tag,c.MetroInfo from SysMenuTB a left join UserRightTB b on a.Tag=b.Tag
    left join vwMetroInfo c on a.Tag=c.Tag
    where b.UserId=@sLoginId and (ISNULL(b.bShow,0)=1 or ISNULL(a.bPublic,0)=1)
  end
  
end
--exec 
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
	    select 客户编号=a.CustId,客户名称=c.CustName,未收款金额=Sum(a.SignFlag*ISNULL(b.InvoiceMoney,0))-ISNULL(m.PayMoney,0),
		记账金额=Sum(a.SignFlag*ISNULL(b.InvoiceMoney,0)),已收款金额=ISNULL(m.PayMoney,0),
		收款率=ISNULL(m.PayMoney,0)/dbo.IsZero(Sum(a.SignFlag*ISNULL(b.InvoiceMoney,0)),null)*100
		from SaleInvoiceHDTB a left join SaleInvoiceDTTB b on a.InvoiceNo=b.InvoiceNO
		left join CustTB c on a.CustId=c.CustId
		left join (select InvoiceNo,PayMoney=SUM(ISNULL(NowPayMoney,0)) from SalePayDTTB group by InvoiceNo)m on a.InvoiceNo=m.InvoiceNo
		where ISNULL(a.bMaxAudit,0)=1 
		group by a.CustId,c.CustName,m.PayMoney
		Having Sum(a.SignFlag*ISNULL(b.InvoiceMoney,0))>ISNULL(m.PayMoney,0)
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

--Exec prGeneralQ '采购订单未收货供应商查询',''
go


if Exists(select Name from sysobjects where name='prUpdateAMUser' and type='p')
  Drop procedure dbo.prUpdateAMUser
go
Create Procedure dbo.prUpdateAMUser
as
begin

  if not exists(select 1 from   master..sysdatabases   where   name='ActiveMsger')  --判读是否存在AM即时通讯软件的数据库
  begin
     select sResult='未检测到AM数据库,请检查是否已安装AM并将数据转置成SQL Server'
  end
  else
  begin
    --插入没有的账号
    Insert into ActiveMsger.dbo.TN_SYS_EM_USER(CN_LOGIN,CN_USER_NAME)
    select UserId,UserName from SysUserTB m where UserID not in(select CN_LOGIN from ActiveMsger.dbo.TN_SYS_EM_USER)

    --更新密码
    Update ActiveMsger.dbo.TN_SYS_EM_USER Set CN_PASSWORD=m.UserPass,CN_ENTYPE=1 from SysUserTB m where ActiveMsger.dbo.TN_SYS_EM_USER.CN_LOGIN=m.UserID
    
    select sResult='同步成功'
  end    
end
--exec prUpdateAMUser
go 

--获取我的预警类型
if exists(select name from sysobjects where name='prGetMyNoticeKind' and type='P')
    drop procedure dbo.prGetMyNoticeKind
go
create procedure dbo.prGetMyNoticeKind  @UserId varchar(50)
as
begin
   select Distinct a.NoticeKind from SysNoticeTB a left join SysNoticeEmpTB b on a.NoticeKind=b.NoticeKind  where IsNull(a.bStart,0)=1 and (b.UserId=@UserId or @UserId='admin' or a.bAllOpen=1)
end

--Exec prGetMyNoticeKind 'admin'
go

--获取我的预警
if exists(select name from sysobjects where name='prGetMyNotice' and type='P')
    drop procedure dbo.prGetMyNotice
go
create procedure dbo.prGetMyNotice  @UserId varchar(50),@NoticeKind varchar(200)
as
begin

  Create Table #MyNoticeTB (NoticeKind varchar(200),NoticeContent varchar(2000),FMId varchar(50),FMName varchar(50))
   

 --if Exists(select a.NoticeKind from SysNoticeTB a left join SysNoticeEmpTB b on a.NoticeKind=b.NoticeKind where a.NoticeKind=@NoticeKind and (b.UserId=@UserId or @UserId='admin' or a.bAllOpen=1)) 
  
  
   --安全库存预警 
  if @NoticeKind='安全库存预警' 
  begin

	    select NoticeKind=@NoticeKind,FMId='WareStorageQFM',FMName='库存查询',
		ItemKind=c.ItemKindId+'  '+c.ItemKindName,a.ItemId,a.ItemCode,a.ItemName,a.ItemSpc,
		b.WareNum,SafeStore=CONVERT(Numeric(18,2),ISNULL(a.SafeStore,0)),
		OverNum=CONVERT(Numeric(18,2),ISNULL(a.SafeStore,0)-ISNULL(b.WareNum,0))
		from ItemTB a left join vwItemStorage b on a.ItemId=b.ItemId
		left join ItemKindTB c on a.ItemKindId=c.ItemKindId
		where ISNULL(a.SafeStore,0)>0 and ISNULL(a.SafeStore,0)>ISNULL(b.WareNum,0)
  end   
  --销售出库预警
  if @NoticeKind='销售出库预警' 
  begin
		select FMId='SaleOutFM',FMName='销售出库单',a.OrderDate,a.SaleOrderNo,b.CompactNo,d.CustName,
				b.ItemCode,c.ItemName,c.ItemSpc,b.DeliverDate,b.OrderNum,b.OrderPrice,b.OrderMoney,b.AllMoney,
				m.SenderNum,NoSenderNum=ISNULL(b.OrderNum,0)-ISNULL(m.SenderNum,0),
				n.OutNum,NoOutNum=ISNULL(b.OrderNum,0)-ISNULL(n.OutNum,0)
		from SaleOrderHDTB a left join SaleOrderDTTB b on a.SaleOrderNo=b.SaleOrderNo
		left join ItemTB c on b.ItemID=c.ItemId
		left join CustTB d on a.CustId=d.CustId
		left join (select SenderNum=SUM(ISNULL(b.SenderNum,0)),b.SaleOrderId from SaleSenderHDTB a left join SaleSenderDTTB b on a.SenderNo=b.SenderNo
		where  b.SaleOrderId is not null group by b.SaleOrderId)m on b.AutoNo=m.SaleOrderId
		left join (select OutNum=SUM(ISNULL(b.MainNum,0)),b.SaleOrderId from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO
		where a.WKindID='SaleOut' and b.SaleOrderId is not null group by b.SaleOrderId)n on b.AutoNo=n.SaleOrderId
		where b.DeliverDate<GETDATE() and ISNULL(b.OrderNum,0)>ISNULL(n.OutNum,0)
		order by a.CustId,b.DeliverDate
  end   
   
  
  --客户应收款预警 
  if @NoticeKind='客户应收款预警' 
  begin
		select NoticeKind=@NoticeKind,FMId='SalePayFM',FMName='收款单',a.CustId,c.CustName,
		SaleMoney=Convert(Numeric(18,2),Sum(a.SignFlag*ISNULL(b.InvoiceMoney,0))-Sum(ISNULL(m.PayMoney,0))),
		CreditMoney=Convert(Numeric(18,2),ISNULL(c.CreditMoney,0)),
		NeedSaleMoney=Convert(Numeric(18,2),Sum(a.SignFlag*ISNULL(b.InvoiceMoney,0))-Sum(ISNULL(m.PayMoney,0))-ISNULL(c.CreditMoney,0)),
		NeedSalePer=Convert(Numeric(18,2),(Sum(a.SignFlag*ISNULL(b.InvoiceMoney,0))-Sum(ISNULL(m.PayMoney,0))-ISNULL(c.CreditMoney,0))/dbo.IsZero(ISNULL(c.CreditMoney,0),null)*100)
		from SaleInvoiceHDTB a left join SaleInvoiceDTTB b on a.InvoiceNo=b.InvoiceNO
		left join CustTB c on a.CustId=c.CustId
		left join (select InvoiceNo,PayMoney=SUM(ISNULL(NowPayMoney,0)) from SalePayDTTB group by InvoiceNo)m on a.InvoiceNo=m.InvoiceNo
		where ISNULL(a.bMaxAudit,0)=1 and ISNULL(c.CreditMoney,0)>0
		group by a.CustId,c.CustName,c.CreditMoney
		Having Sum(a.SignFlag*ISNULL(b.InvoiceMoney,0))-Sum(ISNULL(m.PayMoney,0))>ISNULL(c.CreditMoney,0)
  end
 
 
  --Update #MyNoticeTB Set NoticeKind=#MyNoticeTB.NoticeKind+'('+Convert( varchar(20),m.KindCount)+'条)' from(select NoticeKind,KindCount=COUNT(NoticeKind) from #MyNoticeTB group by NoticeKind)m where #MyNoticeTB.NoticeKind=m.NoticeKind
	
       
end

--Exec prGetMyNotice 'admin','销售出库预警' 
go

--判断产品是否被引用
if Exists (select Name from Sysobjects Where Name='PrJudgeUseItem' and type='P')
  Drop Procedure PrJudgeUseItem
go
Create Procedure PrJudgeUseItem @ItemId varchar(200)
As
begin
  select Info='出入库单: '+BillNo+' 使用了该产品。不能删除' from WareInOutDTTB where ItemId=@ItemId
  Union all
  select Info='销售订单: '+SaleOrderNo+' 使用了该产品。不能删除' from SaleOrderDTTB where ItemId=@ItemId 
  Union all
  select Info='销售发货单: '+SaleOrderNo+' 使用了该产品。不能删除' from SaleSenderDTTB where ItemId=@ItemId 
end
--exec PrJudgeUseItem '01010001'
go

--批量更新产品工艺信息
IF EXISTS (SELECT NAME FROM Sysobjects WHERE Name='prUpdateTechInfo' AND type='P')
  DROP PROCEDURE prUpdateTechInfo
go
CREATE PROCEDURE prUpdateTechInfo 
as 
begin
   Declare @ItemId varchar(100),@TechNo VARCHAR(30)
    --
   declare crItemTech Cursor for select distinct TechNo from ItemTechHDTB 
   open crItemTech
   Fetch Next from crItemTech into @TechNo
   while (@@Fetch_Status=0)
   begin
        --更新上下道工序
        Exec prUpdateItemTech @TechNo
        
        --更新是否外协        
        --Update ItemTechDTTB set TechParam='外协' where TechName like '%外%' and TechName not like '%外形%' 
        
	  Fetch Next from crItemTech into @TechNo
   end
   Close crItemTech
   Deallocate crItemTech
   
end
--exec prUpdateTechInfo
go

/*------------------------------表单初始化------------------------------*/

--单位表UnitSetTB初始化
if Not exists (select UnitName from UnitSetTB where UnitName='只')
  Insert into UnitSetTB(UnitId,UnitName,Remark)
   Values ('01','只','系统初始化')
if Not exists (select UnitName from UnitSetTB where UnitName='个')
  Insert into UnitSetTB(UnitId,UnitName,Remark)
   Values ('02','个','系统初始化')
if Not exists (select UnitName from UnitSetTB where UnitName='箱')
  Insert into UnitSetTB(UnitId,UnitName,Remark)
   Values ('03','箱','系统初始化')
if Not exists (select UnitName from UnitSetTB where UnitName='克')
  Insert into UnitSetTB(UnitId,UnitName,Remark)
   Values ('04','克','系统初始化')
if Not exists (select UnitName from UnitSetTB where UnitName='千克')
  Insert into UnitSetTB(UnitId,UnitName,Remark)
   Values ('05','千克','系统初始化')
if Not exists (select UnitName from UnitSetTB where UnitName='公斤')
  Insert into UnitSetTB(UnitId,UnitName,Remark)
   Values ('06','公斤','系统初始化')
if Not exists (select UnitName from UnitSetTB where UnitName='件')
  Insert into UnitSetTB(UnitId,UnitName,Remark)
   Values ('07','件','系统初始化')   
if Not exists (select UnitName from UnitSetTB where UnitName='支')
  Insert into UnitSetTB(UnitId,UnitName,Remark)
   Values ('08','支','系统初始化')
if Not exists (select UnitName from UnitSetTB where UnitName='把')
  Insert into UnitSetTB(UnitId,UnitName,Remark)
   Values ('09','把','系统初始化')
if Not exists (select UnitName from UnitSetTB where UnitName='套')
  Insert into UnitSetTB(UnitId,UnitName,Remark)
   Values ('10','套','系统初始化')
if Not exists (select UnitName from UnitSetTB where UnitName='份')
  Insert into UnitSetTB(UnitId,UnitName,Remark)
   Values ('11','份','系统初始化')   
go

--币种表CurrencyTB初始化
if Not exists (select CurrName from CurrencyTB where CurrName='人民币')
  Insert into CurrencyTB(CurrId,CurrName,CurrGlyph,bLocal,ExchangeRate,Remark)
    Values ('RMB','人民币','￥',1,1,'系统初始化')
if Not exists (select CurrName from CurrencyTB where CurrName='美元')
  Insert into CurrencyTB(CurrId,CurrName,CurrGlyph,bLocal,ExchangeRate,Remark)
    Values ('USD','美元','$',0,6.66,'系统初始化')
if Not exists (select CurrName from CurrencyTB where CurrName='欧元')
  Insert into CurrencyTB(CurrId,CurrName,CurrGlyph,bLocal,ExchangeRate,Remark)
    Values ('EUR','欧元','€',0,9.08,'系统初始化')
go
    
--银行表BankTB初始化
 if Not exists (select BankName from BankTB where BankName='中国银行')
  Insert into BankTB(BankName,Remark)
    Values ('中国银行','系统初始化')
 if Not exists (select BankName from BankTB where BankName='工商银行')
  Insert into BankTB(BankName,Remark)
    Values ('工商银行','系统初始化')
 if Not exists (select BankName from BankTB where BankName='建设银行')
  Insert into BankTB(BankName,Remark)
    Values ('建设银行','系统初始化')
 if Not exists (select BankName from BankTB where BankName='农业银行')
  Insert into BankTB(BankName,Remark)
    Values ('农业银行','系统初始化')
 if Not exists (select BankName from BankTB where BankName='交通银行')
  Insert into BankTB(BankName,Remark)
    Values ('交通银行','系统初始化')
 if Not exists (select BankName from BankTB where BankName='台州银行')
  Insert into BankTB(BankName,Remark)
    Values ('台州银行','系统初始化') 
go
    
--运输方式表TraffModeTB初始化
 if Not exists (select ModeName from TraffModeTB where ModeName='路运')
  Insert into TraffModeTB(ModeName,Remark)
    Values ('路运','系统初始化')    
 if Not exists (select ModeName from TraffModeTB where ModeName='海运')
  Insert into TraffModeTB(ModeName,Remark)
    Values ('海运','系统初始化')    
go  

--结算方式表PayModeTB初始化
if Not exists (select PayModeName from PayModeTB where PayModeName='现金')
  Insert into PayModeTB(PayModeId,PayModeName,PayModeKind,Remark)
   Values ('01','现金','付款或收款','系统初始化')  
if Not exists (select PayModeName from PayModeTB where PayModeName='支票')
  Insert into PayModeTB(PayModeId,PayModeName,PayModeKind,Remark)
   Values ('02','支票','付款或收款','系统初始化')  
if Not exists (select PayModeName from PayModeTB where PayModeName='汇款')
  Insert into PayModeTB(PayModeId,PayModeName,PayModeKind,Remark)
   Values ('03','汇款','付款或收款','系统初始化')
if Not exists (select PayModeName from PayModeTB where PayModeName='承兑')
  Insert into PayModeTB(PayModeId,PayModeName,PayModeKind,Remark)
   Values ('04','承兑','付款或收款','系统初始化')
if Not exists (select PayModeName from PayModeTB where PayModeName='银行转账')
  Insert into PayModeTB(PayModeId,PayModeName,PayModeKind,Remark)
   Values ('05','银行转账','付款或收款','系统初始化')       
go  
    
    
    
--出入库类别初始化
if not Exists (select WKindId from WareKindTB where WKindId='StockIn')
   Insert WareKindTB(WKindId,WKindName,WFlag,sDefWare,bOther,bInOther,bOutOther,bChangePrice,bDefault)
        Values('StockIn','采购入库',1,'',0,0,0,0,1)
if not Exists (select WKindId from WareKindTB where WKindId='AssistIn')
   Insert WareKindTB(WKindId,WKindName,WFlag,sDefWare,bOther,bInOther,bOutOther,bChangePrice,bDefault)
        Values('AssistIn','外协入库',1,'',0,0,0,0,1)      
if not Exists (select WKindId from WareKindTB where WKindId='ProductIn')
   Insert WareKindTB(WKindId,WKindName,WFlag,sDefWare,bOther,bInOther,bOutOther,bChangePrice,bDefault)
        Values('ProductIn','产品入库',1,'',0,0,0,0,1) 
if not Exists (select WKindId from WareKindTB where WKindId='OtherIn')
   Insert WareKindTB(WKindId,WKindName,WFlag,sDefWare,bOther,bInOther,bOutOther,bChangePrice,bDefault)
        Values('OtherIn','其他入库',1,'',1,1,0,0,1)  
if not Exists (select WKindId from WareKindTB where WKindId='CheckMoreIn')
   Insert WareKindTB(WKindId,WKindName,WFlag,sDefWare,bOther,bInOther,bOutOther,bChangePrice,bDefault)
        Values('CheckMoreIn','盘盈入库',1,'',1,1,0,0,1)                                
if not Exists (select WKindId from WareKindTB where WKindId='ItemMoveIn')
   Insert WareKindTB(WKindId,WKindName,WFlag,sDefWare,bOther,bInOther,bOutOther,bChangePrice,bDefault)
        Values('ItemMoveIn','调拨入库',1,'',1,1,0,0,1)
if not Exists (select WKindId from WareKindTB where WKindId='ItemSwitchIn')
   Insert WareKindTB(WKindId,WKindName,WFlag,sDefWare,bOther,bInOther,bOutOther,bChangePrice,bDefault)
        Values('ItemSwitchIn','转换入库',1,'',1,1,0,0,1)

if not Exists (select WKindId from WareKindTB where WKindId='MatOut')
   Insert WareKindTB(WKindId,WKindName,WFlag,sDefWare,bOther,bInOther,bOutOther,bChangePrice,bDefault)
        Values('MatOut','发料出库',-1,'',0,0,0,0,1)       
if not Exists (select WKindId from WareKindTB where WKindId='AssistOut')
   Insert WareKindTB(WKindId,WKindName,WFlag,sDefWare,bOther,bInOther,bOutOther,bChangePrice,bDefault)
        Values('AssistOut','外协出库',-1,'',0,0,0,0,1)        
if not Exists (select WKindId from WareKindTB where WKindId='SaleOut')
   Insert WareKindTB(WKindId,WKindName,WFlag,sDefWare,bOther,bInOther,bOutOther,bChangePrice,bDefault)
        Values('SaleOut','销售出库',-1,'',0,0,0,0,1)                 
if not Exists (select WKindId from WareKindTB where WKindId='OtherOut')
   Insert WareKindTB(WKindId,WKindName,WFlag,sDefWare,bOther,bInOther,bOutOther,bChangePrice,bDefault)
        Values('OtherOut','其他出库',-1,'',1,0,1,0,1)                       
if not Exists (select WKindId from WareKindTB where WKindId='CheckLossOut')
   Insert WareKindTB(WKindId,WKindName,WFlag,sDefWare,bOther,bInOther,bOutOther,bChangePrice,bDefault)
        Values('CheckLossOut','盘亏出库',-1,'',1,0,1,0,1)   
if not Exists (select WKindId from WareKindTB where WKindId='ItemMoveOut')
   Insert WareKindTB(WKindId,WKindName,WFlag,sDefWare,bOther,bInOther,bOutOther,bChangePrice,bDefault)
        Values('ItemMoveOut','调拨出库',-1,'',1,0,1,0,1)
if not Exists (select WKindId from WareKindTB where WKindId='ItemSwitchOut')
   Insert WareKindTB(WKindId,WKindName,WFlag,sDefWare,bOther,bInOther,bOutOther,bChangePrice,bDefault)
        Values('ItemSwitchOut','转换出库',-1,'',1,0,1,0,1)                                 
go  

--消息发送类型初始化
if not exists (select AcitonKind from PreSendMsgTB where AcitonKind='销售订单保存')
  insert into PreSendMsgTB(SendId,FMId,FMName,AcitonKind,Title1,Content1)
     Values(dbo.fnGetAutoNo('',GetDate()),'SaleOrderFM','销售订单','销售订单保存','销售订单保存','有销售订单已经下单存稿') 
go        
  
--预警内容初始化
if not exists (select NoticeKind from SysNoticeTB where NoticeKind='安全库存预警')
  insert into SysNoticeTB(NoticeKind,FMId,FMName,NoticeContent,bStart,bAllOpen,SqlText)
     Values('安全库存预警','WareStorageQFM','库存查询','库存数量小于安全库存',1,1,'') 
if not exists (select NoticeKind from SysNoticeTB where NoticeKind='销售出库预警')
  insert into SysNoticeTB(NoticeKind,FMId,FMName,NoticeContent,bStart,bAllOpen,SqlText)
     Values('销售出库预警','SaleOutFM','销售出库单','售订单中的交货日期已到，但还未出库的销售订单',0,1,'')      
if not exists (select NoticeKind from SysNoticeTB where NoticeKind='客户应收款预警')
  insert into SysNoticeTB(NoticeKind,FMId,FMName,NoticeContent,bStart,bAllOpen,SqlText)
     Values('客户应收款预警','SalePayFM','收款单','客户应收款项超过其设置信用额度',0,1,'') 
go
   
   
--用户登录表SysUserTB初始化
if not exists (select UserId from SysUserTB where UserId='admin')
   Insert into SysUserTB (UserId,UserName,UserPass,EmpId)
  Values ('admin','系统管理员','','admin')
go
 
--系统菜单SysMenuTB初始化
if not exists (select Tag from SysMenuTB where Tag='10')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('00','00','菜单管理','00','菜单管理',0) 
     --资料管理
if not exists (select Tag from SysMenuTB where Tag='10')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('10','00','资料管理','10','资料管理',0)
if not exists (select Tag from SysMenuTB where Tag='1001')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1001','10','地区资料','10','资料管理',0)
if not exists (select Tag from SysMenuTB where Tag='1002')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1002','10','仓库资料','10','资料管理',0)
if not exists (select Tag from SysMenuTB where Tag='1003')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1003','10','属性资料','10','资料管理',0)
if not exists (select Tag from SysMenuTB where Tag='1004')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1004','10','颜色资料','10','资料管理',0)          
if not exists (select Tag from SysMenuTB where Tag='1005')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1005','10','供应商类别','10','资料管理',0) 
if not exists (select Tag from SysMenuTB where Tag='1006')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1006','10','供应商资料','10','资料管理',0)
if not exists (select Tag from SysMenuTB where Tag='1007')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1007','10','客户类别资料','10','资料管理',0)
 if not exists (select Tag from SysMenuTB where Tag='1008')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1008','10','客户资料','10','资料管理',0)
if not exists (select Tag from SysMenuTB where Tag='1009')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1009','10','部门资料','10','资料管理',0)   
if not exists (select Tag from SysMenuTB where Tag='1010')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1010','10','员工资料','10','资料管理',0)    
if not exists (select Tag from SysMenuTB where Tag='1011')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1011','10','产品类别','10','资料管理',0)           
if not exists (select Tag from SysMenuTB where Tag='1012')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1012','10','产品资料','10','资料管理',0)
if not exists (select Tag from SysMenuTB where Tag='1013')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1013','10','产品清单','10','资料管理',0)       
if not exists (select Tag from SysMenuTB where Tag='1014')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1014','10','其他设置','10','资料管理',0) 
if not exists (select Tag from SysMenuTB where Tag='1016')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1016','10','产品清单分析','10','资料管理',0)            
go     
     --采购管理     
if not exists (select Tag from SysMenuTB where Tag='11')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('11','00','采购管理','11','采购管理',0)  
if not exists (select Tag from SysMenuTB where Tag='1101')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1101','11','采购价格表','11','采购管理',0)                         
if not exists (select Tag from SysMenuTB where Tag='1102')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1102','11','请购单','11','采购管理',0)
if not exists (select Tag from SysMenuTB where Tag='1108')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1108','11','采购订单','11','采购管理',0) 
if not exists (select Tag from SysMenuTB where Tag='1110')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1110','11','采购收货单','11','采购管理',0) 
if not exists (select Tag from SysMenuTB where Tag='1125')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1125','11','请购单查询','11','采购管理',0)           
if not exists (select Tag from SysMenuTB where Tag='1126')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1126','11','采购订单查询','11','采购管理',0) 
if not exists (select Tag from SysMenuTB where Tag='1127')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1127','11','采购收货单查询','11','采购管理',0) 
--if not exists (select Tag from SysMenuTB where Tag='1108')
--  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
--     Values('1108','11','采购分析','11','采购管理',0) 
go     
     --销售管理     
if not exists (select Tag from SysMenuTB where Tag='12')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('12','00','销售管理','12','销售管理',0)  
if not exists (select Tag from SysMenuTB where Tag='1201')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1201','12','销售价格表','12','销售管理',0)                         
--if not exists (select Tag from SysMenuTB where Tag='1202')
--  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
--     Values('1202','12','销售报价单','12','销售管理',0)
if not exists (select Tag from SysMenuTB where Tag='1203')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1203','12','销售订单','12','销售管理',0) 
if not exists (select Tag from SysMenuTB where Tag='1204')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1204','12','销售发货单','12','销售管理',0) 
--if not exists (select Tag from SysMenuTB where Tag='1205')
--  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
--     Values('1205','12','订单BOM','12','销售管理',0)           
if not exists (select Tag from SysMenuTB where Tag='1206')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1206','12','销售订单查询','12','销售管理',0) 
if not exists (select Tag from SysMenuTB where Tag='1207')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1207','12','销售发货单查询','12','销售管理',0) 
if not exists (select Tag from SysMenuTB where Tag='1210')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1210','12','客户销售分析','12','销售管理',0) 
if not exists (select Tag from SysMenuTB where Tag='1213')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1213','12','产品销售分析','12','销售管理',0) 
go     
          
     --仓库管理     
if not exists (select Tag from SysMenuTB where Tag='13')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('13','00','仓库管理','13','仓库管理',0)  
if not exists (select Tag from SysMenuTB where Tag='1301')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1301','13','期初登记','13','仓库管理',0)  
if not exists (select Tag from SysMenuTB where Tag='1302')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1302','13','入库管理','13','仓库管理',0)  
if not exists (select Tag from SysMenuTB where Tag='130201')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('130201','1302','采购入库','13','仓库管理',0)   
if not exists (select Tag from SysMenuTB where Tag='130204')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('130204','1302','产品入库','13','仓库管理',0) 
if not exists (select Tag from SysMenuTB where Tag='130206')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('130206','1302','外协入库','13','仓库管理',0)       
if not exists (select Tag from SysMenuTB where Tag='130209')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('130209','1302','其他入库','13','仓库管理',0) 
if not exists (select Tag from SysMenuTB where Tag='130220')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('130220','1302','盘盈入库','13','仓库管理',0)      
if not exists (select Tag from SysMenuTB where Tag='130222')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('130222','1302','调拨入库','13','仓库管理',0) 
          
if not exists (select Tag from SysMenuTB where Tag='1303')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1303','13','出库管理','13','仓库管理',0)  
if not exists (select Tag from SysMenuTB where Tag='130301')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('130301','1303','发料出库','13','仓库管理',0) 
if not exists (select Tag from SysMenuTB where Tag='130304')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('130304','1303','销售出库','13','仓库管理',0) 
if not exists (select Tag from SysMenuTB where Tag='130306')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('130306','1303','外协出库','13','仓库管理',0)        
if not exists (select Tag from SysMenuTB where Tag='130309')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('130309','1303','其他出库','13','仓库管理',0)       
if not exists (select Tag from SysMenuTB where Tag='130320')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('130320','1303','盘亏出库','13','仓库管理',0)      
if not exists (select Tag from SysMenuTB where Tag='130322')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('130322','1303','调拨出库','13','仓库管理',0)   
                                               
if not exists (select Tag from SysMenuTB where Tag='1304')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1304','13','仓库盘点','13','仓库管理',0)
if not exists (select Tag from SysMenuTB where Tag='1305')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1305','13','存货调拨','13','仓库管理',0)
--if not exists (select Tag from SysMenuTB where Tag='1306')
--  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
--     Values('1306','13','存货调价','13','仓库管理',0)        
if not exists (select Tag from SysMenuTB where Tag='1307')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1307','13','形态转换','13','仓库管理',0) 
if not exists (select Tag from SysMenuTB where Tag='1308')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1308','13','仓库月结','13','仓库管理',0)
     
     
if not exists (select Tag from SysMenuTB where Tag='1320')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1320','13','库存查询','13','仓库管理',0)
if not exists (select Tag from SysMenuTB where Tag='1321')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1321','13','出入库查询','13','仓库管理',0)                                                     
if not exists (select Tag from SysMenuTB where Tag='1322')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1322','13','收发存月报','13','仓库管理',0)
if not exists (select Tag from SysMenuTB where Tag='1325')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1325','13','库存预警分析','13','仓库管理',0) 
if not exists (select Tag from SysMenuTB where Tag='1327')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1327','13','出入库汇总','13','仓库管理',0)           
     
if not exists (select Tag from SysMenuTB where Tag='1340')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1340','13','形态转换查询','13','仓库管理',0) 
if not exists (select Tag from SysMenuTB where Tag='1343')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1343','13','BOM发料查询','13','仓库管理',0)           
go
 --外协管理   
      
if not exists (select Tag from SysMenuTB where Tag='14')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('14','00','外协管理','14','外协管理',0)  
if not exists (select Tag from SysMenuTB where Tag='1405')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1405','14','外协领料','14','外协管理',0)
if not exists (select Tag from SysMenuTB where Tag='1407')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1407','14','外协加工入库','14','外协管理',0)
if not exists (select Tag from SysMenuTB where Tag='1410')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1410','14','外协返工出库','14','外协管理',0)
if not exists (select Tag from SysMenuTB where Tag='1447')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1447','14','外协返工出库查询','14','外协管理',0)    
if not exists (select Tag from SysMenuTB where Tag='1441')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1441','14','外协发料查询','14','外协管理',0)
if not exists (select Tag from SysMenuTB where Tag='1445')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1445','14','外协加工入库查询','14','外协管理',0)  
if not exists (select Tag from SysMenuTB where Tag='1450')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1450','14','外协往来查询','14','外协管理',0)                   
go

 --生产管理   
      
if not exists (select Tag from SysMenuTB where Tag='15')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('15','00','生产管理','15','生产管理',0)  
if not exists (select Tag from SysMenuTB where Tag='1502')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1502','15','基础工序','15','生产管理',0)  
if not exists (select Tag from SysMenuTB where Tag='1504')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1504','15','产品工艺','15','生产管理',0)        
if not exists (select Tag from SysMenuTB where Tag='1510')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1510','15','生产订单','15','生产管理',0)
if not exists (select Tag from SysMenuTB where Tag='1515')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1515','15','生产派工单','15','生产管理',0)
if not exists (select Tag from SysMenuTB where Tag='1520')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1520','15','员工生产记录单','15','生产管理',0)     
 if not exists (select Tag from SysMenuTB where Tag='1551')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1551','15','生产订单报表','15','生产管理',0) 
if not exists (select Tag from SysMenuTB where Tag='1555')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1555','15','生产派工单报表','15','生产管理',0) 
if not exists (select Tag from SysMenuTB where Tag='1557')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1557','15','员工生产记录报表','15','生产管理',0)         
if not exists (select Tag from SysMenuTB where Tag='1558')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1558','15','订单用料分析','15','生产管理',0)     
if not exists (select Tag from SysMenuTB where Tag='1560')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1560','15','生产进度跟踪','15','生产管理',0)              
go


 --车间管理   
      
if not exists (select Tag from SysMenuTB where Tag='16')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('16','00','车间管理','16','车间管理',0) 
if not exists (select Tag from SysMenuTB where Tag='1603')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1603','16','领料申请单','16','车间管理',0)         
if not exists (select Tag from SysMenuTB where Tag='1605')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1605','16','车间领料','16','车间管理',0)
if not exists (select Tag from SysMenuTB where Tag='1607')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1607','16','车间加工入库','16','车间管理',0)
if not exists (select Tag from SysMenuTB where Tag='1610')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1610','16','车间返工出库','16','车间管理',0)     
if not exists (select Tag from SysMenuTB where Tag='1638')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1638','16','领料申请报表','16','车间管理',0)
if not exists (select Tag from SysMenuTB where Tag='1641')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1641','16','车间发料查询','16','车间管理',0)
if not exists (select Tag from SysMenuTB where Tag='1645')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1645','16','车间加工入库查询','16','车间管理',0)
if not exists (select Tag from SysMenuTB where Tag='1647')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1647','16','车间返工出库查询','16','车间管理',0)                    
go

     
 --账款管理   
      
if not exists (select Tag from SysMenuTB where Tag='17')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('17','00','账款管理','17','账款管理',0)  
--应付 
if not exists (select Tag from SysMenuTB where Tag='1701')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1701','17','应付期初登记','17','账款管理',0)
if not exists (select Tag from SysMenuTB where Tag='1702')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1702','17','应付记账','17','账款管理',0)
if not exists (select Tag from SysMenuTB where Tag='1703')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1703','17','付款单','17','账款管理',0)
if not exists (select Tag from SysMenuTB where Tag='1704')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1704','17','应付月结','17','账款管理',0) 
                   
if not exists (select Tag from SysMenuTB where Tag='1709')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1709','17','应付报表','17','账款管理',0)     
if not exists (select Tag from SysMenuTB where Tag='170901')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('170901','17','应付分析','1709','账款管理',0) 
if not exists (select Tag from SysMenuTB where Tag='170904')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('170904','1709','应付账龄表','17','账款管理',0)            
 
--应收
if not exists (select Tag from SysMenuTB where Tag='1711')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1711','17','应收期初登记','17','账款管理',0)
if not exists (select Tag from SysMenuTB where Tag='1712')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1712','17','应收记账','17','账款管理',0)
if not exists (select Tag from SysMenuTB where Tag='1713')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1713','17','收款单','17','账款管理',0)
if not exists (select Tag from SysMenuTB where Tag='1714')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1714','17','应收月结','17','账款管理',0) 
                   
if not exists (select Tag from SysMenuTB where Tag='1719')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1719','17','应收报表','17','账款管理',0)     
if not exists (select Tag from SysMenuTB where Tag='171901')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('171901','17','应收分析','1719','账款管理',0) 
if not exists (select Tag from SysMenuTB where Tag='171904')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('171904','1719','应收账龄表','17','账款管理',0)                                    
go

--财务管理  
if not exists (select Tag from SysMenuTB where Tag='18')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('18','00','财务管理','18','财务管理',0) 
if not exists (select Tag from SysMenuTB where Tag='1801')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1801','18','基础设置','18','财务管理',0)      
if not exists (select Tag from SysMenuTB where Tag='180103')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('180103','1801','账户设置','18','财务管理',0)         
if not exists (select Tag from SysMenuTB where Tag='180105')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('180105','1801','收支项目','18','财务管理',0)
if not exists (select Tag from SysMenuTB where Tag='180110')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('180110','1801','会计科目','18','财务管理',0)
if not exists (select Tag from SysMenuTB where Tag='180130')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('180130','1801','其他设置','18','财务管理',0)               
if not exists (select Tag from SysMenuTB where Tag='1803')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('1803','18','出纳管理','18','财务管理',0)     
if not exists (select Tag from SysMenuTB where Tag='180301')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('180301','1803','出纳期初','18','财务管理',0) 
if not exists (select Tag from SysMenuTB where Tag='180303')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('180303','1803','出纳现金账','18','财务管理',0) 
if not exists (select Tag from SysMenuTB where Tag='180305')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('180305','1803','出纳银行账','18','财务管理',0) 
if not exists (select Tag from SysMenuTB where Tag='180307')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('180307','1803','出纳转账','18','财务管理',0)  
if not exists (select Tag from SysMenuTB where Tag='180315')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('180315','1803','出纳月结','18','财务管理',0)               
go

--系统管理      
if not exists (select Tag from SysMenuTB where Tag='20')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('20','00','系统管理','20','系统管理',0)  
if not exists (select Tag from SysMenuTB where Tag='2001')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('2001','20','系统设置','20','系统管理',0)                         
if not exists (select Tag from SysMenuTB where Tag='2002')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('2002','20','用户管理','20','系统管理',0)
if not exists (select Tag from SysMenuTB where Tag='2003')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('2003','20','密码修改','20','系统管理',0) 
if not exists (select Tag from SysMenuTB where Tag='2004')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('2004','20','权限设置','20','系统管理',0) 
if not exists (select Tag from SysMenuTB where Tag='2005')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('2005','20','表单设置','20','系统管理',0) 
if not exists (select Tag from SysMenuTB where Tag='2006')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('2006','20','打印模板','20','系统管理',0)                
if not exists (select Tag from SysMenuTB where Tag='2007')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('2007','20','数据库维护','20','系统管理',0) 
if not exists (select Tag from SysMenuTB where Tag='2009')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('2009','20','日志查询','20','系4统管理',0)
if not exists (select Tag from SysMenuTB where Tag='2010')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('2010','20','财务月份','20','系统管理',0) 
if not exists (select Tag from SysMenuTB where Tag='2029')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('2029','20','菜单设置','20','系统管理',1)
if not exists (select Tag from SysMenuTB where Tag='2013')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('2013','20','消息设置','20','系统管理',0)
if not exists (select Tag from SysMenuTB where Tag='2015')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('2015','20','桌面设置','20','系统管理',0)                               
if not exists (select Tag from SysMenuTB where Tag='2030')
  insert into SysMenuTB(Tag,pTag,MenuName,MouldId,MouldName,bPublic)
     Values('2030','20','退出系统','20','系统管理',1) 
   
     
go       
                               
--数据表单初始化

if not exists(select TableId from SysTableSetTB where TableId='00')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
     values('00','00','表单管理',0,null,0,0,1,'00','表单管理','00','00')
     --资料管理     
if not exists(select TableId from SysTableSetTB where TableId='10')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
    values('10','10','资料管理',0,null,0,0,1,'10','资料管理','10','00')
if not exists(select TableId from SysTableSetTB where TableId='AreaTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('AreaTB','AreaTB','地区资料',0,null,0,0,1,'10','资料管理','1001','10')
if not exists(select TableId from SysTableSetTB where TableId='WareTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('WareTB','WareTB','仓库资料',0,null,0,0,1,'10','资料管理','1002','10')
if not exists(select TableId from SysTableSetTB where TableId='ProTypeTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ProTypeTB','ProTypeTB','属性资料',0,null,0,0,1,'10','资料管理','1003','10')
if not exists(select TableId from SysTableSetTB where TableId='ColorTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ColorTB','ColorTB','颜色资料',0,null,0,0,1,'10','资料管理','1004','10')              
if not exists(select TableId from SysTableSetTB where TableId='PrvKindTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('PrvKindTB','PrvKindTB','供应商类别',0,null,0,0,1,'10','资料管理','1005','10')                        
if not exists(select TableId from SysTableSetTB where TableId='ProviderTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ProviderTB','ProviderTB','供应商资料',0,'P',0,0,1,'10','资料管理','1006','10')
if not exists(select TableId from SysTableSetTB where TableId='CustKindTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('CustKindTB','CustKindTB','客户类别资料',0,null,0,0,1,'10','资料管理','1007','10')       
if not exists(select TableId from SysTableSetTB where TableId='CustTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('CustTB','CustTB','客户资料',0,'C',0,0,1,'10','资料管理','1008','10')  
if not exists(select TableId from SysTableSetTB where TableId='DeptTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('DeptTB','DeptTB','部门资料',0,null,0,0,1,'10','资料管理','1009','10') 
if not exists(select TableId from SysTableSetTB where TableId='EmployeeTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('EmployeeTB','EmployeeTB','员工资料',0,'E',0,0,1,'10','资料管理','1010','10')                        
if not exists(select TableId from SysTableSetTB where TableId='ItemKindTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ItemKindTB','ItemKindTB','产品类别',0,null,0,0,1,'10','资料管理','1011','10')   
if not exists(select TableId from SysTableSetTB where TableId='ItemTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ItemTB','ItemTB','产品资料',0,null,0,0,1,'10','资料管理','1012','10') 
if not exists(select TableId from SysTableSetTB where TableId='ItemBomHDTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ItemBomHDTB','ItemBomHDTB','产品清单',1,'BOM',1,0,1,'10','资料管理','1013','10')   
if not exists(select TableId from SysTableSetTB where TableId='OtherSetTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('OtherSetTB','OtherSetTB','其他设置',0,null,0,0,1,'10','资料管理','1014','10')
if not exists(select TableId from SysTableSetTB where TableId='ItemBomAnalyse')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ItemBomAnalyse','ItemBomAnalyse','产品清单分析',1,'',1,0,1,'10','资料管理','1016','10')                          
go        
                         
       --采购管理
if not exists(select TableId from SysTableSetTB where TableId='11')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
    values('11','11','采购管理',0,null,0,0,1,'10','采购管理','11','00')
if not exists(select TableId from SysTableSetTB where TableId='StockPriceTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('StockPriceTB','StockPriceTB','采购价格表',0,null,0,0,1,'11','采购管理','1101','11') 
if not exists(select TableId from SysTableSetTB where TableId='RequireHDTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('RequireHDTB','RequireHDTB','请购单',1,'QGD',1,0,1,'11','采购管理','1102','11') 
if not exists(select TableId from SysTableSetTB where TableId='StockOrderHDTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('StockOrderHDTB','StockOrderHDTB','采购订单',1,'CGDD',1,0,1,'11','采购管理','1108','11') 
if not exists(select TableId from SysTableSetTB where TableId='StockReceHDTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('StockReceHDTB','StockReceHDTB','采购收货单',1,'CGSH',1,0,1,'11','采购管理','1110','11')  
if not exists(select TableId from SysTableSetTB where TableId='RequireQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('RequireQ','RequireQ','请购单查询',0,'',0,0,1,'11','采购管理','1125','11')
if not exists(select TableId from SysTableSetTB where TableId='StockOrderQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('StockOrderQ','StockOrderQ','采购订单查询',0,'',0,0,1,'11','采购管理','1126','11')                                 
if not exists(select TableId from SysTableSetTB where TableId='StockReceQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('StockReceQ','StockReceQ','采购收货单查询',0,'',0,0,1,'11','采购管理','1127','11')      
--if not exists(select TableId from SysTableSetTB where TableId='StockAnaly')
--  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
--       values('StockAnaly','StockAnaly','采购分析',0,'',0,0,1,'11','采购管理','1108','11')  
go       
       --销售管理
if not exists(select TableId from SysTableSetTB where TableId='12')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
    values('12','12','销售管理',0,null,0,0,1,'10','销售管理','12','00')
if not exists(select TableId from SysTableSetTB where TableId='SalePrice')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('SalePrice','SalePrice','销售价格表',0,null,0,0,1,'12','销售管理','1201','12') 
--if not exists(select TableId from SysTableSetTB where TableId='SaleQuoteHDTB')
--  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
--       values('SaleQuoteHDTB','SaleQuoteHDTB','销售报价单',1,'XSBJ',1,0,1,'12','销售管理','1202','12') 
if not exists(select TableId from SysTableSetTB where TableId='SaleOrderHDTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('SaleOrderHDTB','SaleOrderHDTB','销售订单',1,'XSDD',1,0,1,'12','销售管理','1203','12') 
if not exists(select TableId from SysTableSetTB where TableId='SaleSenderHDTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('SaleSenderHDTB','SaleSenderHDTB','销售发货单',1,'XSFH',1,0,1,'12','销售管理','1204','12') 
--if not exists(select TableId from SysTableSetTB where TableId='OrderBom')
--  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
--       values('OrderBom','OrderBom','订单BOM',1,'DDBOM',1,0,1,'12','销售管理','1205','12')
if not exists(select TableId from SysTableSetTB where TableId='SaleOrderQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('SaleOrderQ','SaleOrderQ','销售订单查询',0,'',0,0,1,'12','销售管理','1206','12')                                 
if not exists(select TableId from SysTableSetTB where TableId='SaleSenderQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('SaleSenderQ','SaleSenderQ','销售发货单查询',0,'',0,0,1,'12','销售管理','1207','12')
if not exists(select TableId from SysTableSetTB where TableId='SaleQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('SaleQ','SaleQ','客户销售分析',0,'',0,0,1,'12','销售管理','1210','12')          
if not exists(select TableId from SysTableSetTB where TableId='ItemSaleQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ItemSaleQ','ItemSaleQ','产品销售分析',0,'',0,0,1,'12','销售管理','1213','12')     
go               
     --仓库管理 
if not exists(select TableId from SysTableSetTB where TableId='13')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
    values('13','13','仓库管理',0,null,0,0,1,'10','仓库管理','13','00')
if not exists(select TableId from SysTableSetTB where TableId='WareAccountTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('WareAccountTB','WareAccountTB','期初登记',0,null,0,0,1,'13','仓库管理','1301','13') 
if not exists(select TableId from SysTableSetTB where TableId='1302')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('1302','1302','入库管理',0,null,0,0,1,'13','仓库管理','1302','13') 
if not exists(select TableId from SysTableSetTB where TableId='StockIn')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('StockIn','WareInOutHDTB','采购入库',1,'CGRK',1,0,1,'13','仓库管理','130201','1302')
 if not exists(select TableId from SysTableSetTB where TableId='ProductIn')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ProductIn','WareInOutHDTB','产品入库',1,'CCPRK',1,0,1,'13','仓库管理','130204','1302') 
 if not exists(select TableId from SysTableSetTB where TableId='AssistIn')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('AssistIn','WareInOutHDTB','外协入库',1,'WXRK',1,0,1,'13','仓库管理','130206','1302')         
 if not exists(select TableId from SysTableSetTB where TableId='OtherIn')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('OtherIn','WareInOutHDTB','其他入库',1,'QTRK',1,0,1,'13','仓库管理','130209','1302')  
 if not exists(select TableId from SysTableSetTB where TableId='CheckMoreIn')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('CheckMoreIn','WareInOutHDTB','盘盈入库',1,'PYRK',1,0,1,'13','仓库管理','130220','1302')                  
 if not exists(select TableId from SysTableSetTB where TableId='ItemMoveIn')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ItemMoveIn','WareInOutHDTB','调拨入库',1,'DBRK',1,0,1,'13','仓库管理','130222','1302')  
if not exists(select TableId from SysTableSetTB where TableId='ItemSwitchIn')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ItemSwitchIn','WareInOutHDTB','转换入库',1,'ZHRK',1,0,1,'13','仓库管理','130225','1302') 
                    
if not exists(select TableId from SysTableSetTB where TableId='1303')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('1303','1303','出库管理',0,null,0,0,1,'13','仓库管理','1303','13') 
if not exists(select TableId from SysTableSetTB where TableId='MatOut')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('MatOut','WareInOutHDTB','发料出库',1,'FLCK',1,0,1,'13','仓库管理','130301','1303')                     
if not exists(select TableId from SysTableSetTB where TableId='SaleOut')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('SaleOut','WareInOutHDTB','销售出库',1,'XSCK',1,0,1,'13','仓库管理','130304','1303')
if not exists(select TableId from SysTableSetTB where TableId='AssistOut')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('AssistOut','WareInOutHDTB','外协出库',1,'WXCK',1,0,1,'13','仓库管理','130306','1303')          
if not exists(select TableId from SysTableSetTB where TableId='OtherOut')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('OtherOut','WareInOutHDTB','其他出库',1,'QTCK',1,0,1,'13','仓库管理','130309','1303')                         
if not exists(select TableId from SysTableSetTB where TableId='CheckLossOut')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('CheckLossOut','WareInOutHDTB','盘亏出库',1,'PKCK',1,0,1,'13','仓库管理','130320','1303')        
if not exists(select TableId from SysTableSetTB where TableId='ItemMoveOut')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ItemMoveOut','WareInOutHDTB','调拨出库',1,'DBCK',1,0,1,'13','仓库管理','130322','1303')   
if not exists(select TableId from SysTableSetTB where TableId='ItemSwitchOut')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ItemSwitchOut','WareInOutHDTB','转换出库',1,'ZHCK',1,0,1,'13','仓库管理','130325','1303')
              
if not exists(select TableId from SysTableSetTB where TableId='WareCheckHDTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('WareCheckHDTB','WareCheckHDTB','仓库盘点',1,'CKPD',1,0,1,'13','仓库管理','1304','13')     
if not exists(select TableId from SysTableSetTB where TableId='ItemMove')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ItemMove','ItemMoveHDTB','存货调拨',1,'CHDB',1,0,1,'13','仓库管理','1305','13')  
if not exists(select TableId from SysTableSetTB where TableId='ItemSwitch')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ItemSwitch','ItemSwitchHDTB','形态转换',1,'XTZH',1,0,1,'13','仓库管理','1307','13')                           
if not exists(select TableId from SysTableSetTB where TableId='WareMonthAccount')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('WareMonthAccount','WareMonthAccount','仓库月结',0,'',0,0,1,'1308','仓库管理管理','1308','13')
       
    
if not exists(select TableId from SysTableSetTB where TableId='WareStroageQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('WareStroageQ','WareStroageQ','库存查询',0,'',0,0,1,'13','仓库管理管理','1320','13')         
if not exists(select TableId from SysTableSetTB where TableId='WareInOutQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('WareInOutQ','WareInOutQ','出入库查询',0,'',0,0,1,'13','仓库管理管理','1321','13')   
if not exists(select TableId from SysTableSetTB where TableId='SFCMonQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('SFCMonQ','SFCMonQ','收发存月报',0,'',0,0,1,'13','仓库管理管理','1322','13')
if not exists(select TableId from SysTableSetTB where TableId='SafeStoreQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('SafeStoreQ','SafeStoreQ','库存预警分析',0,'',0,0,1,'13','仓库管理管理','1325','13')  
if not exists(select TableId from SysTableSetTB where TableId='WareInOutSumQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('WareInOutSumQ','WareInOutSumQ','出入库汇总',0,'',0,0,1,'13','仓库管理管理','1327','13')            
if not exists(select TableId from SysTableSetTB where TableId='ItemSwitchQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ItemSwitchQ','ItemSwitchQ','形态转换查询',0,'',0,0,1,'13','仓库管理管理','1340','13') 
if not exists(select TableId from SysTableSetTB where TableId='BOMMatOutQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('BOMMatOutQ','BOMMatOutQ','BOM发料查询',0,'',0,0,1,'13','仓库管理管理','1343','13')                       
go      
 --外协管理  
if not exists(select TableId from SysTableSetTB where TableId='14')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
    values('14','14','外协管理',0,null,0,0,1,'14','外协管理','14','00')
if not exists(select TableId from SysTableSetTB where TableId='AssistMove')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('AssistMove','ItemMoveHDTB','外协领料',1,'WXLL',1,0,1,'14','外协管理','1405','14') 
if not exists(select TableId from SysTableSetTB where TableId='AssistMoveIn')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('AssistMoveIn','ItemMoveHDTB','外协加工入库',1,'AMIN',1,0,1,'14','外协管理','1407','14') 
if not exists(select TableId from SysTableSetTB where TableId='AssistBack')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('AssistBack','ItemMoveHDTB','外协返工出库',1,'AMBK',1,0,1,'14','外协管理','1410','14')       
if not exists(select TableId from SysTableSetTB where TableId='AssistMoveQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('AssistMoveQ','AssistMoveQ','外协发料查询',0,'',0,0,1,'14','外协管理','1441','14')   
if not exists(select TableId from SysTableSetTB where TableId='AssistMoveInQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('AssistMoveInQ','AssistMoveInQ','外协加工入库查询',0,'',0,0,1,'14','外协管理','1445','14')
if not exists(select TableId from SysTableSetTB where TableId='AssistBackQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('AssistBackQ','AssistBackQ','外协返工出库查询',0,'',0,0,1,'14','外协管理','1447','14')
if not exists(select TableId from SysTableSetTB where TableId='AssistOutInQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('AssistOutInQ','AssistOutInQ','外协往来查询',0,'',0,0,1,'14','外协管理','1450','14')                        
go     

 --生产管理  
if not exists(select TableId from SysTableSetTB where TableId='15')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
    values('15','15','生产管理',0,null,0,0,1,'15','生产管理','15','00')
if not exists(select TableId from SysTableSetTB where TableId='BaseTechTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('BaseTechTB','BaseTechTB','基础工序',0,null,0,0,1,'10','生产管理','1502','10')  
if not exists(select TableId from SysTableSetTB where TableId='ItemTechHDTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ItemTechHDTB','ItemTechHDTB','产品工艺',1,'GY',1,0,1,'11','生产管理','1504','15')            
if not exists(select TableId from SysTableSetTB where TableId='ProOrderHDTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ProOrderHDTB','ProOrderHDTB','生产订单',1,'SCDD',1,0,1,'15','生产管理','1510','15') 
if not exists(select TableId from SysTableSetTB where TableId='ProDispatchHDTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ProDispatchHDTB','ProDispatchHDTB','生产派工单',1,'SCPG',1,0,1,'15','生产管理','1515','15') 
if not exists(select TableId from SysTableSetTB where TableId='EmpWorkRecord')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('EmpWorkRecord','EmpWorkRecordHDTB','员工生产记录单',1,'YGJL',1,0,1,'15','生产管理','1520','15') 
if not exists(select TableId from SysTableSetTB where TableId='ProOrderQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ProOrderQ','ProOrderQ','生产订单报表',0,'',0,0,1,'15','生产管理','1551','15') 
if not exists(select TableId from SysTableSetTB where TableId='ProDispatchQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ProDispatchQ','ProDispatchQ','生产派工单报表',0,'',0,0,1,'15','生产管理','1555','15')          
if not exists(select TableId from SysTableSetTB where TableId='EmpWorkRecordQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('EmpWorkRecordQ','EmpWorkRecordQ','员工生产记录报表',0,'',0,0,1,'15','生产管理','1557','15')     
if not exists(select TableId from SysTableSetTB where TableId='OrderMatQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('OrderMatQ','OrderMatQ','订单用料分析',0,'',0,0,1,'15','生产管理','1558','15')            
if not exists(select TableId from SysTableSetTB where TableId='ProProcessQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ProProcessQ','ProProcessQ','生产进度跟踪',0,'',0,0,1,'15','生产管理','1560','15')                                          
go  

 --车间管理  
if not exists(select TableId from SysTableSetTB where TableId='16')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
    values('16','16','车间管理',0,null,0,0,1,'16','车间管理','16','00')
if not exists(select TableId from SysTableSetTB where TableId='TakeMatApp')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('TakeMatApp','TakeMatAppHDTB','领料申请',1,'LLSQ',1,0,1,'16','车间管理','1603','16')     
if not exists(select TableId from SysTableSetTB where TableId='ShopMove')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ShopMove','ItemMoveHDTB','车间领料',1,'CJLL',1,0,1,'16','车间管理','1605','16') 
if not exists(select TableId from SysTableSetTB where TableId='ShopMoveIn')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ShopMoveIn','ItemMoveHDTB','车间加工入库',1,'SMIN',1,0,1,'16','车间管理','1607','16')
if not exists(select TableId from SysTableSetTB where TableId='ShopBack')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ShopBack','ItemMoveHDTB','车间返工出库',1,'SMBK',1,0,1,'16','车间管理','1610','16')       
if not exists(select TableId from SysTableSetTB where TableId='TakeMatAppQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('TakeMatAppQ','TakeMatAppQ','领料申请查询',0,'',0,0,1,'16','车间管理','1638','16')               
if not exists(select TableId from SysTableSetTB where TableId='ShopMoveQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ShopMoveQ','ShopMoveQ','车间发料查询',0,'',0,0,1,'16','车间管理','1641','16')   
if not exists(select TableId from SysTableSetTB where TableId='ShopMoveInQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ShopMoveInQ','ShopMoveInQ','车间加工入库查询',0,'',0,0,1,'16','车间管理','1645','16')
if not exists(select TableId from SysTableSetTB where TableId='ShopBackQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ShopBackQ','ShopBackQ','车间返工出库查询',0,'',0,0,1,'16','车间管理','1647','16')                
go       
              
   --账款管理
if not exists(select TableId from SysTableSetTB where TableId='17')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
    values('17','17','账款管理',0,null,0,0,1,'10','账款管理','17','00')
--应付
if not exists(select TableId from SysTableSetTB where TableId='StockAccountTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('StockAccountTB','StockAccountTB','应付期初登记',1,null,1,0,1,'17','账款管理','1701','17')    
if not exists(select TableId from SysTableSetTB where TableId='StockInvoiceHDTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('StockInvoiceHDTB','StockInvoiceHDTB','应付记账',1,'YFJZ',1,0,1,'17','账款管理','1702','17')
if not exists(select TableId from SysTableSetTB where TableId='StockPayHDTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('StockPayHDTB','StockPayHDTB','付款单',1,'FKJS',1,0,1,'17','账款管理','1703','17')                
if not exists(select TableId from SysTableSetTB where TableId='StockAccount')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('StockAccount','StockAccount','应付月结',1,null,1,0,1,'17','账款管理','1704','17')  
       
if not exists(select TableId from SysTableSetTB where TableId='1709')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('1709','1709','应付报表',0,null,0,0,1,'17','账款管理','1709','17')                          
if not exists(select TableId from SysTableSetTB where TableId='StockPayQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('StockPayQ','StockPayQ','应付分析',0,null,0,0,1,'17','账款管理','170901','1709') 
if not exists(select TableId from SysTableSetTB where TableId='StockAccountAgeQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('StockAccountAgeQ','StockAccountAgeQ','应付账龄表',0,'',0,0,1,'17','账款管理','170904','1709')          
       
--应收
if not exists(select TableId from SysTableSetTB where TableId='SaleAccountTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('SaleAccountTB','SaleAccountTB','应收期初登记',1,null,1,0,1,'17','账款管理','1711','17')    
if not exists(select TableId from SysTableSetTB where TableId='SaleInvoiceHDTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('SaleInvoiceHDTB','SaleInvoiceHDTB','应收记账',1,'YSJZ',1,0,1,'17','账款管理','1712','17')
if not exists(select TableId from SysTableSetTB where TableId='SalePayHDTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('SalePayHDTB','SalePayHDTB','收款单',1,'SKD',1,0,1,'17','账款管理','1713','17')                
if not exists(select TableId from SysTableSetTB where TableId='SaleAccount')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('SaleAccount','SaleAccount','应收月结',1,null,1,0,1,'17','账款管理','1714','17')  
       
if not exists(select TableId from SysTableSetTB where TableId='1719')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('1719','1719','应收报表',0,null,0,0,1,'17','账款管理','1719','17')                          
if not exists(select TableId from SysTableSetTB where TableId='SalePayQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('SalePayQ','SalePayQ','应收分析',0,null,0,0,1,'17','账款管理','171901','1719') 
if not exists(select TableId from SysTableSetTB where TableId='SaleAccountAgeQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('SaleAccountAgeQ','SaleAccountAgeQ','应收账龄表',0,'',0,0,1,'17','账款管理','171904','1719')        
go  

--财务管理  
if not exists(select TableId from SysTableSetTB where TableId='18')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
    values('18','18','财务管理',0,null,0,0,1,'18','财务管理','18','00')
if not exists(select TableId from SysTableSetTB where TableId='1801')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('1801','1801','基础设置',0,'',1,0,1,'18','财务管理','1801','18')     
if not exists(select TableId from SysTableSetTB where TableId='CNAccNameTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('CNAccNameTB','CNAccNameTB','账户设置',0,'',0,0,1,'18','财务管理','180103','1801')                    
if not exists(select TableId from SysTableSetTB where TableId='CNItemTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('CNItemTB','CNItemTB','收支项目',0,'',0,0,1,'18','财务管理','180105','1801')
if not exists(select TableId from SysTableSetTB where TableId='AccSubjectTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('AccSubjectTB','AccSubjectTB','会计科目',0,'',0,0,1,'18','财务管理','180110','1801')  
if not exists(select TableId from SysTableSetTB where TableId='CWOther')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('CWOther','CWOther','其他设置',0,'',0,0,1,'18','财务管理','180130','1801')                  
if not exists(select TableId from SysTableSetTB where TableId='1803')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('1803','1803','出纳管理',0,'',1,0,1,'18','财务管理','1803','18') 
if not exists(select TableId from SysTableSetTB where TableId='CNFirst')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('CNFirst','CNFirst','出纳期初',1,'',1,0,1,'18','财务管理','180301','1803')         
if not exists(select TableId from SysTableSetTB where TableId='CNCashQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('CNCashQ','CNBillTB','出纳现金账',1,'CNXJ',1,1,1,'18','财务管理','180303','1803') 
if not exists(select TableId from SysTableSetTB where TableId='CNBankQ')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('CNBankQ','CNBillTB','出纳银行账',1,'CNYH',1,1,1,'18','财务管理','180305','1803')  
if not exists(select TableId from SysTableSetTB where TableId='CNMove')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('CNMove','CNMoveTB','出纳转账',1,'CNYH',1,1,1,'18','财务管理','180307','1803') 
if not exists(select TableId from SysTableSetTB where TableId='CNAccountTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('CNAccountTB','CNAccountTB','出纳月结',1,'CNYJ',1,1,1,'18','财务管理','180315','1803')                                                              
go             
              
       --系统管理
if not exists(select TableId from SysTableSetTB where TableId='20')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
    values('20','20','系统管理',0,null,0,0,1,'20','系统管理','20','00')
if not exists(select TableId from SysTableSetTB where TableId='SysParamTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('SysParamTB','SysParamFM','系统设置',0,null,0,0,1,'20','系统管理','2001','20') 
if not exists(select TableId from SysTableSetTB where TableId='SysUserSetTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('SysUserSetTB','SysUserSetTB','用户设置',1,null,1,0,1,'20','系统管理','2002','20') 
if not exists(select TableId from SysTableSetTB where TableId='ChangePassFM')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ChangePassFM','ChangePassFM','修改密码',1,null,1,0,1,'20','系统管理','2003','20')  
if not exists(select TableId from SysTableSetTB where TableId='UserRightTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('UserRightTB','UserRightTB','权限设置',1,null,1,0,1,'20','系统管理','2004','20') 
if not exists(select TableId from SysTableSetTB where TableId='SysTableSetTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('SysTableSetTB','SysTableSetTB','表单设置',1,null,1,0,1,'20','系统管理','2005','20') 
if not exists(select TableId from SysTableSetTB where TableId='ReportSetTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('ReportSetTB','ReportSetTB','报表设置',1,null,1,0,1,'20','系统管理','2006','20')                              
if not exists(select TableId from SysTableSetTB where TableId='DataBackFM')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('DataBackFM','DataBackFM','数据库维护',1,null,1,0,1,'20','系统管理','2007','20')  
if not exists(select TableId from SysTableSetTB where TableId='SysLogQFM')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('SysLogQFM','SysLogQFM','日志查询',1,null,1,0,1,'20','系统管理','2009','20')
if not exists(select TableId from SysTableSetTB where TableId='FinanceDateFM')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('FinanceDateFM','FinanceDateFM','财务月份设置',1,null,1,0,1,'20','系统管理','2010','20') 
if not exists(select TableId from SysTableSetTB where TableId='PreSendMsgTB')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('PreSendMsgTB','PreSendMsgFM','消息设置',0,null,0,0,1,'20','系统管理','2013','20')   
if not exists(select TableId from SysTableSetTB where TableId='MainFormSet')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('MainFormSet','MainFormSet','桌面设置',0,null,0,0,1,'20','系统管理','2015','20') 
if not exists(select TableId from SysTableSetTB where TableId='SysExit')
  Insert into SysTableSetTB(TableId,TableName,TableDesc,MaxAuditLevel,TablePreFix,bAudit,bRight,bMenu,ModuleId,ModuleName,Tag,pTag) 
       values('SysExit','SysExit','退出系统',0,null,0,0,1,'20','系统管理','2030','20')                                        
go

--报表中心数据初始化



if not exists (select FMId from ReportSetTB where Tag='00')
   Insert Into ReportSetTB(FMId,FMName,ReportName,ReportFile,ReportKind,Tag,ParentTag)
     Values('00','窗体名称','','',1,'00','')   --插入窗体树根目录
--资料管理
if not exists(select FMId from ReportSetTB where ReportFile='资料管理')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag )
     values('10','资料管理','','资料管理',1,'10','00')
if not exists(select FMId from ReportSetTB where ReportFile='地区资料')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('AreaFM','地区资料','','地区资料',1,'1001','10')
if not exists(select FMId from ReportSetTB where ReportFile='仓库资料')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('WareFM','仓库资料','','仓库资料',1,'1002','10')
if not exists(select FMId from ReportSetTB where ReportFile='属性资料')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('ProTypeFM','属性资料','','属性资料',1,'1003','10')
if not exists(select FMId from ReportSetTB where ReportFile='颜色资料')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('ColorFM','颜色资料','','颜色资料',1,'1004','10')          
if not exists(select FMId from ReportSetTB where ReportFile='供应商类别')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('PrvKindFM','供应商类别','','供应商类别',1,'1005','10')     
if not exists(select FMId from ReportSetTB where ReportFile='供应商资料')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
    values('ProviderFM','供应商资料','','供应商资料',1,'1006','10')
if not exists(select FMId from ReportSetTB where ReportFile='客户类别')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('CustKindFM','客户类别','','客户类别',1,'1007','10')             
if not exists(select FMId from ReportSetTB where ReportFile='客户资料')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
    values('CustFM','客户资料','','客户资料',1,'1008','10')
if not exists(select FMId from ReportSetTB where ReportFile='部门资料')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
    values('DeptFM','部门资料','','部门资料',1,'1009','10')
if not exists(select FMId from ReportSetTB where ReportFile='员工资料')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
    values('EmployeeFM','员工资料','','员工资料',1,'1010','10') 
if not exists(select FMId from ReportSetTB where ReportFile='产品类别')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
    values('ItemKindFM','产品类别','','产品类别',1,'1011','10') 
if not exists(select FMId from ReportSetTB where ReportFile='产品资料')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
    values('ItemFM','产品资料','','产品资料',1,'1012','10') 
if not exists(select FMId from ReportSetTB where ReportFile='产品清单')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
    values('ItemBomFM','产品清单','','产品清单',1,'1013','10') 
if not exists(select FMId from ReportSetTB where ReportFile='其他设置')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
    values('OtherSetFM','其他设置','','其他设置',1,'1014','10')  
if not exists(select FMId from ReportSetTB where ReportFile='产品清单分析')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
    values('ItemBomAnalyseFM','产品清单分析','','产品清单分析',1,'1016','10')       
go        
--采购管理
if not exists(select FMId from ReportSetTB where ReportFile='采购管理')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('11','采购管理','','采购管理',1,'11','00') 
if not exists(select FMId from ReportSetTB where ReportFile='采购价格表')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('StockPriceFM','采购价格表','','采购价格表',1,'1101','11') 
if not exists(select FMId from ReportSetTB where ReportFile='请购单')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('RequireFM','请购单','','请购单',1,'1102','11')    
if not exists(select FMId from ReportSetTB where ReportFile='采购订单')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('StockOrderFM','采购订单','','采购订单',1,'1108','11')   
if not exists(select FMId from ReportSetTB where ReportFile='采购收货单')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('StockReceFM','采购收货单','','采购收货单',1,'1110','11')    
if not exists(select FMId from ReportSetTB where ReportFile='请购单查询')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('RequireQFM','请购单查询','','请购单查询',1,'1125','11')     
if not exists(select FMId from ReportSetTB where ReportFile='采购订单查询')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('StockOrderQFM','采购订单查询','','采购订单查询',1,'1126','11')     
if not exists(select FMId from ReportSetTB where ReportFile='采购收货单查询')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('StockReceQFM','采购收货单查询','','采购收货单查询',1,'1127','11')          
--if not exists(select FMId from ReportSetTB where ReportFile='采购分析')
--   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
--     values('StockAnalyFM','采购分析','','采购分析',1,'1108','11')  
go

--销售管理
if not exists(select FMId from ReportSetTB where ReportFile='销售管理')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('12','销售管理','','销售管理',1,'12','00') 
if not exists(select FMId from ReportSetTB where ReportFile='销售价格表')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('SalePrice','销售价格表','','销售价格表',1,'1201','12') 
--if not exists(select FMId from ReportSetTB where ReportFile='销售报价单')
--   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
--     values('SaleQuoteFM','销售报价单','','销售报价单',1,'1202','12')    
if not exists(select FMId from ReportSetTB where ReportFile='销售订单')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('SaleOrderFM','销售订单','','销售订单',1,'1203','12')   
if not exists(select FMId from ReportSetTB where ReportFile='销售发货单')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('SaleSenderFM','销售发货单','','销售发货单',1,'1204','12')     
--if not exists(select FMId from ReportSetTB where ReportFile='订单BOM')
--   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
--     values('OrderBomFM','订单BOM','','订单BOM',1,'1205','12')     
if not exists(select FMId from ReportSetTB where ReportFile='销售订单查询')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('SaleOrderQFM','销售订单查询','','销售订单查询',1,'1206','12')     
if not exists(select FMId from ReportSetTB where ReportFile='销售发货单查询')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('SaleSenderQFM','销售发货单查询','','销售发货单查询',1,'1207','12')           
if not exists(select FMId from ReportSetTB where ReportFile='客户销售分析')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('SaleQFM','客户销售分析','','客户销售分析',1,'1210','12') 
if not exists(select FMId from ReportSetTB where ReportFile='产品销售分析')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('ItemSaleQFM','产品销售分析','','产品销售分析',1,'1213','12') 
go          
--仓库管理 
if not exists(select FMId from ReportSetTB where ReportFile='仓库管理')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('13','仓库管理','','仓库管理',1,'13','00') 
if not exists(select FMId from ReportSetTB where ReportFile='期初登记')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('FirstBookFM','期初登记','','期初登记',1,'1301','13')
if not exists(select FMId from ReportSetTB where ReportFile='入库管理')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('1302','入库管理','','入库管理',1,'1302','13') 
if not exists(select FMId from ReportSetTB where ReportFile='采购入库')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('StockInFM','采购入库','','采购入库',1,'130201','1302')   
if not exists(select FMId from ReportSetTB where ReportFile='产品入库')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('ProductInFM','产品入库','','产品入库',1,'130204','1302')  
if not exists(select FMId from ReportSetTB where ReportFile='外协入库')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('AssistInFM','外协入库','','外协入库',1,'130206','1302')         
if not exists(select FMId from ReportSetTB where ReportFile='其他入库')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('OtherInFM','其他入库','','其他入库',1,'130209','1302')                        

if not exists(select FMId from ReportSetTB where ReportFile='出库管理')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('1303','出库管理','','出库管理',1,'1303','13')      
if not exists(select FMId from ReportSetTB where ReportFile='发料出库')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('MatOutFM','发料出库','','发料出库',1,'130301','1303') 
if not exists(select FMId from ReportSetTB where ReportFile='销售出库')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('SaleOutFM','销售出库','','销售出库',1,'130304','1303')  
if not exists(select FMId from ReportSetTB where ReportFile='外协出库')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('AssistOutFM','外协出库','','外协出库',1,'130306','1303')         
if not exists(select FMId from ReportSetTB where ReportFile='其他出库')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('OtherOutFM','其他出库','','其他出库',1,'130309','1303')  
                                            
if not exists(select FMId from ReportSetTB where ReportFile='仓库盘点')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('WareCheckFM','仓库盘点','','仓库盘点',1,'1304','13')  
if not exists(select FMId from ReportSetTB where ReportFile='存货调拨')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('ItemMoveFM','存货调拨','','存货调拨',1,'1305','13')      
if not exists(select FMId from ReportSetTB where ReportFile='形态转换')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('ItemSwitchFM','形态转换','','形态转换',1,'1307','13')                     
if not exists(select FMId from ReportSetTB where ReportFile='库存查询')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('WareStorageQ','库存查询','','库存查询',1,'1320','13')
if not exists(select FMId from ReportSetTB where ReportFile='出入库查询')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('WareInOutQ','出入库查询','','出入库查询',1,'1321','13')
if not exists(select FMId from ReportSetTB where ReportFile='收发存月报')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('SFCMonQ','收发存月报','','收发存月报',1,'1322','13') 
if not exists(select FMId from ReportSetTB where ReportFile='库存预警分析')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('SafeStoreQ','库存预警分析','','库存预警分析',1,'1325','13') 
if not exists(select FMId from ReportSetTB where ReportFile='出入库汇总')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('WareInOutSumQ','出入库汇总','','出入库汇总',1,'1327','13')              
if not exists(select FMId from ReportSetTB where ReportFile='形态转换查询')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('ItemSwitchQ','形态转换查询','','形态转换查询',1,'1340','13')
if not exists(select FMId from ReportSetTB where ReportFile='BOM发料查询')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('BOMMatOutQ','BOM发料查询','','BOM发料查询',1,'1343','13')          
go     
 --外协管理  
if not exists(select FMId from ReportSetTB where ReportFile='外协管理')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('14','外协管理','','外协管理',1,'14','00') 
if not exists(select FMId from ReportSetTB where ReportFile='外协领料')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('AssistMoveFM','外协领料','','外协领料',1,'1405','14')   
if not exists(select FMId from ReportSetTB where ReportFile='外协加工入库')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('AssistMoveInFM','外协加工入库','','外协加工入库',1,'1407','14') 
if not exists(select FMId from ReportSetTB where ReportFile='外协返工出库')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('AssistBackFM','外协返工出库','','外协返工出库',1,'1410','14')      
if not exists(select FMId from ReportSetTB where ReportFile='外协发料查询')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('AssistMoveQFM','外协发料查询','','外协发料查询',1,'1441','14')
if not exists(select FMId from ReportSetTB where ReportFile='外协加工入库查询')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('AssistMoveInQFM','外协加工入库查询','','外协加工入库查询',1,'1445','14')
if not exists(select FMId from ReportSetTB where ReportFile='外协返工出库查询')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('AssistBackQFM','外协返工出库查询','','外协返工出库查询',1,'1447','14') 
if not exists(select FMId from ReportSetTB where ReportFile='外协往来查询')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('AssistOutInQFM','外协往来查询','','外协往来查询',1,'1450','14')                   
go
     
 --生产管理  
if not exists(select FMId from ReportSetTB where ReportFile='生产管理')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('15','生产管理','','生产管理',1,'15','00')
if not exists(select FMId from ReportSetTB where ReportFile='基础工序')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('BaseTechFM','基础工序','','基础工序',1,'1502','10')    
if not exists(select FMId from ReportSetTB where ReportFile='产品工艺')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('ItemTechFM','产品工艺','','产品工艺',1,'1504','15')        
if not exists(select FMId from ReportSetTB where ReportFile='生产订单')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('ProOrderFM','生产订单','','生产订单',1,'1510','15')  
if not exists(select FMId from ReportSetTB where ReportFile='生产派工单')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('ProDispatchFM','生产派工单','','生产派工单',1,'1515','15')  
if not exists(select FMId from ReportSetTB where ReportFile='员工生产记录单')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('EmpWorkRecordFM','员工生产记录单','','员工生产记录单',1,'1520','15')
if not exists(select FMId from ReportSetTB where ReportFile='生产订单报表')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('ProOrderQFM','生产订单报表','','生产订单报表',1,'1551','15')
if not exists(select FMId from ReportSetTB where ReportFile='生产派工单报表')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('ProDispatchQFM','生产派工单报表','','生产派工单报表',1,'1555','15')       
if not exists(select FMId from ReportSetTB where ReportFile='员工生产记录报表')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('EmpWorkRecordQFM','员工生产记录报表','','员工生产记录报表',1,'1557','15')        
if not exists(select FMId from ReportSetTB where ReportFile='订单用料分析')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('OrderMatQFM','订单用料分析','','订单用料分析',1,'1558','15')    
if not exists(select FMId from ReportSetTB where ReportFile='生产进度分析')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('ProProcessQFM','生产进度跟踪','','生产进度分析',1,'1560','15')                            
go 

 --车间管理  
if not exists(select FMId from ReportSetTB where ReportFile='车间管理')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('16','车间管理','','车间管理',1,'16','00')
if not exists(select FMId from ReportSetTB where ReportFile='领料申请')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('TakeMatAppFM','领料申请','','领料申请',1,'1603','16')       
if not exists(select FMId from ReportSetTB where ReportFile='车间发料')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('ShopMoveFM','车间发料','','车间发料',1,'1605','16')   
if not exists(select FMId from ReportSetTB where ReportFile='车间加工入库')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('ShopMoveInFM','车间加工入库','','车间加工入库',1,'1607','16') 
if not exists(select FMId from ReportSetTB where ReportFile='车间返工出库')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('ShopBackFM','车间返工出库','','车间返工出库',1,'1610','16')      
if not exists(select FMId from ReportSetTB where ReportFile='领料申请查询')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('TakeMatAppQFM','领料申请查询','','领料申请查询',1,'1638','16') 
if not exists(select FMId from ReportSetTB where ReportFile='车间发料查询')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('ShopMoveQFM','车间发料查询','','车间发料查询',1,'1641','16')
if not exists(select FMId from ReportSetTB where ReportFile='车间加工入库查询')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('ShopMoveInQFM','车间加工入库查询','','车间加工入库查询',1,'1645','16')
if not exists(select FMId from ReportSetTB where ReportFile='车间返工出库查询')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('ShopBackQFM','车间返工出库查询','','车间返工出库查询',1,'1647','16')                
go
         
          
      --账款管理 
if not exists(select FMId from ReportSetTB where ReportFile='账款管理')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('17','账款管理','','账款管理',1,'17','00') 
--应付
if not exists(select FMId from ReportSetTB where ReportFile='应付期初登记')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('StockMainFM','应付期初登记','','应付期初登记',1,'1701','17')
if not exists(select FMId from ReportSetTB where ReportFile='应付记账')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('StockInvoiceFM','应付记账','','应付记账',1,'1702','17') 
if not exists(select FMId from ReportSetTB where ReportFile='付款单')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('StockPayFM','付款单','','付款单',1,'1703','17')   
if not exists(select FMId from ReportSetTB where ReportFile='应付月结')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('StockAccountFM','应付月结','','应付月结',1,'1704','17') 
if not exists(select FMId from ReportSetTB where ReportFile='应付报表')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('1709','应付报表','','应付报表',1,'1709','17')     
if not exists(select FMId from ReportSetTB where ReportFile='应付分析')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('StockPayQFM','应付分析','','应付分析',1,'170901','1709')
if not exists(select FMId from ReportSetTB where ReportFile='应付账龄表')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('StockAccountAgeQFM','应付账龄表','','应付账龄表',1,'170904','1709')      
     
--应收
if not exists(select FMId from ReportSetTB where ReportFile='应收期初登记')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('SaleMainFM','应收期初登记','','应收期初登记',1,'1711','17')
if not exists(select FMId from ReportSetTB where ReportFile='应收记账')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('SaleInvoiceFM','应收记账','','应收记账',1,'1712','17') 
if not exists(select FMId from ReportSetTB where ReportFile='收款单')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('SalePayFM','收款单','','收款单',1,'1713','17')   
if not exists(select FMId from ReportSetTB where ReportFile='应收月结')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('SaleAccountFM','应收月结','','应收月结',1,'1714','17')  
if not exists(select FMId from ReportSetTB where ReportFile='应收报表')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('1719','应收报表','','应收报表',1,'1719','17')     
if not exists(select FMId from ReportSetTB where ReportFile='应收分析')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('SalePayQFM','应收分析','','应收分析',1,'171901','1719')
if not exists(select FMId from ReportSetTB where ReportFile='应收账龄表')
   Insert into  ReportSetTB (FMId ,FMName,ReportName ,ReportFile ,ReportKind ,Tag,ParentTag  )
     values('SaleAccountAgeQFM','应收账龄表','','应收账龄表',1,'171904','1719')      
Go

-- Delete SysMenuTB where Tag in('1001','1004','1013','1016','1201','1203','1206','1213') or Tag like '11%'  or Tag like '13%'  or Tag like '14%' or Tag like '15%' or Tag like '16%' or Tag like '17%' or Tag like '18%'
--  
-- Delete SysTableSetTB where Tag in('1001','1004','1013','1016','1201','1203','1206','1213') or Tag like '11%'  or Tag like '13%'  or Tag like '14%' or Tag like '15%' or Tag like '16%' or Tag like '17%' or Tag like '18%'
--  
-- Delete ReportSetTB where Tag in('1001','1004','1013','1016','1201','1203','1206','1213') or Tag like '11%'  or Tag like '13%'  or Tag like '14%' or Tag like '15%' or Tag like '16%' or Tag like '17%' or Tag like '18%'
-- go