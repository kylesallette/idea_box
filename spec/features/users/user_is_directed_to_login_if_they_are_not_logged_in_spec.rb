require 'rails_helper'


    describe "user types in path for ideas index"  do
      it "user in redirected to login"  do
        visit '/'


     click_on("Log In")

      expect(page).to have_content("Login to Idea Box")
    end
  end
