unit tipos_datos;
interface

uses
  crt;
const
  ruta = './archivo.dat';
type
  t_dato = record
                 palabra_clave: array[1..5] of string[100];
                 respuesta: string[100];
           end;
  t_archivo = file of t_dato;

var
  arch: t_archivo;
  reg: t_dato;

implementation
end.

