unit uFrmVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uFrmNovaVenda;

type
  TfrmVendas = class(TForm)
    btnNovaVenda: TButton;
    btnTodasVendas: TButton;
    procedure btnNovaVendaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure Abrir();
  end;

var
  frmVendas: TfrmVendas;

implementation

{$R *.dfm}
{ TfrmVendas }

class procedure TfrmVendas.Abrir;
begin
  if not Assigned(frmVendas) then
    Application.CreateForm(TfrmVendas, frmVendas);
  frmVendas.ShowModal;
end;

procedure TfrmVendas.btnNovaVendaClick(Sender: TObject);
begin
  FrmNovaVenda.Abrir;
end;

end.
