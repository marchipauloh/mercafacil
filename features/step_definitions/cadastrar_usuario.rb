Dado('que eu esteja na tela inicial') do
  home_page.tela_inicial
end

Dado('que tenha fechado o aviso dos cookies') do
  home_page.fechar_cookies
end

Dado('que insire o cpf') do
  cpf = gerar_cpf
  home_page.inserir_cpf(cpf)  
end

Quando('clicar no botão continar') do
  home_page.btn_continuar
end

Então('devo ser redirecionado para tela de cadastro') do
  expect(cadastro_usuario_page.nome_tela).to have_content "Cadastro"
end