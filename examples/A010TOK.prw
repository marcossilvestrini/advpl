#include 'protheus.ch'
#include "parmtype.ch"
#include "TopConn.ch"
#DEFINE CRLF Chr(13)+Chr(10)

//------------------------------------------------------------------------------------
/*{Protheus.doc}A010TOK
Example Entry Point

@author Marcos Silvestrini
@version P12
@since
*/
//-------------------------------------------------------------------------------------

//------------------------------------ User Functions----------------------------------


/*-------------------------------------------------------------------------------------
Function A010TOK
---------------------------------------------------------------------------------------*/
User Function A010TOK()
    Local lExecuta:= .T.
    Local cTipo :=AllTrim(M->B1_TIPO)
    Local cConta :=AllTrim(M->B1_CONTA)
    If (cTipo = "PA" .AND. cConta = "001")
        lExecuta:= .F.
        Alert("A conta <b> "+ cConta + "</b> não pode estar"+ ;
        "associada a um produto do tipo <b>" + cTipo)
    EndIf
return (lExecuta)
