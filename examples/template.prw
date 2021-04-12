#include 'protheus.ch'
#include "parmtype.ch"
#DEFINE CRLF Chr(13)+Chr(10)

//------------------------------------------------------------------------------------
/*{Protheus.doc}foo
Manipulate Database in ADVPL

@author Marcos Silvestrini
@version P12
@since
*/
//-------------------------------------------------------------------------------------


//--------------------------------- Global Variables-----------------------------------
Static cMensagem:=""
Static cTitle:="Foo"


//----------------------------------- Static Functions---------------------------------


// ToString Function
Static Function ToString()
return MsgInfo(cMensagem,cTitle)

//------------------------------------Execution----------------------------------------
User Function Foo()

return
