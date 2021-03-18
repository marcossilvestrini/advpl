#include "protheus.ch"
#include "parmtype.ch"

//------------------------------------------------------------------------------------
/*{Protheus.doc}escope
Escope Variables in ADVPL
https://tdn.totvs.com/pages/viewpage.action?pageId=6063097

@author Marcos Silvestrini
@version P12
@since
*/
//------------------------------------------------------------------------------------

// STATIC
Static cStat :=""

User Function escope1()

    // LOCAL
    Local nVar0 :=1
    Local nVar1 :=20

    // PRIVATE
    Private cPri :="Private"

    // PUBLIC
    Public __cPublic :="Public"

    TestEscop(nVar0,@nVar1)

return

//-------------------------------------------------------------------------------------

// --------------------------------Static Function-------------------------------------

Static Function TestEscop(nValor1,nValor2)

    Local __cPublic := "Changed"
    Default nValor := 0

    // Alter value of variable
    nValor2 := 10

    // Print value of Variable Private
    Alert("Private: "+ cPri)

    // Changed value of variable public
    Alert("Public: "+ __cPublic)

    MsgAlert(nValor2)

    Alert("Static Variable: " + cStat)

return
