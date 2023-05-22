#INCLUDE'TOTVS.CH'
#INCLUDE'TBICONN.CH'

/*/{Protheus.doc} rAutCadCli
    (L14Ex1. Desenvolva um programa que executa uma rotina automática para cadastrar um cliente.)
    @type  Function
    @author Daniele Travessa
    @since 08/05/2023
    @version version    
    @see (links_or_references)
    /*/
Function rAutCadCli()

    Local aDados := {}
    Local nOper := 3
    Private lMsErroAuto := .F.

    PREPARE ENVIRONMENT EMPRESA '99' FILIAL '01' MODULO 'FAT'

    aAdd(aDados, {'A1_FILIAL'   , xFilial('SA1')    ,/**/})
    aAdd(aDados, {'A1_COD'      , 'RA0001'          ,/**/})
    aAdd(aDados, {'A1_LOJA'     , '01'              ,/**/})
    aAdd(aDados, {'A1_NOME'     , 'TesteRotinAutom' ,/**/})
    aAdd(aDados, {'A1_END'      , 'Rua Automática'  ,/**/})
    aAdd(aDados, {'A1_NREDUZ'   , 'Teste RA'        ,/**/})
    aAdd(aDados, {'A1_TIPO'     , 'R'               ,/**/})
    aAdd(aDados, {'A1_EST'      , 'SP'              ,/**/})
    aAdd(aDados, {'A1_COD_MUN'  , '00501'           ,/**/})

    MsExecAuto({|x,y| MATA030(x,y)}, aDados, nOper)
    
    if lMsErroAuto
        MostraErro()
    endif

Return
