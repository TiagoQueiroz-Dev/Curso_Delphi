unit uFrmAtualizarProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uProduto, uConexao;

type
  TFrmAtualizarProduto = class(TForm)
    btnCancelar: TButton;
    btnConfirmar: TButton;
    lblNome: TLabel;
    edtNome: TEdit;
    lblPreco: TLabel;
    edtPreco: TEdit;
    lblTitulo: TLabel;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  var
    FId: string;
    procedure Abrir(IdProduto: integer);
    procedure CarregarProdAtualiza(Id: integer);
    Procedure AtualizarProduto(aux: boolean);

  end;

var
  FrmAtualizarProduto: TFrmAtualizarProduto;

implementation

{$R *.dfm}
{ TFrmAtualizarProduto }

procedure TFrmAtualizarProduto.Abrir(IdProduto: integer);
begin
  if not Assigned(FrmAtualizarProduto) then
    Application.CreateForm(TFrmAtualizarProduto, FrmAtualizarProduto);
  try
    CarregarProdAtualiza(IdProduto);
    FrmAtualizarProduto.ShowModal;
  finally
    //FreeAndNil(FrmAtualizarProduto);
  end;
end;

procedure TFrmAtualizarProduto.AtualizarProduto(aux: boolean);
begin
  DMconexao.IncluirAlterarBanco(FId, edtNome.Text, edtPreco.Text, aux);
end;

procedure TFrmAtualizarProduto.btnCancelarClick(Sender: TObject);
begin
  Close;
  DMconexao.CarregarGrid;
  //FreeAndNil(FrmAtualizarProduto);
end;

procedure TFrmAtualizarProduto.btnConfirmarClick(Sender: TObject);
begin
  AtualizarProduto(False);
  Close;
end;

procedure TFrmAtualizarProduto.CarregarProdAtualiza(Id: integer);
begin
  try
    with DMconexao.FDQuery1 do
    begin
      SQL.Clear;
      SQL.Add('SELECT id,nome,preco FROM produtos WHERE id = ' + IntToStr(Id));
      Open;
      // ShowMessage(edtNome.Text);
      FId := IntToStr(Id);
      edtNome.Text := FieldByName('nome').AsString;
      edtPreco.Text := currtostr(FieldByName('preco').AsCurrency);
      Close;
    end;
  Except
    on E: Exception do
      // ShowMessage(E.Message);
  end;
  DMconexao.CarregarGrid;
end;

end.
