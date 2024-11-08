unit uConexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Phys.IBBase, uProduto;

type
  TDMconexao = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDTransaction1: TFDTransaction;
    FDQuery1: TFDQuery;
    FDQuery1ID: TIntegerField;
    FDQuery1NOME: TStringField;
    FDQuery1PRECO: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure IncluirAlterarBanco(id: string; nome: string; preco: string;
      pTipoOperacao: boolean);
    procedure CarregarGrid();
    function PegarIDProduto: integer;
    procedure Deletar(id: integer);
    function PesquisaProduto(id: string; nome: string): TProduto;
  end;

var
  DMconexao: TDMconexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TDMconexao }

procedure TDMconexao.CarregarGrid;
begin
  with FDQuery1 do
  begin
    Close;
    sql.Clear;
    sql.Add('select * from PRODUTOS');
    sql.Add('ORDER BY ID');
    Open;
  end;
end;

procedure TDMconexao.Deletar(id: integer);
begin
  with FDQuery1 do
  begin
    Close;
    sql.Clear;
    sql.Add('DELETE FROM produtos WHERE ID = ' + inttostr(id));
    ExecSQL;
  end;
end;

procedure TDMconexao.IncluirAlterarBanco(id: string; nome: string;
  preco: string; pTipoOperacao: boolean);
var
  Operacao: string;
begin
  if pTipoOperacao then
    Operacao := 'INSERT INTO produtos (NOME, PRECO) VALUES (upper(:pnome), :ppreco)'
  else
    Operacao :=
      'UPDATE produtos SET NOME = upper(:pnome), PRECO = :ppreco WHERE ID = ' + id;

  With FDQuery1 do
  Begin
    Close;
    sql.Clear;
    sql.Add(Operacao);
    ParamByName('pnome').AsString := nome;
    ParamByName('ppreco').AsCurrency := StrToCurr(preco);
    ExecSQL;
  End;
  CarregarGrid;
end;

function TDMconexao.PegarIDProduto: integer;
begin
  result := FDQuery1.FieldByName('id').Value;
end;

function TDMconexao.PesquisaProduto(id: string; nome: string): TProduto;
var
  vProduto: TProduto;
begin
  vProduto := TProduto.Create;
  with FDQuery1 do
  begin
    Close;
    sql.Clear;
    sql.Add('select * from PRODUTOS where id = :id or nome like upper(:nome)');
    ParamByName('id').Asstring := id;
    ParamByName('nome').AsString := nome;
    Open;
    vProduto.IDProduto := FieldByName('id').AsInteger;
    vProduto.nome := FieldByName('nome').AsString;
    vProduto.preco := FieldByName('preco').AsCurrency;
    Close;
  end;
  result := vProduto;
end;

end.
