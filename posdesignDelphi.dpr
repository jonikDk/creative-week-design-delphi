program posdesignDelphi;

{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  posdesignDelphi.view.index in 'src\view\posdesignDelphi.view.index.pas' {PageIndex},
  posdesignDelphi.view.source.routes in 'src\view\source\posdesignDelphi.view.source.routes.pas',
  posdesignDelphi.view.pages.app in 'src\view\pages\posdesignDelphi.view.pages.app.pas' {PageApp},
  posdesignDelphi.view.components.navbar in 'src\view\components\navbar\posdesignDelphi.view.components.navbar.pas' {ComponentsNavBar},
  posdesignDelphi.view.source.utils in 'src\view\source\posdesignDelphi.view.source.utils.pas',
  posdesignDelphi.view.components.button in 'src\view\components\button\posdesignDelphi.view.components.button.pas' {ComponentButton},
  posdesignDelphi.view.pages.main in 'src\view\pages\posdesignDelphi.view.pages.main.pas' {PageMain},
  posdesignDelphi.view.components.itemcard in 'src\view\components\itemcard\posdesignDelphi.view.components.itemcard.pas' {ComponentCard},
  posdesignDelphi.view.components.itemcategory in 'src\view\components\itemcategory\posdesignDelphi.view.components.itemcategory.pas' {ComponentCategory},
  posdesignDelphi.view.components.itemlist in 'src\view\components\itemlist\posdesignDelphi.view.components.itemlist.pas' {ComponentItemList: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TPageIndex, PageIndex);
  Application.CreateForm(TPageApp, PageApp);
  Application.CreateForm(TComponentsNavBar, ComponentsNavBar);
  Application.CreateForm(TComponentButton, ComponentButton);
  Application.CreateForm(TPageMain, PageMain);
  Application.CreateForm(TComponentCard, ComponentCard);
  Application.CreateForm(TComponentCategory, ComponentCategory);
  Application.Run;
end.
