require 'rails_helper'

describe ProductsController, :type => :controller do
  describe "Get #settings" do
    context "when user is logged in" do
      login_user
      
      before do
        user = build(:user, id: 5) 
        @product = build(:product, id: 7, name: "my product")
      end
      
      it "should render new" do
        get :new
        expect(response).to render_template("products/new")
      end
      
      it "should render product" do
        get :show, id: @product.id
        expect(response).to render_template("products/show")
      end
    end	
    
    context "when user is not logged in" do
      it "should render login" do
        get :new
        should_not render_template("products")
      end
    end	
  end
end