#include "protheus.ch"
#include "parmtype.ch"
#DEFINE CRLF Chr(13)+Chr(10)
//------------------------------------------------------------------------------------
/*{Protheus.doc}operators
Math Operators in ADVPL

@author Marcos Silvestrini
@version P12
@since
*/
//------------------------------------------------------------------------------------


// -------------------------------------Functions--------------------------------------

// Main Function

User Function Operations()
ToString()
OperRel()
return


// Function ToString
Static Function ToString()
    Local nValue1:=35
    Local nValue2:=12
    Local cMensagem:=""

    // // Print Sum
    // MsgAlert("Sum: " + cValToChar(nValue1) + " + " + cValToChar(nValue2) + ;
    // " =" + cValToChar(Sum(nValue1,nValue2)))

    // // Print Sub
    // MsgAlert("Sub: " + cValToChar(nValue1) + " - " + cValToChar(nValue2) + ;
    // " =" + cValToChar(Sub(nValue1,nValue2)))

    // // Print Mult
    // MsgAlert("Mult: " + cValToChar(nValue1) + " * " + cValToChar(nValue2) + ;
    // " =" + cValToChar(Mult(nValue1,nValue2)))

    // // Print Div
    // MsgAlert("Div: " + cValToChar(nValue1) + " / " + cValToChar(nValue2) + ;
    // " =" + cValToChar(Div(nValue1,nValue2)))

    // // Print Mod
    // MsgAlert("Mod: " + cValToChar(nValue1) + " % " + cValToChar(nValue2) + ;
    // " =" + cValToChar(modDiv(nValue1,nValue2)))

    cMensagem += "[Sum]" + cValToChar(Sum(nValue1,nValue2)) + CRLF
    cMensagem += "[Sub]" + cValToChar(Sub(nValue1,nValue2)) + CRLF
    cMensagem += "[Mult]" + cValToChar(Mult(nValue1,nValue2)) + CRLF
    cMensagem += "[Div]" + cValToChar(Div(nValue1,nValue2)) + CRLF
    cMensagem += "[Mod]" + cValToChar(modDiv(nValue1,nValue2)) + CRLF

return MsgInfo(cMensagem,"Operators")

// Function Sum
Static Function Sum(nNum1,nNum2)
return nNum1 + nNum2

// Function Sub
Static Function Sub(nValue1,nValue2)
return nValue1 - nValue2

// Function Mult
Static Function Mult(nValue1,nValue2)
return nValue1 * nValue2

// Function Div
Static Function Div(nValue1,nValue2)
return nValue1 / nValue2

// Function Mod
Static Function modDiv(nValue1,nValue2)
return nValue1 % nValue2

// Relational Operators
Static Function OperRel()
    Local nValue1:=40
    Local nValue2:=10
    Local cStr1:="Test1"
    Local cStr2:="Test2"
    Local cMensagem:=""

    cMensagem += cValToChar(nValue1) + "<" + cValToChar(nValue2) + ": " + cValToChar((nValue1 < nValue2)) + CRLF
    cMensagem += cValToChar(cStr1) + "==" + cValToChar(cStr2) + ": " + cValToChar((cStr1 == cStr2)) + CRLF


return MsgInfo(cMensagem,"Relational Operators")
