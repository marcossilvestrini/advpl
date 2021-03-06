#include 'protheus.ch'
#include "parmtype.ch"
#include "TopConn.ch"
#DEFINE CRLF Chr(13)+Chr(10)

//------------------------------------------------------------------------------------
/*{Protheus.doc}mbrowse
Examples Function MBrowse

@author Marcos Silvestrini
@version P12
@since
*/
//-------------------------------------------------------------------------------------

//------------------------------------Execution----------------------------------------
User Function MBRW000()
    Local cAlias:="SB1"
    Private cCadastro:="Cadastro MBrowse"
    Private aRotina:={}

    // AAdd(aDest,xExpr)
    AAdd(aRotina,{"Pesquisar"   ,"AxPesqui"    , 0,1})
    AAdd(aRotina,{"Visualizar"  ,"AxVisual" , 0,2})
    AAdd(aRotina,{"Incluir" ,"AxInclui" , 0,3})
    AAdd(aRotina,{"Alterar" ,"AxAltera" , 0,4})
    AAdd(aRotina,{"Deletar" ,"AxDeleta" , 0,5})
    //AAdd(aRotina,{"DBExamples"  ,"U_DBExamples" , 0,6})

    DBSelectArea(cAlias)
    DBSetOrder(1)
    mBrowse(,,,,cAlias)
return Nil
