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
    procedure edtIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtQuantidadeExit(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure edtNomeExit(Sender: TObject);
  private
    FInfoProduto: TProduto;
    { Private declarations }
  public
    { Public declarations }
    class procedure Abrir;
    procedure AtribuirInfoProduto(id: string; nome: string);
    procedure ZerarCampos;
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
    FrmNovaVenda.ZerarCampos;
  end;

end;

procedure TFrmNovaVenda.AtribuirInfoProduto(id: string; nome: string);
begin
  // colocar um if para se tiver criado ele dar um free and nill para gerar outro objeto
  if Assigned(FInfoProduto) then
    FreeAndNil(FInfoProduto);
  FInfoProduto := DMconexao.PesquisaProduto(id, nome);
end;

procedure TFrmNovaVenda.btnIncluirClick(Sender: TObject);
begin
  FreeAndNil(FInfoProduto);
  ShowMessage('liberado');
end;

procedure TFrmNovaVenda.edtIDExit(Sender: TObject);
begin
  if Trim(edtID.Text) <> '' then
  begin
    AtribuirInfoProduto(edtID.Text, '');
    if FInfoProduto.IDProduto <> 0 then
    begin
      edtNome.Text := FInfoProduto.nome;
      edtID.Text := inttostr(FInfoProduto.IDProduto);
      edtQuantidade.Text := '1';
      edtQuantidadeExit(nil);
      edtQuantidade.SetFocus;
    end
    else
    begin
      ShowMessage('abre a tela de pesquisa (ainda n�o existe)');
      ZerarCampos;
      edtID.SetFocus;
    end;

  end;

end;

procedure TFrmNovaVenda.edtIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFrmNovaVenda.edtNomeExit(Sender: TObject);
begin
  if Trim(edtNome.Text) <> '' then
  begin
    AtribuirInfoProduto('0', edtNome.Text);
    if FInfoProduto.Nome <> '' then
    begin
      edtNome.Text := FInfoProduto.nome;
      edtID.Text := inttostr(FInfoProduto.IDProduto);
      edtQuantidade.Text := '1';
      edtQuantidadeExit(nil);
      edtQuantidade.SetFocus;
    end
    else
    begin
      ShowMessage('abre a tela de pesquisa (ainda n�o existe)');
      ZerarCampos;
      edtNome.SetFocus;
    end;
  end;
end;

procedure TFrmNovaVenda.edtQuantidadeExit(Sender: TObject);
begin
  lblValorTotalProduto.Caption := 'Valor total: ' +
    currtostr(FInfoProduto.Preco * strtoint(edtQuantidade.Text));
end;

procedure TFrmNovaVenda.ZerarCampos;
begin
  edtID.Text := '';
  edtNome.Text := '';
  edtQuantidade.Text := '1';
  lblValorTotalProduto.Caption := 'Valor total:';
end;

end.
