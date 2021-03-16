#include "protheus.ch"
#include "parmtype.ch"
#DEFINE CRLF Chr(13)+Chr(10)
//------------------------------------------------------------------------------------
/*{Protheus.doc}hello-world
Structures Decision and Repetition in ADVPL

@author Marcos Silvestrini
@version P12
@since
*/
//-------------------------------------------------------------------------------------

//--------------------------------- Global Variables-----------------------------------
Static cMensagem:=""

// -------------------------------------Functions--------------------------------------

//----------------------------------- Static Functions---------------------------------

// If Else
Static Function IfElse()
    Local nValue1:=22
    Local nValue2:=30
    Local nValue3:=60
    //Local lLogic:= .T.

    If(nValue1 < nValue2)
        cMensagem += "[TEST:]" + cValToChar(nValue1) + "<" + cValToChar(nValue2) + CRLF

    ElseIf(nValue2 < nValue3)
        cMensagem += "[TEST:]" + cValToChar(nValue1) + "<" + cValToChar(nValue3) + CRLF

    Else
        cMensagem += "[TEST:]" + cValToChar(nValue1) + ">" + cValToChar(nValue2) + CRLF

    EndIf

return

Static Function DoCase()
    Local cConsole:="Switch"

Do Case
    Case cConsole == "Atari"
        cMensagem :="[Emulator for ]" + cValToChar(cConsole) + ": Retroarch" + CRLF

    Case cConsole == "Wii U"
        cMensagem :="[Emulator for ]" + cValToChar(cConsole) + ": Cemu" + CRLF

    Case cConsole == "Switch"
        cMensagem :="[Emulator for ]" + cValToChar(cConsole) + ": Yuzu" + CRLF

    OtherWise
        cMensagem+="[Emulator for ]" + cValToChar(cConsole) + ": Not Found!!!" + CRLF

EndCase

// ToString Function
Static Function ToString()
return MsgInfo(cMensagem,"Structures")


//------------------------------------Execution----------------------------------------
User Function Structures()

    // IfElse()

    DoCase()

    // Print
    ToString()

return
