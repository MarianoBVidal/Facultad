program Ejercicio4a;
type
    rango = 0..1000;
var
    num, numMin, numMin2: rango;
begin
    numMin:= 1000; {Comenzar desde el tope}
    numMin2:= 1000;
    repeat
        write('Ingrese un número: ');
        read(num);
        if (numMin >= num) then
        begin
            numMin2:= numMin; {El segundo número mínimo ahora vale lo que valía el primero antes}
            numMin:= num; {Actualizar el primer número mínimo}
        end;
    until (num = 0); {Repetir bloque hasta que el número sea igual a 0}
    writeln('El primer número mínimo es: ',numMin);
    write('El segundo número mínimo es: ',numMin2);
end.
