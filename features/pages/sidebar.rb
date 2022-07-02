class SideBarView < SitePrism::Page
  set_url "/"
  
  def tela_inicial
    visit ("/")
  end
end

