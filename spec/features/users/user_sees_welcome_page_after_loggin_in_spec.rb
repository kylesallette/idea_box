require 'rails_helper'


    describe "user logs in"  do
      describe "then user sees create new idea link"  do
        describe "user inputs info for new idea"  do
          it "user sees new idea"  do
              user = User.create!(name: "Kyle", email: "kylesallette@gmail.com", password: "poop-pie")

             visit '/'


          click_on("Log In")

          fill_in 'name', with: 'Kyle'
          fill_in 'Password', with: 'poop-pie'


          click_on("Log In")

          expect(page).to have_content("Welcome")
        end
      end
    end
  end


    describe "user starts on dashboard"  do
      it "they see welcome image"  do

        visit '/'

      have_css("img[src*='https://i.imgur.com/tLVDqbW.jpg']")
      end
    end
