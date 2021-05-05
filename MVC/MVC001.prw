#include 'protheus.ch'
#include "parmtype.ch"
#include "FwMvcDef.ch"
#include "TopConn.ch"
#DEFINE CRLF Chr(13)+Chr(10)

//------------------------------------------------------------------------------------
/*{Protheus.doc}MVC001
Examples MVC

@author Marcos Silvestrini
@version P12
@since
*/
//-------------------------------------------------------------------------------------

//------------------------------------ User Functions----------------------------------

User Function MVC001()
    Local oBrowse:=FwMBrowse():New()
    oBrowse:SetAlias("ZZB")
    oBrowse:SetDescription("Albuns")

    //Subtitles
    oBrowse:AddLegend("ZZB->ZZB_TIPO == '1'","GREEN","CD")
    oBrowse:AddLegend("ZZB->ZZB_TIPO == '2'","BLUE","DVD")

    oBrowse:Activate()
return
