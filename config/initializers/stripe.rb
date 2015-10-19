if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_Ck9BlV1Sw1GIxuYeTwvGUu1T',
    :secret_key => 'sk_test_PDGRvjPscITf3PfxkWGBnqYV'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]