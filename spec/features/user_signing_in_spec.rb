require 'rails_helper'
#Adicione um link "Log in" na layout/aplication
feature "creating and deleting a list" do 

  
  def fill_in_signin_fields
    fill_in "user[email]", with: "miniapp.aram@gmail.com"
    fill_in "user[password]", with: "administrador"
    click_button "Log in"
  end

  def fill_in_list_fields
    fill_in "list[title]", with: "Test list"
    fill_in  "list[todos_attributes][0][task]", with: "test task"
    click_button "Add"
    fill_in "list[todos_attributes][1][task]", with: "added task"
    click_button "Create"
  end

  scenario "visiting the site to sign in" do
    visit root_path
    click_link "Sign in"
    fill_in_signin_fields
    expect(page).to have_content("Signed in successfully.")
  end

  scenario "creating a list"
    visit new_list_path
    fill_in_list_fields
    expect(page).to have_content("List was successfuly created!")
  end

end