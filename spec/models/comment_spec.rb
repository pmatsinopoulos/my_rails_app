require 'rails_helper'

describe Comment do
  context "Check rating data type" do
    before { @comment = Comment.new(rating: 2) }
  
    it "Should return false" do
      expect( @comment.rating.instance_of? String ).to eq false
    end
    
    it "Should return true" do
      expect( @comment.rating.instance_of? Fixnum ).to eq true
    end
  end
  
  context "Check if review exists" do
    before { @comment = Comment.new(body: "great product") }
    
    it "Should return true" do
      expect( @comment.body != nil ).to eq true
    end
    
    it "Should return false" do
      expect( @comment.body == nil ).to eq false
    end
  end
end 