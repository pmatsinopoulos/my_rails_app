require 'rails_helper'

describe User do

  context "first and last name present" do

    before { @user = Person.new(first_name: "John", last_name: "Smith") }

    it "should return first and last"
    expect(@user.full_name).to eq "John Smith"
    end
  end

end