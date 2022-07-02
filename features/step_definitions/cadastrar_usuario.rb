Dado('que eu esteja na tela inicial') do
  sidebar.tela_inicial
  
  cpf = gerar_cpf
  LOGGER.info("CPF gerado: #{cpf}")

  sleep 1
end

Dado('que tenha fechado o aviso dos cookies') do
  
end

Dado('que inicia o CPF') do
  
end

Quando('clicar no botão continar') do
  
end

Então('devo ser redirecionado para tela de cadastro') do
  
end