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

// Example 2 -  Function LEN
Static Function Example2()
    Local aValues:={100,30,40,-10}
    cMensagem+="LENGTH OF ARRAY: " + cValToChar(Len(aValues)) + CRLF
return

// Example 3 - Function AADD
Static Function Example3()
    Local aValues:={30,40,100,-20}
    cMensagem+="VALUE OF THE LAST ARRAY POSITION ITEM: "+ ;
    cValToChar(aValues[Len(aValues)]) + CRLF

    AAdd(aValues,300)
    cMensagem+="VALUE OF THE LAST ARRAY POSITION ITEM: " + ;
    cValToChar(aValues[Len(aValues)]) +CRLF

return

// Example 4 - Function AINS
Static Function Example4()
    Local aValues:={58,20,-100,800}

    cMensagem+="VALUE OF ITEM IN INDEX 2 OF ARRAY IS: "+cValToChar(aValues[2])+ CRLF

    // First, define position for alter value
    AIns(aValues,2)
    // Then, alter value
    aValues[2]:=999

    cMensagem+="VALUE OF ITEM IN INDEX 2 OF ARRAY IS: "+cValToChar(aValues[2])+ CRLF

return

// Example 5 - Function ACLONE
Static Function Example5()
    Local aValues1:={10,20,30,-40,-50}
    Local aValues2:=AClone(aValues1)

    // // Compare Clone Arrays
    cMensagem+="VALUES OF ARRAY 1: "
    For nCount:=1 To Len(aValues1)
        cMensagem+="["+cValToChar(aValues1[nCount])+ "]"
    Next
    If nCount < Len(aValues1)
        cMensagem+="-"
    EndIf

    cMensagem+= CRLF

    cMensagem+="VALUES OF ARRAY 2: "
    For nCount:=1 To Len(aValues2)
        cMensagem+="["+cValToChar(aValues2[nCount])+ "]"
    Next
    If nCount < Len(aValues2)
        cMensagem+="-"
    EndIf

return

// Example 6 - Function ADEL

Static Function Example6()
    Local aValues1:={"Steam","Epic","XBox","PS Store","GOG"}

    cMensagem+="VALUES OF ARRAY: "
    For nCount:=1 To Len(aValues1)
        cMensagem+="["+cValToChar(aValues1[nCount])+ "]"
    Next
    If nCount < Len(aValues1)
        cMensagem+="-"
    EndIf
    cMensagem+= CRLF

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
    Next
    If nCount < Len(aValues1)
        cMensagem+="-"
    EndIf

return

// ToString Function
Static Function ToString()
return MsgInfo(cMensagem,"Arrays")

//------------------------------------Execution----------------------------------------
User Function Arrays()

    // Example1()

    // Example2()

    // Example3()

    // Example4()

    // Example5()

    Example6()

    ToString()

return
