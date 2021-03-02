class Cadastrado_task < SitePrism::Page

	element :inserir_texto, '#place_todo'
	element :cadastrar_btn, '#add_btn'
	
	def Cadastrar_task(texto)
		inserir_texto.set texto
	end

	def Cadastrar_Btn()
		cadastrar_btn.click
	end

end