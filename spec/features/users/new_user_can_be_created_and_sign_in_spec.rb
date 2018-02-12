require 'rails_helper'


    describe "user creates a new account"  do
      describe "user go back to home page"
      it "user logs in with new account"  do

        visit new_user_path


     fill_in 'name', with: 'Kyle'
     fill_in 'Password', with: 'poop-pie'


     click_on('Create User')

      visit login_path

      click_on("Log In")

      fill_in 'name', with: 'Kyle'
      fill_in('Password', with: 'poop-pie')

      expect(page).to have_content("Kyle")


    end
  end
