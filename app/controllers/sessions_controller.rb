class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def welcome
     @brainwaves = Brainwave.all
     @brainwave = Brainwave.find_by(params[:id])
    if session[:user_id]
      @user = User.find(session[:user_id])
   end
 end

  def create
    @user = User.find_or_create_by(uid: auth['uid']) do |u|
    u.name = auth['info']['name']
    u.email = auth['info']['email']
    u.image = auth['info']['image']
  end
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

# helpers do
#   def logged_in?
#    !!session[:user_id] 
#   end

#   def current_user
 
#       User.find(session[:user_id])
#   end
  
# end
# def index
#   @brainwaves = Brainwave.all
# end

# def show
#  @brainwave = Brainwave.find_by(params[:id])
# end
