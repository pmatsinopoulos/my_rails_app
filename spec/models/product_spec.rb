require 'rails_helper'

describe Product do
  context "Product name exists" do
    before { @product = Product.new(description: "this is my description") }
  
    it "Should return true" do
      expect( @product.description != nil ).to eq true
    end
  end
  
  context "Product name does not exist" do
    before { @product = Product.new(description: "this is my description") }
  
    it "Should return true" do
      expect( @product.name == nil ).to eq true
    end
  end

  context "Match product name" do
    before { @product = Product.new(name: "blue guitar") }
      
    it "Should return blue guitar" do
      expect( @product.name ).to eq "blue guitar"
    end
    
    it "Should return false" do
      expect( @product.name == "blue" ).to eq false
    end
  end
end 