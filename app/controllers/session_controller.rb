class SessionController < ApplicationController
  
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user # user_url(user)
    else
      # Create an error message.
      flash.now[:danger] = "Invalid email/password combination"
      render 'new'
    end
  end
  
 
  
end
