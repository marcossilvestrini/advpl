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
        MsgInfo("Inclus�o Efetuada com Sucesso!")
    else
        MsgAlert("Inclus�o Cancelada!")
    EndIf
return

/*-------------------------------------------------------------------------------------
Function BAltera - Alterar
---------------------------------------------------------------------------------------*/
User Function BAltera(cAlias,nReg,nOpc)
    Local nOpcao:= 0
    nOpcao:= AxAltera(cAlias,nReg,nOpc)
    If nOpcao == 1
        MsgInfo("Altera��o Efetuada com Sucesso!")
    else
        MsgAlert("Altera��o Cancelada!")
    EndIf
return


/*-------------------------------------------------------------------------------------
Function BDeleta - Deletar
---------------------------------------------------------------------------------------*/
User Function BDeleta(cAlias,nReg,nOpc)
    Local nOpcao:= 0
    nOpcao:= AxDeleta(cAlias,nReg,nOpc)
    If nOpcao == 1
        MsgInfo("Exclus�o Efetuada com Sucesso!")
    else
        MsgAlert("Exclus�o Cancelada!")
    EndIf
return

/*-------------------------------------------------------------------------------------
Function BDeleta - Deletar
---------------------------------------------------------------------------------------*/
User Function BLegenda()
    Local aLegenda:= {}
    AAdd(aLegenda,{"BR_VERDE","Pessoa F�sica"})
    AAdd(aLegenda,{"BR_AMARELO","Pessoa Jur�dica"})
    AAdd(aLegenda,{"BR_LARANJA","Exporta��o"})
    AAdd(aLegenda,{"BR_MARROM","Fornecedor Rural"})
    AAdd(aLegenda,{"BR_PRETO","N�o Classificado"})

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
