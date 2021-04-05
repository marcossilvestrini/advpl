#include 'protheus.ch'
#include "parmtype.ch"
#DEFINE CRLF Chr(13)+Chr(10)

//--------------------------------- Global Variables-----------------------------------
Static cMensagem:="<b>"
Static nNum:= Randomize(1,10)
Static nKick:= 0
Static nAttempts:=0

//----------------------------------- Static Functions---------------------------------

// Input data
Static Function Input()
    nKick:= Val(FWInputBox("Enter a Number",""))
    cMensagem:="You kick is: " + cValToChar(nKick) + CRLF
return

// Check your Kick
Static Function Check(nKick)
    If nKick == nNum
        cMensagem+="Congratulations,You Win!!!" + CRLF
        cMensagem+="Attemps: " + cValToChar(nAttempts) + CRLF
    elseif nKick < nNum
        cMensagem+="Low Number,Try Again" + CRLF
        nAttempts ++
        cMensagem+="Attemps: " + cValToChar(nAttempts) + CRLF
    else
        cMensagem+="High Number,Try Again" + CRLF
        nAttempts ++
        cMensagem+="Attemps: " + cValToChar(nAttempts) + CRLF
    EndIf
return

// ToString Function
Static Function ToString()
Static cMensagem:="</b>"
return MsgInfo(cMensagem,"Game Guess")


//------------------------------------Execution----------------------------------------
User Function Guess()

While nKick != nNum

    Input()

    Check(nKick)

    ToString()
End

return
