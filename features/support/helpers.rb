module Helpers
    def carregar_yaml(codigo, nome_arquivo)
        file = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/#{nome_arquivo}"))
        file[codigo]
    end
end