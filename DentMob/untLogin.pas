unit untLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.AndroidLike.Toast, FMX.Edit,
  FMX.Objects;

type
  TfrmLogin = class(TForm)
    Toast1: TToast;
    Button1: TButton;
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation
{$R *.fmx}
uses
  untPrincipal, untNovoUsuario;

procedure TfrmLogin.Button1Click(Sender: TObject);
begin
  if (Edit1.Text = '') and (Edit2.Text = '') then
  begin
    Toast1.Now('Todos os Campos Obrigatórios');
    Edit1.SetFocus;
  end
  else
  begin
    frmMnPrincipal.Show;
    Edit1.Text := '';
    Edit2.Text := '';
  end;
end;

procedure TfrmLogin.Button2Click(Sender: TObject);
begin
    frmNovoUsuario.Show;
end;

end.
