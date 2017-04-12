module UserSteps
	
	def sign_in
		visit("/users/sign_in")
		fill_in "user[email]", with: "aramsm3@gmail.com"
        fill_in "user[password]", with: "123456"
        click_button "Log in"
	end

    def sign_out
    	click_link "Logout"
    end

end