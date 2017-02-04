--1.单据设置
if exists(select Name from sysobjects where name='SysBillSetTB' and type='U')
  Drop Table dbo.SysBillSetTB
Create Table dbo.SysBillSetTB
       (AutoId int Identity(1,1),bSelect bit default(0),
        Tag varchar (20) not null  Primary Key,pTag varchar(20) not null,BillId varchar(100) not null,BillName varchar(100) not null,TableName varchar(50),
        MaxAuditLevel smallint not null default(0),BillPreFix varchar(20),
        bAudit bit default(0),bRight bit default(0),bMenu bit Default(1),bShowPublic bit Default(0))
go


--产品资料表
if exists (select * from sysobjects where name='FK_WareAccountTB_ItemTB_ItemID' and type='F')
  Alter Table dbo.WareAccountTB DROP Constraint FK_WareAccountTB_ItemTB_ItemID
if exists (select * from sysobjects where name='FK_WareInOutDTTB_ItemTB_ItemID' and type='F')
  Alter Table dbo.WareInOutDTTB DROP Constraint FK_WareInOutDTTB_ItemTB_ItemID
if exists (select * from sysobjects where name='FK_WareStorageTB_ItemTB_ItemID' and type='F')
  Alter Table dbo.WareStorageTB DROP Constraint FK_WareStorageTB_ItemTB_ItemID

if exists(select Name from sysobjects where name='ItemTB' and type='U')
  Drop Table dbo.ItemTB
Create Table dbo.ItemTB
       (AutoId int Identity(1,1),bSelect bit default(0),ItemId varchar(30) not null Primary Key,ItemCode varchar(100),
        ItemName varchar(100) not null,ItemSpc varchar(100),ItemKindId varchar(50),ItemKindName varchar(50),Material VarChar(100),ISBN varchar(100),
        StockPrice numeric(18,5),SalePrice numeric(18,5),PicPath varchar(500),PicName varchar(80),
        ItemUnit varchar(10),ExchRate numeric(18,5) default(1),SubUnit varchar(10),iFlag Smallint default(0),
        MakeManName varchar(20),MakeDate Datetime,EditManName varchar(50),EditDate datetime,Remark varchar(300))
    
go

--2. 客户资料表（CustTB）：
if exists(select Name from sysobjects where name='CustTB' and type='U')
  Drop Table dbo.CustTB
Create Table dbo.CustTB
    (AutoId int Identity(1,1),bSelect bit Default(0),CustId varchar(30) not null primary key,CustCode varchar(30),
     CustName varchar(100) not null,CustShort varchar(30),CustAddress varchar(200),Saler VarChar(50),
     Principal varchar(20),LinkMan varchar(20),Mobile varchar(40),Tel varchar(40),Fax varchar(40),Bank varchar(100),CreditMoney Numeric(18,5) default(0),
     TaxRate Numeric(18,5),BankAcc varchar(30),PosCode varchar(20),TaxCode varchar(50),PayMode varchar(50),
     TrafficMode varchar(100),E_Mail varchar(50),WWW varchar(50),bStop bit Default(0),Remark varchar(500),
     MakeManName VarChar(20),MakeDate Datetime,EditManName varchar(20),EditDate DateTime)


--2. 供应商资料表（ProviderTB）：
if exists(select Name from sysobjects where name='ProviderTB' and type='U')
  Drop Table dbo.ProviderTB
Create Table dbo.ProviderTB
       (AutoId int Identity(1,1),bSelect bit Default(0),PrvId varchar(20) not null primary key,PrvCode varchar(30),
        PrvName varchar(100) not null,PrvShort varchar(30),PrvAddress varchar(200),
        Principal varchar(20),LinkMan varchar(20),Mobile varchar(40),Tel varchar(40),Fax varchar(40),CreditMoney Numeric(19,6) default(0),
        TaxRate Numeric(19,6),Bank varchar(100),BankAcc varchar(30),PosCode varchar(20),TaxCode varchar(100),TrafficMode varchar(100),E_Mail varchar(50),WWW varchar(50),
        bStop bit Default(0),Remark varchar(300),MakeManName VarChar(20),MakeDate Datetime,EditManName varchar(20),EditDate DateTime)
