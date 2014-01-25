class PasswordResetsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by_email(parmas[:email])
    user.send_password_reset if user
    redirect_to root_url, :notice => "Please check your email for password reset instructions."
  end
end
