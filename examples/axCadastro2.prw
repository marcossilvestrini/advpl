#include 'protheus.ch'
#include "parmtype.ch"
#include "TopConn.ch"
#DEFINE CRLF Chr(13)+Chr(10)

//------------------------------------------------------------------------------------
/*{Protheus.doc}models
Example Function AxCadastro

@author Marcos Silvestrini
@version P12
@since
*/
//-------------------------------------------------------------------------------------


//--------------------------------- Global Variables-----------------------------------
Static cMensagem:=""

//----------------------------------- Static Functions---------------------------------
Static Function Model1()
    Local cAlias:="SB1"
    Local cTitle:="AXCADASTRO"
    Local cDel:=".T."
    Local cAlter:=".T."

    AxCadastro(cAlias,cTitle,cDel,cAlter)

return


// ToString Function
Static Function ToString()
return MsgInfo(cMensagem,"Models in ADVPL")

//------------------------------------Execution----------------------------------------

User Function Models()

// Example Models - AxCadastro
Model1()

return Nil
