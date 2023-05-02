#INCLUDE'TOTVS.CH'

/*/{Protheus.doc} User Function Retangulo
    (Ex2. Escreva um algoritmo para ler as dimensões de um retângulo)
    @type  Function
    @author user
    @since jan/2023
    @version version2  
    /*/
User Function Retangulo()

Local nBase, nAltura //nArea

    nBase := Val(FwInputBox('Escreva o valor da base do retângulo: ', nBase))
    nAltura := Val(FwInputBox('Escreva o valor da altura do retângulo: ', nAltura))

    FwAlertInfo('O retângulo de base ' + nBase + 'e altura ' + nAltura + CRLF + '. Tem área de: ' + (nBase*nAltura))
    
Return
