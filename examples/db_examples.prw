#include 'protheus.ch'
#include "parmtype.ch"
#DEFINE CRLF Chr(13)+Chr(10)

//------------------------------------------------------------------------------------
/*{Protheus.doc}databases
Manipulate Database in ADVPL

@author Marcos Silvestrini
@version P12
@since
*/
//-------------------------------------------------------------------------------------


//--------------------------------- Global Variables-----------------------------------
Static cMensagem:=""
Static aArea


//----------------------------------- Static Functions---------------------------------

Static Function Example1()
    cMensagem+="Example 1: Access Table SB1" + CRLF

    // Save the active environment
    aArea := SB1->(GetArea())

    // Define Workarea active for explore
    DBSelectArea("SB1")

    // Select active order for workarea -Example: Position in Index 1 - Filial
    SB1->(DBSetOrder(1))

    // Move cursor for fisrt record in table
    SB1->(DBGoTop())

    // Find record with id 2 in table
    //Index FILIAl+COD
    If SB1->(DBSeek(FWXFilial("SB1")+"2"))
        cMensagem += cValToChar(SB1->B1_DESC)
    EndIf

    // Restores an environment previously saved by function GETAREA(). - Close Table
    RestArea(aArea)

return


Static Function Example2()
    cMensagem+="Example 2: Access Table SB1 with Function Posicione" + CRLF

    aArea:= SB1->(GetArea())
    DBSelectArea("SB1")
    SB1->(DBSetOrder(1))
    SB1->(DBGoTop())

    // Function Posicione
    cMensagem+= Posicione( ;
        "SB1", ;
        1, ;
        FWXFilial("SB1")+"2", ;
        "B1_DESC" ;
    )
return



// ToString Function
Static Function ToString()
return MsgInfo(cMensagem,"Manipulate Database in ADVPL")

//------------------------------------Execution----------------------------------------
User Function DBExamples()

    // Example 1 - Open Table SB1 and Print Value of record 2
    // Example1()

    // Example 2 - Function Posicione
    Example2()

    ToString()

return
