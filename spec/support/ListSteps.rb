module ListSteps

	def visti_homepage
		visit("/")
	end

	def visit_list_form
		sign_in
		visit("/list/new")
	end

	def create_public_list(title, task)
		visit_list_form
		fill_in_list_fields(title, task)
		check("list_public")		
		click_button "Create"
	end

	def create_private_list(title, task)
		visit_list_form
		fill_in_list_fields(title, task)
		click_button "Create"
	end

	def visitor_should_see_public_lists
		expect(page).to have_content("Public lists")
	end

	def visitor_should_see_public_lists_with_public_list(title)
		expect(page.find("#public_lists")).to have_content(title)
	end

	def visitor_should_not_see_public_lists_with_private_list(title)
		expect(page.find("#public_lists")).to not_have_content(title)
	end

	def visitor_should_not_see_private_lists
		expect(page).to not_have_content("My lists")
	end

	def visitor_should_see_private_lists
		expect(page).to have_content("My lists")
	end

	def visitor_should_see_private_lists_with_private_list(title)
		expect(page.find("#private_lists")).to have_content(title)
	end

	def fill_in_list_fields(list_title, todo_task)
	    fill_in "list[title]", with: list_title
	    fill_in  "list[todos_attributes][0][task]", with: todo_task
  	end