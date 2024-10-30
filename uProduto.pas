unit uProduto;

interface

type
  TProduto = class
  private
    FIDProduto: integer;
    FNome: string;
    FPreco: currency;

    procedure SetNome(const Value: string);
    procedure SetPreco(const Value: currency);
  public
    Constructor Create;
    Destructor Destroy; override;
    procedure SetIDProduto(const Value: integer);
  published
    property IDProduto: integer read FIDProduto write SetIDProduto;
    property Nome: string read FNome write SetNome;
    property Preco: currency read FPreco write SetPreco;
  end;

implementation

{ TProduto }

constructor TProduto.Create;
begin

end;

destructor TProduto.Destroy;
begin

  inherited;
end;

procedure TProduto.SetIDProduto(const Value: integer);
begin
  FIDProduto := Value;
end;

procedure TProduto.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TProduto.SetPreco(const Value: currency);
begin
  FPreco := Value;
end;

end.
