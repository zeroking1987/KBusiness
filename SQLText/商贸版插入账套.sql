use Master
go
if exists(select Name from sysobjects where name='HCZtTB' and type='U')
  Drop Table dbo.HCZtTB
Create Table dbo.HCZtTB
 (AutoID int Identity(1,1) not null,ZTNo varchar(50) not null ,ZTName varchar(80) not null,DataBaseName varchar(50) not null primary key,
  bUser bit Default(1),BackFileName varchar(100),BackFilePath varchar(1000),Remark varchar(50),MakeDate DateTime Default(GetDate()) )
go
if not exists (Select ZTNo from HCZtTB where DataBaseName='HJBusiness')
   insert into HCZtTB(ZTNo,ZTName,DataBaseName)
        Values('01','恒捷商贸版','HJBusiness') 
if not exists (Select ZTNo from HCZtTB where DataBaseName='ShaChang')
   insert into HCZtTB(ZTNo,ZTName,DataBaseName)
        Values('02','砂石场(绿色版)','ShaChang') 
if not exists (Select ZTNo from HCZtTB where DataBaseName='HaoFengG')
   insert into HCZtTB(ZTNo,ZTName,DataBaseName)
        Values('03','浩峰电器(绿色版)','HaoFengG') 
                                                  