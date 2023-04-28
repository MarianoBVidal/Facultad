program Ejercicio5;
const
    dimF = 10; //Tamaño total del vector
type
    vector = array [1..dimF] of integer; //Declarar vector de 100 enteros
procedure leerVector(var v: vector; var dimL: integer); //Leer vector
    var
        i: integer;
    begin
        for i:= 1 to dimF do begin
            write('Ingresa el valor de la posición [',i,']: >'); read(v[i]);
            if (v[i] = 0) then begin break; end;
            dimL:= dimL + 1;
        end;
    end;
function posicion(x: integer; v: vector):integer; //Retornar la posición del número x, si se encuentra
    var
        i, aux: integer;
    begin
        aux:= -1;
        for i:= 1 to dimF do begin
            if (v[i] = x) then begin 
                aux:= i; 
            end;
        end;
        posicion:= aux;
    end;
procedure intercambio(x, y: integer; var v: vector); //Intercambiar los valores de las posiciones ingresadas
    var
        aux, aux2: integer;
    begin
        aux:= v[y];
        aux2:= v[x];
        v[x]:= aux; //Intercambiar valores
        v[y]:= aux2;
    end;
function sumaVector(v: vector):integer; //Sumar todos los elementos del vector
    var
        i, suma: integer;
    begin
        suma:= 0; //Inicializar la suma en 0
        for i:= 1 to dimF do begin
            suma:= suma + v[i]; //Sumar valor de posición i
        end;
        sumaVector:= suma;
    end;
function promedio(v: vector):integer; //Promediar todos los elementos del vector
    var
        i, prom: integer;
    begin
        prom:= 0; //Inicializar el promedio en 0
        for i:= 1 to dimF do begin
            prom:= prom + v[i]; //Sumar valor de posición i
        end;
        promedio:= (prom div dimF);
    end;
procedure elementosLimites(var max, min, dimL: integer; v: vector); //Retornar la posición del elemento máximo y del mínimo del vector
    var
        i, aux, aux2: integer;
    begin
        aux:= -1;
        aux2:= 9999;
        for i:= 1 to dimF do begin
            if (v[i] > aux) then begin aux:= v[i]; max:= i; end;
            if (v[i] < aux2) then begin aux2:= v[i]; min:= i; end;
        end;
    end;
var
    v: vector;
    dimL, max, min: integer;
begin
    leerVector(v, dimL);
    elementosLimites(max, min, dimL, v);
    intercambio(max, min, v);
    writeln('El elemento máximo ',v[min],' que se encontraba en la posición [',max,'] fue intercambiado con el elemento mínimo ',v[max],' que se encontraba en la posición [',min,']');
    writeln('> v[',max,']=',v[max],';');
    write('> v[',min,']=',v[min],';');
end.
