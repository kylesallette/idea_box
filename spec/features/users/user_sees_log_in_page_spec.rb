require 'rails_helper'


    describe "user clicks log in"  do
      it "user sees log in form"  do
        visit '/'


     click_on("Log In")

      expect(page).to have_content("Login to Idea Box")
    end
  end


      describe "user clicks log in"  do
        it "user sees log in form"  do
          visit '/'


       click_on("Log In")

        expect(page).to have_content("Login to Idea Box")
        expect(page).to have_content("Username")
        expect(page).to have_content("Password")

      end
    end
