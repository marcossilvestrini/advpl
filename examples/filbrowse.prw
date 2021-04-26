#include 'protheus.ch'
#include "parmtype.ch"
#include "TopConn.ch"
#DEFINE CRLF Chr(13)+Chr(10)

//------------------------------------------------------------------------------------
/*{Protheus.doc}filbrowse
Examples Function MBrowse

@author Marcos Silvestrini
@version P12
@since
*/
//-------------------------------------------------------------------------------------

//----------------------------------- Static Functions---------------------------------


/*-------------------------------------------------------------------------------------
Function BInclui - Incluir
---------------------------------------------------------------------------------------*/
User Function BInclui(cAlias,nReg,nOpc)
    Local nOpcao:= 0
    nOpcao:= AxInclui(cAlias,nReg,nOpc)
    If nOpcao == 1
        MsgInfo("Inclusão Efetuada com Sucesso!")
    else
        MsgAlert("Inclusão Cancelada!")
    EndIf
return

/*-------------------------------------------------------------------------------------
Function BAltera - Alterar
---------------------------------------------------------------------------------------*/
User Function BAltera(cAlias,nReg,nOpc)
    Local nOpcao:= 0
    nOpcao:= AxAltera(cAlias,nReg,nOpc)
    If nOpcao == 1
        MsgInfo("Alteração Efetuada com Sucesso!")
    else
        MsgAlert("Alteração Cancelada!")
    EndIf
return


/*-------------------------------------------------------------------------------------
Function BDeleta - Deletar
---------------------------------------------------------------------------------------*/
User Function BDeleta(cAlias,nReg,nOpc)
    Local nOpcao:= 0
    nOpcao:= AxDeleta(cAlias,nReg,nOpc)
    If nOpcao == 1
        MsgInfo("Exclusão Efetuada com Sucesso!")
    else
        MsgAlert("Exclusão Cancelada!")
    EndIf
return

/*-------------------------------------------------------------------------------------
Function BDeleta - Deletar
---------------------------------------------------------------------------------------*/
User Function BLegenda()
    Local aLegenda:= {}
    AAdd(aLegenda,{"BR_VERDE","Pessoa Física"})
    AAdd(aLegenda,{"BR_AMARELO","Pessoa Jurídica"})
    AAdd(aLegenda,{"BR_LARANJA","Exportação"})
    AAdd(aLegenda,{"BR_MARROM","Fornecedor Rural"})
    AAdd(aLegenda,{"BR_PRETO","Não Classificado"})

    // Subtitles
    BrwLegenda(cCadastro,"Legenda",aLegenda)
return


//------------------------------------Execution----------------------------------------

User Function MBRSA2()
    Local cAlias:="SA2"
    Local aCores:={}
    Local cFiltra:="A2_FILIAL == '"+xFilial('SA2')+"' .And. A2_EST == 'SP'"
    Private cCadastro:="Cadastro MBrowse"
    Private aRotina:={}
    Private aIndexSA2:={}
    Private bFiltraBrw:={|| FilBrowse(cAlias, @aIndexSA2,@cFiltra)}

    // AAdd(aDest,xExpr)
    AAdd(aRotina,{"Pesquisar"   ,"AxPesqui"    , 0,1})
    AAdd(aRotina,{"Visualizar"  ,"AxVisual" , 0,2})
    AAdd(aRotina,{"Incluir" ,"U_BInclui" , 0,3})
    AAdd(aRotina,{"Alterar" ,"U_BAltera" , 0,4})
    AAdd(aRotina,{"Deletar" ,"U_BDeleta" , 0,5})
    AAdd(aRotina,{"Legenda"  ,"U_BLegenda" , 0,6})

    // Colors subtitles
    AAdd(aCores,{"A2_TIPO == 'F'","BR_VERDE"})
    AAdd(aCores,{"A2_TIPO == 'J'","BR_AMARELO"})
    AAdd(aCores,{"A2_TIPO == 'X'","BR_LARANJA"})
    AAdd(aCores,{"A2_TIPO == 'R'","BR_MARROM"})
    AAdd(aCores,{"Empty(A2_TIPO)","BR_PRETO"})

    // Use filbrowse
    DBSelectArea(cAlias)
    DBSetOrder(1)
    Eval(bFiltraBrw)
    DBGoTop()
    mBrowse(6,1,22,75,cAlias,,,,,,aCores)
    EndFilBrw()

return Nil
