#language: pt

@cadastrar_usuario
Funcionalidade: Cadastro de novo usuario
    
  Contexto: 
    Dado que eu esteja na tela inicial
    E que tenha fechado o aviso dos cookies

  Cenario: Cadastrar novo usuario
    Dado que inicia o CPF
    Quando clicar no botão continar
    Então devo ser redirecionado para tela de cadastro