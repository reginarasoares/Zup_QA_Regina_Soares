module Helper
    def print_tela(nome_arquivo, resultado)
        caminho_arquivo = "reports/screenshots/test_#{resultado}"
        foto = "#{caminho_arquivo}/#{nome_arquivo}.png"
        page.save_screenshot(foto)
        embed(foto, "image/png", "Clique aqui - #{nome_arquivo}")
    end
end