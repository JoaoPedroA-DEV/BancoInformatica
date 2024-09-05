programa {
  funcao inicio() {
    cadeia senha = "senha"
    cadeia pswd
    inteiro menu = 0
    real saldo = 0
    real saque = 0
    real deposito = 0
    cadeia extrato = ""
    caracter controller
    escreva("Digite sua senha: ")
    leia(pswd)
    enquanto(pswd != senha){
      escreva("Senha inválida! Tente novamente: ")
      leia(pswd)
    }
    limpa()
    se(pswd == senha){
        faca{
          escreva("|-----------MENU--------|\n")
          escreva("|1. -> SAQUE   |\n")
          escreva("|2. -> DEPOSITO|\n")
          escreva("|3. -> EXTRATO |\n")
          escreva("|4. -> SALDO   |\n")
          escreva("|0. -> SAIR    |\n")
          escreva("|Digite sua opcão -> ")
          leia(menu)
          limpa()
          
          escolha(menu){
            caso 1: 
            escreva("Digite sua senha: ")
            leia(pswd)
            se(pswd == senha){

            escreva("Digite o valor do saque desejado: ")
            leia(saque)
            se(saque <= 0 ou saldo < saque ){
              escreva("TENTE NOVAMENTE, SAQUE NÃO REALIZADO!\n")
              pare

            }
            
            senao se(saque > 0 e saldo >= saque){
              saldo = saldo - saque
              escreva("SAQUE RELIZADO COM SUCESSO, AGORA O SEU SALDO É DE R$", saldo, "\n")
              extrato = extrato + "|Saque R$" + saque + "\n"
              pare
            }
            }
            senao{
              escreva("Senha inválida\n")
              pare
            }
            caso 2: 
            escreva("Digite sua senha: ")
            leia(pswd)
            se(pswd == senha){

            escreva("Digite o valor do depósito: ")
            leia(deposito)
            se(deposito <= 0){
              escreva("VALOR DIGITADO INVIAVEL, DIGITE NOVAMENTE\n")
            }
            senao{
              saldo = saldo + deposito
              escreva("DEPOSITO REALIZADO COM SUCESSO, SEU SALDO ATUAL É DE R$", saldo, "\n")
              extrato = extrato + "|Deposito R$" + deposito + "\n"
              pare
            }
            }
            senao{
              escreva("Senha Inválida!")
              pare
            }
            caso 3:
            escreva("Digite sua senha: ")
            leia(pswd)
            se(pswd == senha){
            escreva(extrato,"\n")
            pare
            }
            senao{
              escreva("Senha Inválida")
              pare
            }
            caso 4:
            escreva("Digite sua senha:")
            leia(pswd)
            se(pswd == senha){
            escreva("Seu saldo é de:R$", saldo, "\n")
            pare
            }
            senao{
              escreva("Senha Inválida")
              pare
            }
          }
          

          
        }enquanto(menu != 0)
      }
  senao{
    escreva("Senha inválida!")
  } 
  }
      }

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seÃ§Ã£o do arquivo guarda informaÃ§Ãµes do Portugol Studio.
 * VocÃª pode apagÃ¡-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 450; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */