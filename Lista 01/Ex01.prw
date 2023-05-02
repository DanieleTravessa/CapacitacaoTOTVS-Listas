#INCLUDE'TOTVS.CH'

/*/{Protheus.doc} User Function Antecessor
    (Ex1. Escreva um algoritmo para ler um valor e escrever o seu antecessor)
    @type  Function
    @author user
    @since 01/2023
    @version version2    
    /*/
User Function Antecessor()

Local nValor := 0
Local nAntecessor := 0

    nValor := Val(FwInputBox('Por favor, Insira um valor: ', nValor))
    nAntecessor := nvalor - 1

    MSGALERT( nAntecessor, "O antecessor do valor informado é: ")

Return
