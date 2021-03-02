#Ir para a home
Dado('que estou na tela inicial {string}') do |home|
  visit home
end

#clicar no botão todo
Quando('clica no botão todo') do
  @btn_click = Click_Btn.new
  @btn_click.btn_todo()
end

#clicar no botão Done
Quando('clica no botão done') do
  @btn_click = Click_Btn.new
  @btn_click.btn_done()
end

#adicionar uma task
Dado('adiciono o nome {string}') do |texto|
	@inserir_texto = Cadastrado_task.new
	@inserir_texto.Cadastrar_task(texto)
end

Quando('clicao em adicionar') do
	@cadastrar_btn = Cadastrado_task.new
	@cadastrar_btn.Cadastrar_Btn()
end
 
#clicar no checbox de concluir a task
Quando('clico no checkbox de alguma task') do
	@select_checkbox = Acoes_task.new
	@select_checkbox.Selecionar_task()
end
                                                               
#excluir uma task
Quando('clico no botão de excluir uma task') do
	@excluir_task = Acoes_task.new
	@excluir_task.Excluir_task
end

#busca por uma task
Quando('busco pela  uma task {string}') do |task|
	@buscar_task = Acoes_task.new
	@buscar_task.Busca_task(task)
end

 # ----- Validações

#validações de botão todo
Entao('o campo de insercao é exibido') do
  expect(page).to have_current_path('http://localhost:8080/todo', url: true)
end

#validações de botão done
Entao('o campo de busca por task é exibido') do
  expect(page).to have_current_path('http://localhost:8080/done', url: true)
end

#validação de task cadastrada
Entao('consigo visualizar o nome {string} cadastrado abaixo') do |string|
	expect(page).to have_content string
end

#validar se a task foi movida para done
Entao('A task é movida para Done e valido {string}') do |string|
	@btn_done = Click_Btn.new
	@btn_done.btn_done
	expect(page).to have_content string
end

# validacção de task excluida
Entao('A task é removida') do
	expect(page).not_to have_content('Vou sumir em 3..2...1...')
end

#validação de task encontrada
Entao('vejo a task buscada e valido se a task existe {string}') do |string|
	expect(page).to have_content string
end
