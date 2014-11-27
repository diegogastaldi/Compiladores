/* Taller de Diseño de software 2014

   Proyecto: Compilador
   
  - Integrantes:
    - Coria, Gaston
    - Gastaldi, Diego
    
  *************************************

	Clase que guarda los registros usados 
	para el pasaje de parametros  en orden
*/

package assemblyCode;

public class ParamRegister {
	public static String[] registersInt = {"%rdi", "%rsi", "%rdx", "%rcx", "%r8", "%r9"};
	public static String[] registersFloat = {"%xmm0","%xmm1","%xmm2","%xmm3","%xmm4","%xmm5","%xmm6","%xmm7"};
}