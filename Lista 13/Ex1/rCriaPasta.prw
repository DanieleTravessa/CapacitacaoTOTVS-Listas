#INCLUDE'TOTVS.CH'

/*/{Protheus.doc} User Function Rcriapasta
    (L13E1 - Programa que cria um diretório na pasta temp do Windows)
    @type  Function
    @author user
    @since 01/05/2023
    @version version2
    @param param_name, param_type, param_descr
    @return return_var, return_type, return_description
    @example
    (examples)
    @see (links_or_references)
    /*/
User Function rCriaPasta()

Local cCaminho := GETTEMPPATH()
Local cPasta := "Lista13_Ex1"
Local lSobrepoe

    If EXISTDIR(cCaminho + cPasta)
        If MSGYESNO( "A pasta já existe no caminho indicado, gostaria de sobrepor?", "Sobrepõe?" )
            lSobrepoe := .T.
        Else 
            Alert("Processo cancelado pelo usuário!")
        EndIf
    ElseIf !EXISTDIR(cCaminho + cPasta) .OR. lSobrepoe == .T.
        If MAKEDIR(cCaminho+cPasta)
            Alert("Pasta Criada com sucesso!")
        Else
            Alert("Foi encontrado um erro ao criar a pasta!")
        EndIf
    EndIf
   
Return 
