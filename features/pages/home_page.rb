class HomePage < SitePrism::Page
    
  def tela_inicial
    visit ("/")
  end

  def fechar_cookies
    find(".cookie-banner .v-btn", wait: 10).click
  end

  def inserir_cpf(cpf)
    find("#input-19", wait: 5).set cpf
  end
  
  def btn_continuar
    find(".v-input__append-outer .v-btn", wait: 2).click
  end
end

