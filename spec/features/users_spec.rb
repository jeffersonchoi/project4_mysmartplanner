require 'rails_helper'

feature "a user can create an account" do
  scenario "valid registration" do
   visit new_user_path
  #  fill_in "First name", with: "Test"
  #  fill_in "Last name", with: "test"
  #  choose "user[gender]", option: 'male'
  #  fill_in "Email", with: "testtesttest@test.com"
  #  select '1991', from: "user[dob(1i)]"
  #  select 'September', from: "user[dob(2i)]"
  #  select '12', from: "user[dob(3i)]"
   fill_in "user[password]", with: "12345678"
   fill_in "user[password_confirmation]", with: "12345678"
   #
   #
   click_on("Register")

   expect(page).to have_content("error")
  end
end
