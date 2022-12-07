unit archivo;
interface

uses
  crt, diseno;

procedure abrir(var archivo:t_archivo);
procedure cargar_archivo(var archivo: t_archivo; var registro:t_dato);


implementation

procedure abrir(var archivo:t_archivo);
	begin
	assign(archivo,ruta);
        {$I-}
	reset(archivo);
        {$I-}
        if IOResult <> 0 then Rewrite(archivo);
	end;

procedure cargar_archivo(var archivo: t_archivo; var registro:t_dato);
var
  i, j, pos: byte;
  palabra_clave, resp: string;
    begin
    pos:= 0;
    for j:= 1 to 21 do
    begin
        for i:= 1 to 5 do
        begin
        writeln('ingrese palabra clave');
        readln(palabra_clave);
        registro.palabra_clave[i]:= palabra_clave;
        end;
        writeln('ingrese respuesta');
        readln(resp);
        registro.respuesta:= resp;
        abrir(archivo);
        seek(archivo, pos);
        write(archivo, registro);
        close(archivo);
        pos:= pos + 1;
    end;
    end;

end.

