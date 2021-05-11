#include 'protheus.ch'
#include "parmtype.ch"
#include "FwMvcDef.ch"

//------------------------------------------------------------------------------------
/*{Protheus.doc}MVC001
Examples MVC

@author Marcos Silvestrini
@version P12
@since
*/
//-------------------------------------------------------------------------------------

// --------------------------------Static Function-------------------------------------

// MenuDef
Static Function MenuDef()
    Local aRotina:={}
    Local aRotAux:= FWMVCMenu("MVC001")

    // Adicionando menus manualmente
    /*List Operations
    1 - Pesquisar
    2 - Visualizar
    3 - Incluir
    4 - Alterar
    5 - Excluir
    6 - others: your function here
    7 - Copiar
    */

    // Add Actions\Operations
    // Add OPTION aRotina TITLE 'Visualizar' ACTION 'VIEWDEF.MVC001'  		OPERATION 2 ACCESS 0
	// Add OPTION aRotina TITLE 'Incluir' ACTION 'VIEWDEF.MVC001' 	   		OPERATION 3 ACCESS 0
	// Add OPTION aRotina TITLE 'Alterar' ACTION 'VIEWDEF.MVC001'     		OPERATION 4 ACCESS 0
	// Add OPTION aRotina TITLE 'Excluir' 	ACTION 'VIEWDEF.MVC001'     	OPERATION 5 ACCESS 0
	// Add OPTION aRotina TITLE 'Informacao' ACTION 'u_infMVC()'     		OPERATION 6 ACCESS 0

    // Adicionando menus automaticamente
    Add OPTION aRotina TITLE 'Informacao' ACTION 'u_infMVC()' OPERATION 6 ACCESS 0

    For nx:=1 To Len(aRotAux)
        AADD(aRotina, aRotAux[nX])
    Next

return aRotina

// ModelDef
Static Function ModelDef()
    local oModel:= Nil
    Local oStZZB:= FWFormStruct(1,"ZZB")

    // Instanciando o modelo de dados
    // FWFormStruct(nType,cAliasSX2,/*bSX3*/) - nType: 1-Model | 2-View
    oModel:=  MPFormModel():New("ZMODELLM", , , ,)

    // Atribuindo formulario para o modelo de dados
    oModel:AddFields("FORMZZB",,oStZZB)

    // Chave primaria da rotina
    oModel:SetPrimaryKey({'ZZB_FILIAL','ZZB_COD'})

    // Adicionando Descrição ao Modelo
    oModel:SetDescription("Modelo de Dados ZZB")

    // Adicionando Descrição ao Formulario do Modelo
    oModel:GetModel("FORMZZB"):SetDescription("Formulario de Cadastros")

return oModel

// ViewDef
Static Function ViewDef()
    // Monta o array com a estrutura da tabela
    // Local aStruZZB:=ZZB->(DBStruct())

    // Carrega ModelDef do fonte passado por parametro
    Local oModel:= FWLoadModel("MVC001")

    // Define a estrutura do modelo
    Local oStZZB:= FwFormStruct(2,"ZZB")

    // Objeto View
    Local oView:= Nil

    // Set objeto View
    oView:= FWFormView():New()
    oView:SetModel(oModel)

    // Atribuindo formulario para o modelo de dados
    oView:AddField("VIEW_ZZB", oStZZB, "FORMZZB")

    // Criando conteiner
    oView:CreateHorizontalBox("TELA",100)

    // Definindo titulo
    oView:EnableTitleView("VIEW_ZZB",'Dados da View')

    // Fechando tela na ação ok
    oView:SetCloseOnOk({||.T.})

    // Definindo Owner da View - Id da View
    oView:SetOwnerView("VIEW_ZZB","TELA")

return oView

//------------------------------------ User Functions----------------------------------

User Function INFMVC()
	Local cMsg := "-<b>Meu primeiro fonte em MVC<br> Este é o meu primeiro programa desenvolvido utilizando MVC."
	MsgInfo(cMsg)
Return


User Function MVC001()
    // Define Workarea
    Local aArea:=GetArea()
    //Class Constructor
    Local oBrowse:=FwMBrowse():New()

    //Define Alias
    oBrowse:SetAlias("ZZB")
    //Define Title
    oBrowse:SetDescription("Albuns Musicas")

    //Define Subtitles\Legends
    oBrowse:AddLegend("ZZB->ZZB_TIPO == '1'","GREEN","CD")
    oBrowse:AddLegend("ZZB->ZZB_TIPO == '2'","BLUE","DVD")

    // Active Browse
    oBrowse:SetMenuDef( 'MVC001' )
    oBrowse:Activate()
    RestArea(aArea)
return Nil
