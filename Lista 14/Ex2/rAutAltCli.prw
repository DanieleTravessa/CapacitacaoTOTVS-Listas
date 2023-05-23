#INCLUDE'TOTVS.CH'
#INCLUDE'TBICONN.CH'

/*/{Protheus.doc} rAutAltCli
    (L14E2. Desenvolva uma rotina para alterar automaticamente o cadastro criado no exercício anterior.
        Deve-se alterar o endereço e telefone do cliente.)
    @type  Function
    @author user
    @since 08/05/2023
    @version version    
    /*/
User Function rAutAltCli()

    Local aDados        := {}
    Local nOper         := 4
    Private lMsErroAuto := .F.

    PREPARE ENVIRONMENT EMPRESA '99' FILIAL '01' MODULO 'FAT'

    aAdd(aDados, {'A1_COD', 'RA0001'    , /**/})
    aAdd(aDados, {'A1_END', 'Rua Rotina', /**/})
    aAdd(aDados, {'A1_DDD', '19'        , /**/})
    aAdd(aDados, {'A1_TEL', '3718-1000' , /**/})

    MsExecAuto({|x,y| MATA030(x,y)}, aDados, nOper)
    
    If lMsErroAuto
        MostraErro()
    EndIF
    
Return 
