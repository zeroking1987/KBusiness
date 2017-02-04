unit DataPS;

interface

uses
  Windows, SysUtils, Classes, ImgList, Controls, cxGraphics, DB, ADODB, Dialogs, ExtDlgs, Forms,
  cxStyles, cxClasses, cxGridCardView, System.ImageList;

type
  TDataFM = class(TDataModule)
    cxImageList16: TcxImageList;
    cxImageList32: TcxImageList;
    Con: TADOConnection;
    qyTemp: TADOQuery;
    DlgOpen1: TOpenDialog;
    DlgOpenPic1: TOpenPictureDialog;
    DlgSave1: TSaveDialog;
    qyEmp: TADOQuery;
    qyDept: TADOQuery;
    qyArea: TADOQuery;
    qyCustKind: TADOQuery;
    qyPrvKind: TADOQuery;
    qyWare: TADOQuery;
    qyItemKind: TADOQuery;
    spTemp: TADOStoredProc;
    cxImageList24: TcxImageList;
    qySysTable: TADOQuery;
    qyUser: TADOQuery;
    qyItem: TADOQuery;
    cxstylrpstry1: TcxStyleRepository;
    cxStyNoEdit: TcxStyle;
    dsDept: TDataSource;
    qyNullPage: TADOQuery;
    qyPageContent: TADOQuery;
    qyPyCode: TADOQuery;
    qyPyCodeItemId: TStringField;
    qyPyCodeItemCode: TStringField;
    qyPyCodeItemPYCode: TStringField;
    qyPyCodeItemName: TStringField;
    dsPyCode: TDataSource;
    qyPrv: TADOQuery;
    qyCust: TADOQuery;
    qyType: TADOQuery;
    cxStyNum: TcxStyle;
    qyObject: TADOQuery;
    qyColor: TADOQuery;
    strngfldPyCodeItemSpc: TStringField;
    qyWareNum: TADOQuery;
    qyTimeNo: TADOQuery;
    qyPrTemp: TADOQuery;
    qyStockPrice: TADOQuery;
    qySalePrice: TADOQuery;
    cxStyle1: TcxStyle;
    qyWKind: TADOQuery;
    qyMetroInfo: TADOQuery;
    qyBaseTech: TADOQuery;
    qyCurr: TADOQuery;
    qyCNItem: TADOQuery;
    qyBank: TADOQuery;
    qyTraff: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataFM: TDataFM;

implementation

uses PublicPS, MainPS;
{$R *.dfm}

end.

