#language: pt

@cadastrar_usuario
Funcionalidade: Cadastro de novo usuario
    
  Contexto: 
    Dado que eu esteja na tela inicial
    E que tenha fechado o aviso dos cookies

  Cenario: Acessar tela de cadastro do novo usuario
    Dado que insire o cpf
    Quando clicar no botão continar
    Então devo ser redirecionado para tela de cadastro

  Cenario: Cadastar novo usuario