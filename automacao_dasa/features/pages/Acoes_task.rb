class Acoes_task < SitePrism::Page

	element :select_task, '#checkbox'
	element :delet_task, '#remove_btn'
	element :src_task, '#place_done'

	def Selecionar_task()
		select_task.check
	end 

	def Excluir_task()
		select_task.hover
		delet_task.click
	end

	def Busca_task(task)
		src_task.set task
	end

end