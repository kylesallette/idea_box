require 'rails_helper'

  describe "user starts on dashboard"  do
    it "they see welcome page"  do

      visit '/'

      expect(page).to have_content("Welcome to my wonderful Idea Box!")
    end
  end

    describe "user clicks sign up"  do
      it "user sees signup form"  do
        visit '/'


     click_on("Sign Up")

      expect(page).to have_content("Sign up here!")
    end
  end


  describe "user is on signup page" do
    it "user sees username and password field" do
        visit '/'

         click_on("Sign Up")

        expect(page).to have_content("Username")
          expect(page).to have_content("Password")
       end
     end
