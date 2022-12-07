unit principal;
interface

uses
  crt, diseno, archivo, tipos_datos;

procedure carga_texto (var pregunta: string);
function fin_conversacion(var pregunta: string): boolean;
procedure aprendizaje (var pregunta: string; var archivo: t_archivo; var registro: t_dato);
procedure comparacion_texto_ingresado(var archivo: t_archivo);
procedure ejecucion();

implementation

procedure carga_texto (var pregunta: string);
begin
     window(57,12,116,12); readln(pregunta);
     window(0,0,255,255);
end;

function fin_conversacion(var pregunta: string): boolean;
var
   palabra_clave1, palabra_clave2, palabra_clave3, palabra_clave4, palabra_clave5: string;
   i: byte;
begin
     fin_conversacion:= false;
     palabra_clave1:= 'tengo que irme';
     palabra_clave2:= 'adios';
     palabra_clave3:= 'chau';
     palabra_clave4:= 'nos vemos';
     palabra_clave5:= 'fue un gusto';
     if (pos(palabra_clave1, pregunta) <> 0) or (pos(palabra_clave2, pregunta) <> 0) or (pos(palabra_clave3, pregunta) <> 0) or (pos(palabra_clave4, pregunta) <> 0) or (pos(palabra_clave5, pregunta) <> 0) then
         fin_conversacion:= true;
end;

procedure aprendizaje (var pregunta: string; var archivo: t_archivo; var registro: t_dato);
var respuesta_nueva: string;
begin
     window(56,12,116,12); clrscr; readln(respuesta_nueva); clrscr; window(0,0,255,255);
     registro.palabra_clave[1]:= pregunta;
     registro.respuesta:= respuesta_nueva;
     write(archivo, registro);
end;

procedure comparacion_texto_ingresado(var archivo: t_archivo);
var registro: t_dato;
    pregunta, respuesta_nueva: string;
    i: byte;
    entendio: boolean;
begin
     repeat
     entendio:= false;
     carga_texto(pregunta);
     abrir(archivo);
     while (not eof(archivo)) do
           begin
           read(archivo, registro);
           for i:= 1 to 5 do
               begin
               if pos(registro.palabra_clave[i], pregunta) <> 0 then
                  begin
                  clrscr; cuadro_texto();
                  window(54,34,87,37); clrscr; write(registro.respuesta); movimiento();
                  entendio:= true;
                  end;
               end;
           end;
     if entendio = false then
        begin
        clrscr; cuadro_texto();
        window(54,34,87,37); clrscr; write('Perdon, no logre entenderte. Ingresa la respuesta que quisieras recibir.'); movimiento();
        aprendizaje(pregunta, archivo, registro);
        end;
     close(archivo);
     fin_conversacion(pregunta);
     until (fin_conversacion(pregunta) = true);
end;

procedure ejecucion();
begin
     //cargar_archivo(arch, reg);
     logo();
     comparacion_texto_ingresado(arch);
     readkey;
end;

end.

