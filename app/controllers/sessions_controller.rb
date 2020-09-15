class SessionsController < ApplicationController

  def create
    @user = User.find_by(email: params[:email]) 

    if @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      @error = "User could not be logged in. Please submit your email and password again"
      render :new
    end
  end
    
  def facebook 
    @user = User.find_or_create_from_omniauth(auth)
    session[:user_id] = @user.id
    redirect_to root_path
  end
  
  def destroy
    session.clear
    redirect_to root_path
  end
     
  private
    
  def auth
    request.env['omniauth.auth']
  end

end

