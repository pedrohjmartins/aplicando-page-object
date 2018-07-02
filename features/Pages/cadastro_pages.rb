class CadastroPage < SitePrism::Page
  set_url '/register'

  element :campo_nome, '#register_name'
  element :campo_email, '#register_email'
  element :campo_senha, '#register_password'
  element :botao_cadastrar, 'button[type=submit]'

  def cadastrar(usuario)
    campo_nome.set usuario[:nome]
    campo_email.set usuario[:email]
    campo_senha.set usuario[:senha]
    botao_cadastrar.click
  end
end
