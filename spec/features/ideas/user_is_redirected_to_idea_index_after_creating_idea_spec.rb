require 'rails_helper'

  describe 'user logs in'  do
    describe 'user clicks on create new idea'  do
      describe 'user submits new idea'  do
        it 'user sees idea index'  do
          user = User.create!(name: "Kyle", email: "kylesallette@gmail.com", password: "poop-pie")

          visit '/'

          click_on("Log In")

          fill_in 'name', with: 'Kyle'
          fill_in 'Password', with: 'poop-pie'

          click_on("Log In")
          click_on("Add a New Idea")

          fill_in 'idea_name', with: 'new project'
          fill_in 'idea_content', with: 'stuff'

          click_on("Create Idea")

          expect(page).to have_content('new project')
        end
      end
    end
  end
