#INCLUDE'TOTVS.CH'

/*/{Protheus.doc} User Function Retangulo
    (Ex2. Escreva um algoritmo para ler as dimens�es de um ret�ngulo)
    @type  Function
    @author user
    @since jan/2023
    @version version2  
    /*/
User Function Retangulo()

Local nBase, nAltura //nArea

    nBase := Val(FwInputBox('Escreva o valor da base do ret�ngulo: ', nBase))
    nAltura := Val(FwInputBox('Escreva o valor da altura do ret�ngulo: ', nAltura))

    FwAlertInfo('O ret�ngulo de base ' + nBase + 'e altura ' + nAltura + CRLF + '. Tem �rea de: ' + (nBase*nAltura))
    
Return
