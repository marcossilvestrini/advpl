#include "protheus.ch"
#include "parmtype.ch"
#DEFINE CRLF Chr(13)+Chr(10)


//------------------------------------------------------------------------------------
/*{Protheus.doc}code.blocks
Code Blocks in ADVPL

@author Marcos Silvestrini
@version P12
@since
*/
//-------------------------------------------------------------------------------------

//--------------------------------- Global Variables-----------------------------------
Static cMensagem:=""

// -------------------------------------Functions--------------------------------------
Static Function Example1()
    Local bBlock:={||"My block without params!!!"}
    cMensagem+= cValToChar(Eval(bBlock))
return

Static Function Example2()
    Local nvalue1:=10, nvalue2:=50
    Local bBlock:={|nvalue1,nvalue2|Sum(nvalue1,nvalue2)}
    cMensagem+="Code Block with functions and params" + CRLF
    cMensagem+="Function Sum(" + cValToChar(nvalue1) +"," + cValToChar(nvalue2) + ")" + CRLF
    cMensagem+="Result: " + cValToChar(Eval(bBlock,nvalue1,nvalue2)) + CRLF
return

Static Function Example3(nvalue1,nvalue2)
    Local bBlock:={|nvalue1,nvalue2|Sum(nvalue1,nvalue2)}
    cMensagem+="Code Block with functions and params" + CRLF
    cMensagem+="Function Sum(" + cValToChar(nvalue1) +"," + cValToChar(nvalue2) + ")" + CRLF
    cMensagem+="Result: " + cValToChar(Eval(bBlock,nvalue1,nvalue2)) + CRLF
return

// Function Sum
Static Function Sum(nNum1,nNum2)
return nNum1 + nNum2


// ToString Function
Static Function ToString()
return MsgInfo(cMensagem,"Code Block")

//------------------------------------Execution----------------------------------------
User Function Blocks()
// Example 1
//Example1()

// Example 2
// Example2()

// Example 3
Example3(30,100)

// Print
ToString()

return
