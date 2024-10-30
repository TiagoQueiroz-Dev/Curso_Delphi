unit uFrmNovaVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ExtCtrls, uFrmIncluirProduto, uConexao,
  uProduto;

type
  TFrmNovaVenda = class(TForm)
    lblNumeroVenda: TLabel;
    edtID: TEdit;
    edtNome: TEdit;
    edtQuantidade: TEdit;
    lblValorTotalProduto: TLabel;
    gridVendaProd: TDBGrid;
    btnIncluir: TButton;
    imgPesquisar: TImage;
    btnCancelar: TButton;
    btnConfirmar: TButton;
    lblValorToatalVenda: TLabel;
    procedure edtIDExit(Sender: TObject);
    procedure edtNomeExit(Sender: TObject);
    procedure edtQuantidadeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure Abrir;
  end;

var
  FrmNovaVenda: TFrmNovaVenda;

implementation

{$R *.dfm}
{ TFrmNovaVenda }

class procedure TFrmNovaVenda.Abrir;
begin
  if not Assigned(FrmNovaVenda) then
    Application.CreateForm(TFrmNovaVenda, FrmNovaVenda);
  try
    FrmNovaVenda.ShowModal;
  finally
    // FreeAndNil(FrmNovaVenda);
    FrmNovaVenda.edtID.Text := '';
    FrmNovaVenda.edtNome.Text := '';
  end;

end;

procedure TFrmNovaVenda.edtIDExit(Sender: TObject);
var
  vProduto: TProduto;
begin

  if edtID.Text <> '' then
  begin
    vProduto := DMconexao.PesquisaProduto(strtoint(edtID.Text), '');
    if vProduto.IDProduto <> 0 then
    begin
      try
        edtID.Text := inttostr(vProduto.IDProduto);
        edtNome.Text := vProduto.Nome;
        lblValorTotalProduto.Caption := CurrToStr(vProduto.Preco);
      finally
        FreeAndNil(vProduto);
      end;
    end
    else
    begin
      try
        ShowMessage('N�o existe produto com este ID');
      finally
        FreeAndNil(vProduto);
        FrmNovaVenda.edtID.Text := '';
        FrmNovaVenda.edtNome.Text := '';
        lblValorTotalProduto.Caption := 'Valor Total: ';
      end;
    end;
  end
  else
end;

procedure TFrmNovaVenda.edtNomeExit(Sender: TObject);
var
  vProduto: TProduto;
begin

  if edtNome.Text <> '' then
  begin
    vProduto := DMconexao.PesquisaProduto(-1, edtNome.Text);
    if vProduto.Nome <> '' then
    begin
      try
        edtID.Text := inttostr(vProduto.IDProduto);
        edtNome.Text := vProduto.Nome;
        lblValorTotalProduto.Caption := CurrToStr(vProduto.Preco);
      finally
        FreeAndNil(vProduto);
      end;
    end
    else
    begin
      try
        ShowMessage('N�o existe produto com este Nome');
      finally
        FreeAndNil(vProduto);
        FrmNovaVenda.edtID.Text := '';
        FrmNovaVenda.edtNome.Text := '';
        lblValorTotalProduto.Caption := 'Valor Total: ';
      end;
    end;
  end
  else
end;

procedure TFrmNovaVenda.edtQuantidadeChange(Sender: TObject);
begin
    lblValorTotalProduto.Caption := currtostr(strtocurr(lblValorTotalProduto.Caption) * strtocurr(edtQuantidade.Text));
end;

end.
