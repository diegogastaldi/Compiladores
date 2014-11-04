#!/bin/bash

#
#                           ******************                           
#*****************************     test     ****************************************
#**                         ******************                                    **
#**                                                                               **
#**Descripcion : Script que corre los casos de prueba definidos en la carpeta     **
#**              tests. cada test tiene su propio main.                          **
#**                                                                               **
#***********************************************************************************   
echo "*********************************************************************************** "
echo "**                                                                               ** " 
echo "**                            Corriendo casos de prueba . . .                    ** "                
echo "**                                                                               ** "
echo "**                                                                               ** "
echo "*********************************************************************************** "
echo "     " 
echo "     " 

comp=$1

echo "///////////////////////// TESTS CORRECTOS ////////////////////////////////////////" 
files=`ls allTest/optimizationTest/rightTest/*.ctds`


for file in $files ; do 
	echo "---------------- Test $file ... -------------------" 
        java $comp $file  
	echo "---------------------------------------------------" 
        echo "  "
        echo "  "
done

exit 0

