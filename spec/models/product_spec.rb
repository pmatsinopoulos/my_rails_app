require 'rails_helper'

describe Product do
  describe "name" do
    context "when is blank" do
      before do
        @product = Product.new
      end  

      it "should render product invalid" do    
        # fire
        @product.valid?

        # check
        expect(@product).to be_invalid
        expect(@product.errors[:name]).to include("can't be blank")
      end
    end    
  end  
  
  describe "#average_rating" do
    context "when 3 comments with 3 4 and 5 rating" do
      before do
        # setup
        
        user = create :user
        @product = create :product
        [3, 4, 5].each do |rating|
          @product.comments << build(:comment, user: user, rating: rating)
        end  
      end  
      
      it "should return 4 when 3 comments with 3 4 and 5 rating" do
        # fire
        result = @product.average_rating

        # check
        expect(result).to eq(4)
      end        
    end 
    
    context "when 3 comments with 3 3 and 4 rating" do
      before do
        # setup
        
        user = create :user
        @product = create :product
        [3, 3, 4].each do |rating|
          @product.comments << build(:comment, user: user, rating: rating)
        end  
      end  
      
      it "should return 3.33 when 3 comments with 3 3 and 4 rating" do
        # fire
        result = @product.average_rating

        # check
        expect(result).to be > 2
      end        
    end  
  end  
  
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