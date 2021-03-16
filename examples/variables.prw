#include 'protheus.ch'
#include 'parmtype.ch'


//------------------------------------------------------------------------------------
/*{Protheus.doc}hello-world
Types of Variables in ADVPL
https://tdn.totvs.com/pages/viewpage.action?pageId=6063097

@author Marcos Silvestrini
@version P12
@since

*/
//------------------------------------------------------------------------------------

user function Variables()

// Variables
local nNum:= 66
local lLogic := .T.
local cChar := "String"
local dDate := Date()
local aArray:={"User1","User2","User3","User4"}
local bBlock:={|| nValue:=2, MsgAlert("The Number is: "+cValToChar(nValue))}

// Print
Alert(nNum)
Alert(lLogic)
Alert(cValToChar(cChar))
Alert(dDate)
Alert(aArray[2])

// Print Code - Eval
Eval(bBlock)

return
