FactoryGirl.define do
  factory :comment do
    body { SecureRandom.hex }
    association :user
    association :product
    rating { (rand(5) + 1).to_i }
  end  
end  