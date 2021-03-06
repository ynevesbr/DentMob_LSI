unit untDetailFunc;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  untPadrao, FMX.Objects, FMX.Layouts, FMX.MultiView, FMX.Controls.Presentation,
  FMX.Edit, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  TfrmDetailFunc = class(TfrmPadrao)
    VertScrollBox2: TVertScrollBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit8: TEdit;
    Edit4: TEdit;
    Edit7: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    SpeedButton1: TSpeedButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmDetailFunc: TfrmDetailFunc;

implementation

{$R *.fmx}
uses
  untListarFuncionarios, untDtMdl;

procedure TfrmDetailFunc.Button1Click(Sender: TObject);
begin
  inherited;
  frmListarFuncionario.Show;
  frmDetailFunc.Close;
end;

procedure TfrmDetailFunc.FormCreate(Sender: TObject);
begin
  inherited;
  Label11.Text := 'Detalhe Funcionário';
end;

end.
