require 'rails_helper'

FactoryGirl.define do
  factory :user do
    email { "#{SecureRandom.hex}@mailinator.com" }
    password { ControllerMacros.test_password }
    password_confirmation { ControllerMacros.test_password }
  end  
end 
