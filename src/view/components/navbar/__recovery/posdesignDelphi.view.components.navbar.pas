unit posdesignDelphi.view.components.navbar;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.Objects,
  FMX.Layouts;

type
  TComponentsNavBar = class(TForm)
    LayoutContainer: TLayout;
    Rectangle1: TRectangle;
    Layout1: TLayout;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
    function Build: TFMXObject;
  end;

var
  ComponentsNavBar: TComponentsNavBar;

implementation

{$R *.fmx}

function TComponentsNavBar.Build: TFMXObject;
begin
  Result := LayoutContainer;
end;

end.
