class UserMailer < ApplicationMailer
	default from: 'test@example.com'

  def welcome(user)
    @user = user
    mail(:to => @user.email, :subject => "Welcome!")
  end
  
end
