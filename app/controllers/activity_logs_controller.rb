class ActivityLogsController < ApplicationController
  before_action :get_user
    
    def index
      @user = User.find_by(params[:id])
      # @activity_logs = @user.activity_logs
    end

    def show
    end

    def new
      @user = User.find_by(params[:id])
      @activity_logs = @user.activity_logs
    end

    def create
    end

    def update
    end

    def destroy
    end

end


private
def get_user
    @user = User.find_by(params[:user_id])
end

def activiy_log_params
  params.require(:activity_log).permit(:duration)
end
