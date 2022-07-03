module Helpers
    def carregar_yaml(codigo, nome_arquivo)
        file = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/#{nome_arquivo}"))
        file[codigo]
    end

    #gerar CPF para o cadastro de usuario
    def gerar_cpf
      begin
        data = { 
            acao: "gerar_cpf", 
            pontuacao: "N", 
            cpf_estado: "SP" 
          }
          
          url = "https://www.4devs.com.br/ferramentas_online.php"
          
          response = HTTParty.post(url,
            body: URI.encode_www_form(data),
            headers: { 
              'Content-Type' => 'application/x-www-form-urlencoded' 
            }
          )

          LOGGER.info("CPF gerado: #{response}")
          response_body = response
        rescue RuntimeError
          LOGGER.error("Erro ao gerar um CPF pelo site da 4devs.")
        end
    end
end