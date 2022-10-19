#!/bin/bash

echo -e "\nINFORMACION INICIAL\n - Programa ejecutado por `whoami`"
echo " - Fecha de ejecucion: `date`"
echo " - Version utilizada: {$BASH_VERSION}"


if test $# -lt 3
then
	echo "Numero de parametros insuficientes"
	exit 1
else
	if !(test -d $1)
	then
		echo  "El primer argumento no es un directorio"
		exit 2
	fi
	if !(test -d $2)
	then
		echo "El segundo argumento no es un directorio"
		exit 3
	else
		echo -e "Argumentos correctos\n"
		origen=$1
		destino=$2

		shift 2 ##avanzar dos posiciones en $# y asi estar en la primera extension
		for i ##se hará hasta que acabe $# (por el shift final)
		do
			archivos=$(find $origen -name "*$1")
	                cantidad=$(find $origen -name "*$1"|wc -l)
        	        ##QUERÍA USAR cantidad=$($archivos | wc -l) pero salta error

			echo "Se encontraron $cantidad archivos con la extension $1"

			cd $origen
			chmod 777 $origen -R ##no copia archivos que no tenga permisos requeridos

			for uso in $archivos
			do
				cp -r --parents $uso $destino     ##parents para trabajar con subdirectorios inclusive, junto a -r , hace todo recursivamente
			done

			if (test $? -eq 0)
			then
				echo "Valor de salida: $?"
				subd=$(find $destino -type d | wc -l)
	                        num=$(find $destino -name "*$1"| wc -l)

				echo -e "Se copiaron:\n - $num archivos\n - $subd directorios"
			else
				echo "Valor de salida: $?"
				echo "No se pudo copiar"
			fi
			shift 1
		done
	fi
fi
exit 0
