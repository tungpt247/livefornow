require 'rails_helper'

RSpec.describe User, type: :model do
  describe "the 'Name' attribute" do
    before do
      @user = build(:user)
    end
    it "should exsit on User model" do
      expect(@user).to respond_to(:name)
      expect(@user).to respond_to(:name=)
    end
    it "should be unique" do
      @user.save
      user2 = build(:user, :email => 'other@example.com')
      expect(user2).not_to be_valid
      expect(user2.errors[:name]).to include("has already been taken")
    end
    it "should be required" do
      @user.name = nil
      expect(@user).not_to be_valid
    end
  end
end
