class ActivityLogsController < ApplicationController
  
    
    def index
      @activities = current_user.activities
      # @activities = Activity.by_user
    end

    def show
     
      @activity = Activity.find(params[:activity_id])
      @activity_log = ActivityLog.find(params[:id])

    end

    def new
      @activity = Activity.find_by(params[:activity_id])
      @activity_log = ActivityLog.new
    end

    def create
      @activity_log = ActivityLog.new(params.require(:activity_log).permit(:duration, :user_id, :activity_id))
      @activity_log.user_id = current_user.id
     if  @activity_log.save
      redirect_to activity_logs_path
     else
      render :new
     end
    end

    def edit
      @activity = Activity.find_by(params[:activity_id])
      @activity_log = ActivityLog.find(params[:id])
    end

    def update
      @activity_log = ActivityLog.find(params[:id])
        @activity_log.update(activity_log_params)
        redirect_to user_activity_logs_path(current_user)
    end

    def destroy
      @activity_log = ActivityLog.find_by(params[:id]) 
      @activity_log.destroy
    
      redirect_to activity_logs_path
    end

end


private
def get_user
    @user = User.find_by(params[:user_id])
end

def activity_log_params
  params.require(:activity_log).permit(:duration, :user_id, :activity_id)
end
