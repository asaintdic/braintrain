class ActivitiesController < ApplicationController
   

    def index
      @brainwave = Brainwave.find(params[:brainwave_id])
      if params[:term]
        @activities = @brainwave.activities.search(params[:term])
      elsif
        @activities = @brainwave.activities
      else
        @activities = Activity.all
      end
    
    end
  
          
    def show
      @activity = Activity.find(params[:id])
    end
  
    def new
        @activity = Activity.new
    end

    def destroy
      @activity = Activity.find_by_id(params[:id]) 
      @activity.destroy
    
      redirect_to activities_path
    end

  
    
    private
    
    def activity_params
        params.require(:activity).permit(:name, :duration, :category)
    end
  
  
end
