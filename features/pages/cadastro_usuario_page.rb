class CadastroUsuarioPage < SitePrism::Page

  def nome_tela 
    find(".page-title").text
  end

end