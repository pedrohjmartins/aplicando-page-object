Dado('que o usuário esteja no formulário de cadastro') do
  @cadastro_page = CadastroPage.new
  @cadastro_page.load
end

Dado('informe o seguinte dados:') do |table|
  @usuario = table.rows_hash
end

Quando('realizar o cadastro') do
  @cadastro_page.cadastrar(@usuario)
end

Então('usuário vê a seguinte mensagem: {string}') do |mensagem|
  expect(page).to have_content mensagem
end
