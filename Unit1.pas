unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Panel2: TPanel;
    pnLogin: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    btnLogin: TButton;
    edUN: TEdit;
    edPS: TEdit;
    pnMain: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edCode: TEdit;
    edAfm: TEdit;
    edName: TEdit;
    btnPost: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
  private
    { Private declarations }
    FSoftOne : OleVariant;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  ComObj;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FSoftOne := CreateOleObject('SoXplorer.SoConnection');
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FSoftOne:= Null;
  FSoftOne:= Unassigned;
end;

procedure TForm1.btnLoginClick(Sender: TObject);
begin
  FSoftOne.Login(edUN.Text, edPS.Text, 1, 1, SysUtils.Date);
  PnLogin.Enabled:= False;
  btnLogin.Enabled:= False;
  pnMain.Enabled:= True;
end;

procedure TForm1.btnPostClick(Sender: TObject);
var
  ACustObj : OleVariant;
  ACustTable: OleVariant;
  AError: string;
  AId: integer;
begin
  try
    ACustObj := FSoftOne.CreateObj('CUSTOMER');
    try
      ACustTable:= ACustObj.FindTable('CUSTOMER');
      ACustObj.DBInsert;
      ACustTable.Code := edCode.Text;
      ACustTable.Name := edName.Text;
      ACustTable.Afm := edafm.Text;
      AId:=ACustObj.DBPost;
      ShowMessage(format('Ο πελάτης : %s καταχωρήθηκε με ID %d',[edName.Text, AID]));
      edCode.Text:='';
      edAfm.Text:='';
      edName.Text:='';
    finally
      ACustObj:= Null;
      ACustObj:= Unassigned;
    end;
  except
    AError:=FSoftOne.GetLastError;
    if AError<>'' then
      raise Exception.Create(AError)
    else raise;  
  end;
end;

end.
