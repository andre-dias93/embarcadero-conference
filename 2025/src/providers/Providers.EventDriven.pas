unit Providers.EventDriven;

interface

uses
  System.Generics.Collections, System.SysUtils;

type
  TEventDriven = class
  private
    // Dicionário que mapeia o nome do evento para uma lista de procedimentos
    class var FHandlers: TObjectDictionary<string, TList<TProc>>;
  public
    class constructor Create;
    class destructor Destroy;
    // Método para assinar um handler para um evento específico
    class procedure Subscribe(const EventName: string; Handler: TProc);
    // Método para publicar um evento, chamando todos os handlers registrados
    class procedure Publish(const EventName: string);
  end;

implementation

class constructor TEventDriven.Create;
begin
  // Cria o dicionário: chave = nome do evento, valor = lista de procedimentos
  FHandlers := TObjectDictionary<string, TList<TProc>>.Create([doOwnsValues]);
end;

class destructor TEventDriven.Destroy;
begin
  FHandlers.Free;
end;

// Registra um novo handler para um evento
class procedure TEventDriven.Subscribe(const EventName: string; Handler: TProc);
var
  List: TList<TProc>;
begin
  if not FHandlers.TryGetValue(EventName, List) then
  begin
    List := TList<TProc>.Create;
    FHandlers.Add(EventName, List);
  end;
  List.Add(Handler);
end;

// Dispara um evento, executando todos os handlers associados
class procedure TEventDriven.Publish(const EventName: string);
var
  List: TList<TProc>;
  Handler: TProc;
begin
  if FHandlers.TryGetValue(EventName, List) then
    for Handler in List do
      Handler();
end;

end.

