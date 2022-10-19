# Scriptc_copia_recursiva

En este repositorio se aborda la utilizaciion del interprete de mandatos de Linux, utilizandolo como herramienta de programacion para crear nuevos mandatos sin tener que usar las llamadas al sistema operativo. Es importante hacer notar que este interprete nos va a permitir automatizar muchas de las tareas diarias que son utilizadas en los sistemas basados en Linux. Se desarrolla un script denominado copySelection.sh que admit uno o varios argumentos. En concreto, la llamada al script tiene la siguienteforma:

1 copySelection .sh dir_origen dir_destino ext_fichero1 [ ext_fichero2 ] [...]

El objetivo del script es: copiar de manera recursiva los ficheros y subdirectorios que se encuentren en el directorio origen en el directorio destino manteniendo la estructura de subdirectorios del directorio origen. 

El script producirá por la salida estandar, ademas de la copia de los diferentes ficheros y subdirectorios anteriormente mencionados, los siguientes mensajes: el nombre del usuario que ejecuta el script, la fecha y hora de su ejecucion y la version de bash utilizada. Tambien mensaje con el nuumero de ficheros y directorios
copiados, en caso de que la ejecucion sea correcta.
