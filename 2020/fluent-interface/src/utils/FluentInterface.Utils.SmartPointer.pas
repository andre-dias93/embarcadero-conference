unit FluentInterface.Utils.SmartPointer;

interface

type
  TSmartPointer<T: class, constructor> = record
  strict private
    FValue: T;
    FFreeValue: IInterface;
    function GetValue: T;
  public
    class operator Implicit(const ASmartPointer: TSmartPointer<T>): T;
    class operator Implicit(const AValue: T): TSmartPointer<T>;
    constructor Create(const AValue: T);
    property Value: T read GetValue;
  end;

  TFreeValue = class (TInterfacedObject)
    private
      FObject: TObject;
    public
      constructor Create(const AObject: TObject);
      destructor Destroy; override;
  end;

implementation

{ TSmartPointer<T> }

constructor TSmartPointer<T>.Create(const AValue: T);
begin
  FValue := AValue;
  FFreeValue := TFreeValue.Create(FValue);
end;

function TSmartPointer<T>.GetValue: T;
begin
  if not Assigned(FFreeValue) then
    Self := TSmartpointer<T>.Create(T.Create);
  Result := FValue;
end;

class operator TSmartPointer<T>.Implicit(const AValue: T): TSmartPointer<T>;
begin
  Result := TSmartPointer<T>.Create(AValue);
end;

class operator TSmartPointer<T>.Implicit(const ASmartPointer: TSmartPointer<T>): T;
begin
  Result := ASmartPointer;
end;

{ TFreeValue }

constructor TFreeValue.Create(const AObject: TObject);
begin
  FObject := AObject;
end;

destructor TFreeValue.Destroy;
begin
  FObject.Free;
  inherited;
end;

end.
