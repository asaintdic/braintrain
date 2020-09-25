class UsersController < ApplicationController

    def index
        @user = current_user
        @activities = Activity.by_user
    end

    def show
        @user = User.find_by(params[:id])
    end

    def new
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)
     if @user.save
        session[:user_id] = @user.id
        redirect_to root_path
     else
        render :new
      end
    end
    
    def update
    end

    private
    
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    
end

