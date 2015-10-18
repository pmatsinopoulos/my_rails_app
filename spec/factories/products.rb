FactoryGirl.define do
  factory :product do
    name { SecureRandom.hex }
  end
end