#include "protheus.ch"
#include "parmtype.ch"
#DEFINE CRLF Chr(13)+Chr(10)


//------------------------------------------------------------------------------------
/*{Protheus.doc}arrays
Arrays in ADVPL

@author Marcos Silvestrini
@version P12
@since
*/
//-------------------------------------------------------------------------------------

//--------------------------------- Global Variables-----------------------------------
Static cMensagem:=""

// -------------------------------------Functions--------------------------------------

// Example 1 Arrays
Static Function Example1()
    Local cData := Date()
    Local aValues:={"Zelda",cData,100}
    cMensagem+=cValToChar(aValues[1])+ CRLF
    cMensagem+=cValToChar(aValues[2])+ CRLF
return



// ToString Function
Static Function ToString()
return MsgInfo(cMensagem,"Arrays")

//------------------------------------Execution----------------------------------------
User Function Arrays()

    Example1()

    ToString()

return
