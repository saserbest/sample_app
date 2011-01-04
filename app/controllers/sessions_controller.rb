class SessionsController < ApplicationController
  def new
    @title = "Sign in"
  end

  def create
      user = User.authenticate(params[:session][:email],
                               params[:session][:password])
      if user.nil?
         flash.now[:error] = "Invalid email/Password combination."
         @title = "Sign in"
         render 'new'
      else
        # basarili sign in
      end
        
  end
  
  def destroy
    
  end
end
