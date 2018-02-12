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
          click_on("Add a New Idea")


      expect(page).to have_content("Name")
      expect(page).to have_content("Content")

      click_on("Create Idea")

      
    end
  end
end
end
