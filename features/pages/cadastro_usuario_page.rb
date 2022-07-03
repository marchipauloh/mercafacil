class CadastroUsuarioPage < SitePrism::Page

  def nome_tela 
    find(".page-title").text
  end

  def cadastrar_informacoes(dados, cpf)
    find('input[name="name"]', wait: 5).set dados['nome']
    find('input[name="phone"]', wait: 5).set dados['cel']
    find('label',text: "Feminino", wait: 5).click
    find('input[name="email"]', wait: 5).set "#{dados['email']}#{cpf}@yopmail.com"
    find('input[name="birth_date"]', wait: 5).set dados['dt_nasc']
    find('input[name="cep"]', wait: 5).set dados['cep']
    find('input[name="bairro"]', wait: 5).set dados['bairro']
    find('input[name="logradouro"]', wait: 5).set dados['rua']
    find('input[name="numero"]', wait: 5).set dados['num']
    find('input[name="password"]', wait: 5).set dados['senha']
    # Precisa inserir um name neste input, pois o id do campo pode mudar 
    # sem o name fica dificil encontrar este campo para inserir o dado
    find('#input-78').set dados['senha']
  end

  def aceiar_termos_adesao
    find(".terms-check .link a", text: "termos de adesão", wait: 5).click
    click_button "Li e concordo"
  end 

  def btn_cadastrar
    click_button "cadastrar"
  end
end