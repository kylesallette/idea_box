require 'rails_helper'

  describe "user starts on dashboard"  do
    it "they see welcome image"  do

      visit '/'

    have_css("img[src*='https://i.imgur.com/ydRkyuu.jpg']")
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
