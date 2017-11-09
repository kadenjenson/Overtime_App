require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Creation" do 
    before do 
      @user = User.create(email: "test2@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "SpongeBob", last_name: "Sqaurepants")
    end

      it "can be created" do 
        expect(@user).to be_valid
      end

      it "cannot be created without first and last name" do 
        @user.first_name = nil
        @user.last_name = nil
        expect(@user).to_not be_valid
    end
  end
end
