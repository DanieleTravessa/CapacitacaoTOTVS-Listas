#INCLUDE'TOTVS.CH'
#INCLUDE'TBICONN.CH'

/*/{Protheus.doc} rAutExcFor
    (L14E3. Desenvolva um programa que executa uma rotina autom�tica para escluir um fornecedor)
    @type  Function
    @author Daniele Travessa
    @since 08/05/2023    
    /*/
User Function rAutExcFor()
    
    Local aDados        := {}
    Local nOper         := 5
    Private lMsErroAuto := .F.

    PREPARE ENVIRONMENT EMPRESA '99' FILIAL '01' MODULO 'COM'

    aAdd(aDados, {'A2_COD', 'RAF001', /**/})

    MsExecAuto({|x,y| MATA020(x,y)}, aDados, nOper)

    If lMsErroAuto 
        MostraErro()
    EndIf  

Return
