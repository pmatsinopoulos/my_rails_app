require 'rails_helper'

describe UsersController, :type => :controller do
  describe "Users controller" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end

end