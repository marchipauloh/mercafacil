Dir[File.join(File.dirname(__FILE__), "../pages/*_page.rb")].each { |file| require file }

module Pages

  def home_page
    @home_page ||= HomePage.new
  end
 
  def cadastro_usuario_page
    @cadastro_usuario_page ||= CadastroUsuarioPage.new
  end
end
