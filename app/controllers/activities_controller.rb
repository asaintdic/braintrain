class ActivitiesController < ApplicationController
    before_action :set_activity, except: [:index, :new, :create]

    def index
      if params[:term]
        @activities = Activity.search(params[:term])
      else
        @activities = Activity.all
      end
    end
  
    def show
      @comment = Comment.new
      @activity = Activity.find(params[:id])
      # @short_activities = Activity.short_activities
      # @long_activities = Activity.long_activities
      # @comments = Comment.this_activity_comments
      @comments = Comment.where("activity_id = ?", params[:id])
      # scope :this_activity_comments, ->(params[:id]) {where("activity_id = ?", params[:id])}
    end
  
    def new
        @activity = Activity.new
    end
  
    
    private
      
    def set_activity
        @activity = Activity.find_by_id(params[:id])
    end
  
    def activity_params
        params.require(:activity).permit(:name, :duration, :category)
    end
  
  
end
