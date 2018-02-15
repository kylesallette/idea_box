require 'rails_helper'


  describe "user is taken to login dashboard" do
    it "user sees signup link" do
      visit '/'

      find_link('Sign Up').visible?
    end
  end

  describe "user is taken to login dashboard" do
    it "user sees signup link" do
    visit '/'

      find_link('Log In').visible?
    end
  end

  describe "user is taken to login dashboard"  do
      it "user see welcome message" do
      visit '/'

    expect(page).to have_content("Log In")
    end
  end
