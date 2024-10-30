unit uFrmIncluirProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, uConexao;

type
  TFrmIncluirProduto = class(TForm)
    btnCancelar: TBitBtn;
    btnConfirmar: TBitBtn;
    lblNome: TLabel;
    edtNome: TEdit;
    lblPreco: TLabel;
    edtPreco: TEdit;
    lblTitulo: TLabel;
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure Abrir;
    procedure IncluirDados(aux: boolean);
  end;

var
  FrmIncluirProduto: TFrmIncluirProduto;

implementation

{$R *.dfm}
{ TuFrmIncluirProduto }

class procedure TFrmIncluirProduto.Abrir;
begin
  Application.CreateForm(TFrmIncluirProduto, FrmIncluirProduto);
  FrmIncluirProduto.ShowModal;
end;

procedure TFrmIncluirProduto.btnConfirmarClick(Sender: TObject);
begin
  IncluirDados(true);
end;

procedure TFrmIncluirProduto.IncluirDados(aux: boolean);

begin
  DMconexao.IncluirAlterarBanco('0',edtNome.Text, edtPreco.Text, aux);
  Close;
end;

end.
