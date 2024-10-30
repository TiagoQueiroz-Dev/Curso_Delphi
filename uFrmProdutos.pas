unit uFrmProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uConexao, Data.DB,
  Vcl.Grids, Vcl.DBGrids, uFrmIncluirProduto, uFrmAtualizarProduto, uProduto;

type
  TfrmProdutos = class(TForm)
    btnAdicionar: TButton;
    btnAlterar: TButton;
    btnDeletar: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    btnVoltar: TButton;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
  private
    { functions }
    { procedures }
  public
    { class procedures }
  var
    ID: integer;
    class procedure Abrir;
  end;

var
  frmProdutos: TfrmProdutos;

implementation

{$R *.dfm}
{ TfrmProdutos }

class procedure TfrmProdutos.Abrir;
begin
  if not Assigned(frmProdutos) then
    Application.CreateForm(TfrmProdutos, frmProdutos);
  with frmProdutos do
    try
      // Chamei o formulario
      ShowModal;
    finally
      FreeAndNil(frmProdutos);
    end;
end;

procedure TfrmProdutos.btnAdicionarClick(Sender: TObject);
begin
  FrmIncluirProduto.Abrir;
end;

procedure TfrmProdutos.btnAlterarClick(Sender: TObject);
begin
  FrmAtualizarProduto.Abrir(ID);
end;

procedure TfrmProdutos.btnDeletarClick(Sender: TObject);
begin
  DMconexao.Deletar(ID);
  DMconexao.CarregarGrid;
end;

procedure TfrmProdutos.btnVoltarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmProdutos.DBGrid1CellClick(Column: TColumn);
begin
  ID := DMconexao.PegarIDProduto;
  // ShowMessage(inttostr(ID));
end;

end.
