require 'rails_helper'

describe UsersController, :type => :controller do
  
  describe "GET #show" do
    context "when user is not logged in" do
      it "should redirect to login" do
        get :settings
        should render_template(root_path)
      end
    end 
  end
	  
  describe "Get #settings" do
    login_user
    context "when user is logged in" do

      it "should render edit" do
        get :settings
        expect(response).to render_template(:edit)
      end
    end		
  end

end