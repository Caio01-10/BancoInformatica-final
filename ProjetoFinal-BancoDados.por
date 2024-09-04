programa {
  funcao inicio() {
    real saldo = 0.00, rendimento = 0.00, investimento = 0.00, saque, deposito
    cadeia controle
    inteiro menu = 1 , meses = 0
    cadeia extrato = ""

    enquanto(menu != 0){
    escreva("|----------------MENU-----------------|")
    escreva("         1- SALDO R$", saldo,"         \n")
    escreva("/         2- SAQUE                    /\n")
    escreva("/         3- DEPOSITO                 /\n")
    escreva("/         4- EXTRATO                  /\n")
    escreva("/         5- INVESTIMENTO             /\n")
    escreva("/         0- SAIR                     /\n")
    escreva("|-------------------------------------|\n")
    leia(menu)
    limpa()
    escolha(menu){
      caso 1:
      escreva("Saldo =", saldo, "\n")
      pare
      caso 2:
      escreva("Digite o valor para sacar: ")
      leia(saque)
      enquanto(saque < 0){
        escreva("Valor invalido, digite novamente: ")
        leia(saque)
      }
      se(saque > saldo){
        escreva("Não autorizado!\n")
        escreva("Aperte ENTER para continuar")
        leia(controle)
        limpa()
      }
      senao{
        saldo = saldo - saque
        extrato = extrato + "SAQUE ----------- R$" + saque + "\n"
        escreva("Saque realizado com sucesso! \n")
        escreva("Aperte ENTER para continuar ")
        limpa()
      }

      pare
      caso 3:
      escreva("Digite o valor para depositar")
      leia(deposito)
      enquanto(deposito < 0){
        escreva("Valor invalido digite novamente ")
        leia(deposito)
      }
      saldo = saldo + deposito
      extrato = extrato + "DEPOSIO ---------- R$" + deposito + "\n"
      escreva("Deposito realizado com sucesso!\n")
      escreva("Aperte ENTER para continuar")
      leia(controle)
      limpa()

      pare
      caso 4:
      escreva(extrato)
      escreva("Aperte ENTER para continuar")
      leia(controle)
      limpa()
      pare
      caso 5:
      escreva("Digite a quantidade de do investimento ")
      leia(investimento)
      escreva("Digite a qauntidade de meses que deseja investir: ")
      leia(meses)
      se(saldo >= investimento){
        saldo = saldo - investimento
        para(inteiro contador = 1; contador <= meses; contador++ ){
          rendimento = investimento * 1.02
          investimento = rendimento
        }
      escreva(meses," se passsaram!\n")
    
      }

      senao{
        escreva("NÂO AUTORIZADO")
      }
    }


    }
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1070; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */