require 'rails_helper'

  describe User, type: :model do
    describe "validations" do
      it {should validate_presence_of(:name)}
      it {should validate_presence_of(:password)}
   end
 end

 describe User do
  describe "invalid sign in" do
    describe "invalide attributes" do
      it "is invalid without a username" do
        user = User.new(password: "test")

        expect(user).to_not be_valid
      end
    end
  end
end
