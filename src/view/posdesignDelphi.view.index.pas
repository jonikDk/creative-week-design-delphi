unit posdesignDelphi.view.index;

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
  FMX.Layouts,
  Router4D,
  posdesignDelphi.view.pages.app;

type
  TPageIndex = class(TForm)
    LayoutContainer: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PageIndex: TPageIndex;

implementation

{$R *.fmx}

procedure TPageIndex.FormCreate(Sender: TObject);
begin
  TRouter4D.Render<TPageApp>.SetElement(LayoutContainer, LayoutContainer);
end;

end.
