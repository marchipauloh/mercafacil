Dado('que eu esteja na tela inicial') do
  home_page.tela_inicial
end

Dado('que tenha fechado o aviso dos cookies') do
  home_page.fechar_cookies
end

Dado('que insire o cpf') do
  @CPF = gerar_cpf
  home_page.inserir_cpf(@CPF)  
end

Quando('clicar no botão continar') do
  home_page.btn_continuar
end

Então('devo ser redirecionado para tela de cadastro') do
  expect(cadastro_usuario_page.nome_tela).to have_content "Cadastro"
end

Dado('que tenha acessado a tela de cadastro') do
  steps %{
    Quando clicar no botão continar
    Então devo ser redirecionado para tela de cadastro
  }
end

Quando('cadastrar o usuario') do
  @dados = carregar_yaml("dados_usuario", "usuarios.yaml")
  cadastro_usuario_page.cadastrar_informacoes(@dados, @CPF)
  cadastro_usuario_page.aceiar_termos_adesao
  cadastro_usuario_page.btn_cadastrar
end

Então('devo visualizar a mensagem que foi cadastrado') do
  expect(page).to have_content "PARABÉNS"
end