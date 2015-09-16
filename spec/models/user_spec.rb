require 'rails_helper'

describe User do
  context "Email present" do 
    before { @user = User.new(first_name: "Richard", last_name: "Cox", email: "webstartyours@gmail.com") }
    
    it "Should return true" do
      expect(@user.email != nil).to eq true
    end 
  end
    
  context "User is admin" do
    before { @user = User.new(first_name: "Richard", admin: true) }
    
    it "Should return true" do
      expect(@user.admin).to eq true
    end  
  end
  
  context "Non admin" do
    before { @user = User.new(first_name: "Richard") }
    
    it "Should return false" do
      expect(@user.admin).to eq false
    end
  end
  
  context "Invalid email" do
    before { @user = User.new(email: "webstartyours@gmail.com")}
    
    it "Should return an error" do
      expect(@user.email == "webstart@gmail.com").to eq false
    end
  end
  
  context "Valid email" do
    before { @user = User.new(email: "webstartyours@gmail.com")}
    
    it "Should return an error" do
      expect(@user.email == "webstartyours@gmail.com").to eq true
    end
  end
end