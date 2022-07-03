#language: pt

@cadastrar_usuario
Funcionalidade: Cadastro de novo usuario
    
  Contexto: 
    Dado que eu esteja na tela inicial
    E que tenha fechado o aviso dos cookies

  @acessar_tela_cadastro
  Cenario: Acessar tela de cadastro do novo usuario
    Dado que insire o cpf
    Quando clicar no botão continar
    Então devo ser redirecionado para tela de cadastro

  @novo_usuario
  Cenario: Cadastar novo usuario
    Dado que insire o cpf
    E que tenha acessado a tela de cadastro
    Quando cadastrar o usuario
    Então devo visualizar a mensagem que foi cadastrado
     