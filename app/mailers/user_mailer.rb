class UserMailer < ActionMailer::Base
  default from: "webstartyours@gmail.com"

  def contact_form(email, name, message)
    @message = message
    mail(:from => email, 
      :to => 'webstartyours@gmail.com', 
            :subject => "A new contact form message from #{name}")
  end
end