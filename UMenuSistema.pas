unit UMenuSistema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, jpeg, StdCtrls;

type
  TfMenuSistema = class(TForm)
    Panel1: TPanel;
    PanelPrincipal: TPanel;
    PanelTopMenu: TPanel;
    PanelLogoMenu: TPanel;
    PanelSideBar: TPanel;
    Panel10: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel12: TPanel;
    Panel11: TPanel;
    PanelMenu: TPanel;
    ImgFrutasMenu: TImage;
    Panel2: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Image2: TImage;
    Label2: TLabel;
    Image3: TImage;
    Label3: TLabel;
    Image4: TImage;
    Label4: TLabel;
    Image5: TImage;
    Label5: TLabel;
    Image6: TImage;
    Label6: TLabel;
    Image7: TImage;
    Label7: TLabel;
    Image8: TImage;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Image10: TImage;
    Label8: TLabel;
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMenuSistema : TfMenuSistema;
  bExpandido   : Boolean;
  
implementation

{$R *.dfm}

procedure TfMenuSistema.Image1Click(Sender: TObject);
begin

  if bExpandido then
  begin
    PanelSideBar.Width := 80;
  end
  else
  begin
    PanelSideBar.Width := 192;
  end;

  Image2.Visible     := not Image2.Visible;
  Image3.Visible     := not Image3.Visible;
  Image4.Visible     := not Image4.Visible;
  Image5.Visible     := not Image5.Visible;
  Image6.Visible     := not Image6.Visible;
  Image7.Visible     := not Image7.Visible;

  bExpandido := not bExpandido;
end;

end.
