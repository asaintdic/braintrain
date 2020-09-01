class ActivitiesController < ApplicationController
    before_action :set_activity, except: [:index, :new, :create]

    def index
      # @user = User.find_by_id(params[:user_id])
      # if params[:term]
      #   @activities = @user.activities.search(params[:term])
      # else
        @activities = Activity.all
      # end
    end
  
    def show
      @activity = Activity.find(params[:id])
      # @comments = 
      # @comments = Comment.this_activity_comments
      @comments = Comment.where("activity_id = ?", params[:id])
      # scope :this_activity_comments, ->(params[:id]) {where("activity_id = ?", params[:id])}
    end
  
    def new
        @activity = Activity.new
    end
  
    def create
      
      #  @activity = current_user.activities.build(activity_params)
  
      # if @activity.save
        # redirect_to user_activities_path(current_user)
      # else
      #   render :new
      # end
    end
  
    def edit
    end
  
    def update
      # if @activity.update(activity_params)
      #   redirect_to user_activity_path(current_user, @activity)
      # else
      #   render :edit
      # end
    end
  
    def destroy
      @activity.destroy
      # redirect_to user_activities_path(current_user)
    end
    
    private
      def set_activity
        @activity = Activity.find_by_id(params[:id])
      end
  
      def activity_params
        params.require(:activity).permit(:name, :duration, :category)
      end
  
  
end
