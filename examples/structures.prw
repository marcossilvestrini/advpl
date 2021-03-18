#include "protheus.ch"
#include "parmtype.ch"
#DEFINE CRLF Chr(13)+Chr(10)
//------------------------------------------------------------------------------------
/*{Protheus.doc}structures
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
Static Function Example1()
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

// Do Case
Static Function Example2()
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

return

// For
Static Function Example3()

    Local nCount
    Local nValue1 := 0

    For nCount := 0 To 10
        nValue1 += nCount
    Next
    cMensagem+= "[Value of nValue ]" + "= " + cValToChar(nValue1) + CRLF

return

// For with Step
Static Function Example4()
    Local nCount
    For nCount:=0 To 20 Step 2
        cMensagem+= "[Value of nCount with Step ]" + "= " + cValToChar(nCount) + CRLF
    Next


return

// While

Static Function Example5()

    Local nValue1:=0
    Local nValue2:= 10

    While nValue1 < nValue2
        nValue1++
    EndDo
    cMensagem+= "[Value of nValue1 ]" + "= " + cValToChar(nValue1) + CRLF

return

// ToString Function
Static Function ToString()
return MsgInfo(cMensagem,"Structures")


//------------------------------------Execution----------------------------------------
User Function Structures()

    // Example1()

   // Examples2()

   // Example3()

   // Example4()

   Example5()

    // Print
   ToString()

return
