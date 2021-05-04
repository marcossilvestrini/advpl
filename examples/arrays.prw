#include "protheus.ch"
#include "parmtype.ch"
#DEFINE CRLF Chr(13)+Chr(10)




//------------------------------------------------------------------------------------
/*{Protheus.doc}arrays
Arrays in ADVPL - https://tdn.totvs.com/display/tec/Array


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
    cMensagem+="SIMPLE EXAMPLE OF ARRAYS"
    cMensagem+=cValToChar(aValues[1])+ CRLF
    cMensagem+=cValToChar(aValues[2])+ CRLF
    cMensagem+=CRLF
return

// Example 2 -  Function LEN
Static Function Example2()
    Local aValues:={100,30,40,-10}
    cMensagem+="EXAMPLE FUNCTION: LEN"+ CRLF
    cMensagem+="LENGTH OF ARRAY: " + cValToChar(Len(aValues)) + CRLF
return

// Example 3 - Function AADD - https://tdn.totvs.com/display/tec/AAdd
Static Function Example3()
    Local aValues:={30,40,100,-20}
    cMensagem+="EXAMPLE FUNCTION: AADD"+ CRLF
    cMensagem+="VALUE OF THE LAST ARRAY POSITION ITEM: "+ ;
    cValToChar(aValues[Len(aValues)]) + CRLF

    AAdd(aValues,300)
    cMensagem+="VALUE OF THE LAST ARRAY POSITION ITEM: " + ;
    cValToChar(aValues[Len(aValues)]) +CRLF

return

// Example 4 - Function AINS - https://tdn.totvs.com/display/tec/AIns
Static Function Example4()
    Local aValues:={58,20,-100,800}
    cMensagem+="EXAMPLE FUNCTION: AINS"+ CRLF
    cMensagem+="VALUE OF ITEM IN INDEX 2 OF ARRAY IS: "+cValToChar(aValues[2])+ CRLF

    // First, define position for alter value
    AIns(aValues,2)
    // Then, alter value
    aValues[2]:=999
    cMensagem+="VALUE OF ITEM IN INDEX 2 OF ARRAY IS: "+cValToChar(aValues[2])+ CRLF
return

// Example 5 - Function ACLONE - https://tdn.totvs.com/display/tec/AClone
Static Function Example5()
    Local aValues1:={10,20,30,-40,-50}
    Local aValues2:=AClone(aValues1)
    cMensagem+="EXAMPLE FUNCTION: ACLONE"+ CRLF
    // Compare Clone Arrays
    cMensagem+="VALUES OF ARRAY 1: "
    For nCount:=1 To Len(aValues1)
        cMensagem+="["+cValToChar(aValues1[nCount])+ "]"
        If nCount < Len(aValues1)
            cMensagem+="-"
        EndIf
    Next
    cMensagem+= CRLF
    cMensagem+="VALUES OF ARRAY 2: "
    For nCount:=1 To Len(aValues2)
        cMensagem+="["+cValToChar(aValues2[nCount])+ "]"
        If nCount < Len(aValues2)
            cMensagem+="-"
        EndIf
    Next
return

// Example 6 - Function ADEL - https://tdn.totvs.com/display/tec/ADel

Static Function Example6()
    Local aValues1:={"Steam","Epic","XBox","PS Store","GOG"}
    cMensagem+="EXAMPLE FUNCTION: ADEL"+ CRLF
    cMensagem+="VALUES OF ARRAY: "
    For nCount:=1 To Len(aValues1)
        cMensagem+="["+cValToChar(aValues1[nCount])+ "]"
        If nCount < Len(aValues1)
            cMensagem+="-"
        EndIf
    Next
    cMensagem+= CRLF
    // Dell Value
    ADel(aValues1,2)

    cMensagem+="VALUES OF ARRAY: "
    For nCount:=1 To Len(aValues1)
        If aValues1[nCount] == NIL
            AIns(aValues1,nCount)
            aValues1[nCount]:="This Values has delete!!!"
            cMensagem+="["+cValToChar(aValues1[nCount])+ "]"
        else
            cMensagem+="["+cValToChar(aValues1[nCount])+ "]"
        EndIf
        If nCount < Len(aValues1)
            cMensagem+="-"
        EndIf
    Next
return


// Example 7 - Function ASIZE - https://tdn.totvs.com/display/tec/ASize
Static Function Example7()
    Local aValues1:={"Steam","Epic","XBox","PS Store","GOG"}
    //Local aValues1:={10.1,20,-10,9999}
    cMensagem+="EXAMPLE FUNCTION: ASIZE"+ CRLF
    cMensagem+="VALUES OF ARRAY: "
    For nCount:=1 To Len(aValues1)
        cMensagem+="["+cValToChar(aValues1[nCount])+ "]"
            If nCount < Len(aValues1)
                cMensagem+="-"
            EndIf
    Next
    cMensagem+= CRLF

    // Del value
    ASize(aValues1,2)

    cMensagem+="VALUES OF ARRAY: "
    For nCount:=1 To Len(aValues1)
        cMensagem+="["+cValToChar(aValues1[nCount])+ "]"
        If nCount < Len(aValues1)
            cMensagem+="-"
        EndIf
    Next
return

// Example 8 -  ACopy - https://tdn.totvs.com/display/tec/ACopy
Static Function Example8()
    Local aValues1:={10,45,50,"Carlos"}
    Local aValues2:={}
    Local nCount
    cMensagem+="EXAMPLE FUNCTION: ACOPY"+ CRLF
    cMensagem+="VALUES OF ARRAY 1: "
    For nCount:=1 To Len(aValues1)
        cMensagem+="["+cValToChar(aValues1[nCount])+ "]"
        If nCount < Len(aValues1)
            cMensagem+="-"
        EndIf
    Next

    cMensagem+= CRLF

    // ACopy(aOrigem,aDestino,/*nInicio*/,/*nCont*/,/*nPosDestino*/)
    ASize(aValues2,4)
    ACopy(aValues1,aValues2)

    cMensagem+="VALUES OF ARRAY 2: "
    For nCount:=1 To Len(aValues2)
        cMensagem+="["+cValToChar(aValues2[nCount])+ "]"
        If nCount < Len(aValues1)
            cMensagem+="-"
        EndIf
    Next
return

// Example 9 - AFill - https://tdn.totvs.com/display/tec/AFill
Static Function Example9()
    Local aValues1:={10,50,-10,69}
    cMensagem+="EXAMPLE FUNCTION: AFILL"+ CRLF
    cMensagem+="VALUES OF ARRAY 1: "
    For nCount:=1 To Len(aValues1)
        cMensagem+="["+cValToChar(aValues1[nCount])+ "]"
        If nCount < Len(aValues1)
            cMensagem+="-"
        EndIf
    Next
    cMensagem+= CRLF

    //AFill
    ASize(aValues1,4)
    //AFill(aValues1,999)
    AFill(aValues1,10,1,Len(aValues1))

    cMensagem+="VALUES OF ARRAY 2: "
    For nCount:=1 To Len(aValues1)
        cMensagem+="["+cValToChar(aValues1[nCount])+ "]"
        If nCount < Len(aValues1)
            cMensagem+="-"
        EndIf
    Next
return

// Example 10 - ASCAN - https://tdn.totvs.com/display/tec/AScan
Static Function Example10()
    Local aValues1:={10,50,-10,69,"Ola","Pedra",.T.}
    Local nNum:=10
    Local cChar:="Ola"
    Local lLogic:=.F.
    local dDate := Date()

    cMensagem+="EXAMPLE FUNCTION: ASCAN"+ CRLF
    cMensagem+="VALUES OF ARRAY: "
    For nCount:=1 To Len(aValues1)
        cMensagem+="["+cValToChar(aValues1[nCount])+ "]"
        If nCount < Len(aValues1)
            cMensagem+="-"
        EndIf
    Next
    cMensagem+= CRLF

    // ASCAN -https://tdn.totvs.com/display/tec/AScan
    // AScan( < aDest >, < xExpr >, [ nStart ], [ nCount ] )
    cMensagem+=CRLF+"FIND VALUE "+cValToChar(nNum)+ CRLF
    cMensagem+= "RESULT: " +cValToChar(AScan(aValues1,10))+ CRLF
    cMensagem+= CRLF

    cMensagem+="FIND VALUE "+cValToChar(cChar) +CRLF
    cMensagem+= "RESULT: " +cValToChar(AScan(aValues1,"Ola"))+ CRLF
    cMensagem+= CRLF

    cMensagem+="FIND VALUE "+cValToChar(dDate)+ CRLF
    cMensagem+= "RESULT: " +cValToChar(AScan(aValues1,Date())) +CRLF
    cMensagem+= CRLF

    cMensagem+="FIND VALUE "+cValToChar(lLogic)+ CRLF
    cMensagem+= "RESULT: " +cValToChar(AScan(aValues1,.F.)) + CRLF
    cMensagem+= CRLF


return

// ToString Function
Static Function ToString()
return MsgInfo(cMensagem,"Arrays")

//------------------------------------Execution----------------------------------------
User Function Arrays()

    Example1()

    Example2()
    cMensagem+=CRLF

    Example3()
    cMensagem+=CRLF

    Example4()
    cMensagem+=CRLF

    Example5()
    cMensagem+=CRLF

    cMensagem+=CRLF
    Example6()
    cMensagem+=CRLF

    cMensagem+=CRLF
    Example7()
    cMensagem+=CRLF

    cMensagem+=CRLF
    Example8()
    cMensagem+=CRLF

    cMensagem+=CRLF
    Example9()
    cMensagem+=CRLF

    cMensagem+=CRLF
    Example10()
    cMensagem+=CRLF

    ToString()

return


