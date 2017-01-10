class SessionController < ApplicationController
  
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      render 'users/show'
    else
      # Create an error message.
      render 'new'
    end
  end
  
end
