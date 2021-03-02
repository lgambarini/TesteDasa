# language: pt


Funcionalidade: Avaliação Dasa

# Validações básicas de tela inical

@tela_inicial_todo @regressao
Cenário: validacao botao Todo
Dado que estou na tela inicial 'http://localhost:8080/todo'
Quando clica no botão todo
Entao o campo de insercao é exibido

@tela_inicial_done @regressao 
Cenário: validação botao Done
Dado que estou na tela inicial 'http://localhost:8080/todo'
Quando clica no botão done 
Entao o campo de busca por task é exibido

# --------------- ///// ---------------

#Cenários de TODO

#inclusão de tasks
@inserir_tasks @regressao 
Cenário: inclusão de tasks 
Dado que estou na tela inicial 'http://localhost:8080/todo'
E adiciono o nome "O lucas"
Quando clicao em adicionar
Entao consigo visualizar o nome "O lucas" cadastrado abaixo

#inclusão de varias tasks
@inserir_tasks_multi @regressao
Cenário: inclusão de várias tasks 
Dado que estou na tela inicial 'http://localhost:8080/todo'
E adiciono o nome "O lucas;vai passar;no teste!"
Quando clicao em adicionar
Entao consigo visualizar o nome "O lucas;vai passar;no teste!" cadastrado abaixo

# --------------- ///// ---------------

#Validações de conclusão de task
@conclusao_task @regressao
Cenário: Validação de conclusão de task
Dado que estou na tela inicial 'http://localhost:8080/todo'
E adiciono o nome "O lucas passou no teste?"
E clicao em adicionar
Quando clico no checkbox de alguma task
Entao A task é movida para Done e valido "O lucas passou no teste?"

# --------------- ///// ---------------

#Validações de exclusão de task
@exclusao_task_todo @regressao
Cenário: Validação de exclusão de task
Dado que estou na tela inicial 'http://localhost:8080/todo'
E adiciono o nome "Vou sumir em 3..2...1..."
E clicao em adicionar
Quando clico no botão de excluir uma task
Entao A task é removida

# --------------- ///// ---------------


#Cenários de DONE

#Validações de busca por uma task
@busca_task @regressao1
Cenário: Busca por uma task
Dado que estou na tela inicial 'http://localhost:8080/todo'
E adiciono o nome "me achou?"
E clicao em adicionar
E clico no checkbox de alguma task
E clica no botão done 
Quando busco pela  uma task "me achou?"
Entao vejo a task buscada e valido se a task existe "me achou?"

# --------------- ///// ---------------

#Validações de exclusão de tasks
@exclusao_task_done @regressao
Cenário: exclusão de uma task
Dado que estou na tela inicial 'http://localhost:8080/todo'
E adiciono o nome "bug???"
E clicao em adicionar
E clico no checkbox de alguma task
E clica no botão done 
E busco pela  uma task "bug???"
Quando clico no botão de excluir uma task
Entao A task é removida

# --------------- ///// ---------------
