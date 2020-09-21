class ActivityLogsController < ApplicationController
  before_action :get_user
    
    def index
      @activity_logs = ActivityLog.find_by(params[:user_id])
    end

    def show
    end

    def new
    
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