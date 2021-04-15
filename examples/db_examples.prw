#include 'protheus.ch'
#include "parmtype.ch"
#include "TopConn.ch"
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

//----------------------------------- Static Functions---------------------------------

Static Function Example1()
    Local aArea:={}
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
    Local aArea:={}
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
    RestArea(aArea)
return

Static Function Example3()
    Local aArea:= SB1->(GetArea())
    Local cQuery:=""
    Local aDados:={}
    cMensagem+="Example 3: Execute SQL Query With TCQuery" + CRLF

    // Query SQL
    cQuery:="SELECT B1_COD AS CODIGO, B1_DESC AS DESCRICAO "
    cQuery+=" FROM " + " " + RetSQLName("SB1")

    // Execute Query with TCQuery
    TCQuery cQuery New Alias "TMP"

    While ! TMP->(Eof())
        //AAdd(aDest,xExpr)
        AAdd(aDados,{TMP->CODIGO,TMP->DESCRICAO})
        TMP->(DBSkip())
    End

    // Number of records
    cMensagem+="NUMBER OF RECORDS IN TABLE: "+ cValToChar(Len(aDados)) +CRLF

    // Records
    For nCount:=1 To Len(aDados)
        cMensagem+="CODIGO: " + aDados[nCount][1] +CRLF
        cMensagem+="DESCRIÇÃO: " + aDados[nCount][2] +CRLF
    Next nCount

    // Close TMP Table
    TMP->(DBCloseArea())

    // Restores an environment previously saved by function GETAREA(). - Close Table
    RestArea(aArea)

return

// ToString Function
Static Function ToString()
return MsgInfo(cMensagem,"Manipulate Database in ADVPL")

//------------------------------------Execution----------------------------------------
User Function DBExamples()

    // Example 1 - Open Table SB1 and Print Value of record 2
    // Example1()

    // Example 2 - Function Posicione
    // Example2()

    // Example 3 - Function TCQuery
    Example3()

    ToString()

return
