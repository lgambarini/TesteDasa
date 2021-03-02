class Click_Btn < SitePrism::Page

	element :todo_btn, '#todo_btn'
	element :done_btn, '#done_btn'
	
	def btn_todo()
		todo_btn.click
	end

	def btn_done()
		done_btn.click
	end

end 

