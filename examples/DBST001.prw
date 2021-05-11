#include 'protheus.ch'
#include 'parmtype.ch'

/*/{Protheus.doc} DBST001
//TODO Exemplo de uso de DBStruct()
@author RCTI Treinamentos
@since 2019
@See www.rctitreinamentos.com.br

@type function
/*/
User function DBST001()
  // Conect in DB
  Local nHandle := TCLink("POSTGRES/protheus", "192.168.0.133", 7900)
  Local cTable := "ZZB990"
  Local cRDD := "TOPCONN"
  Local aStruZZB    := ZZB->(DbStruct())

  // Open Table
  DBUseArea( .T., cRDD, cTable, (cTable), .F., .T. )

  // Write regs in files
  MemoWrite("F:\Projetos\advpl\tables\zzb990.txt", VarInfo("aStruZZB", aStruZZB, , .F.))

  // Close Table
  DBCloseArea()

  // Close conn
  TCUnlink( nHandle )
return
