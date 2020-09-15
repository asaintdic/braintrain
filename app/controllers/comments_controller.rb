class CommentsController < ApplicationController
  before_action :get_activity
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  
  def index
     @comments = @user.comments
  end
    
 def create
    @comment = @activity.comments.build(comment_params)
    @comment.user_id = current_user.id
     if @comment.save
      redirect_to activity_path(@activity)
     else
      redirect_to activity_path(@activity), notice: "Comment did not save because you are not logged in. Please log in to make a comment"
     end
   end

   def edit
      @comment = Comment.find(params[:id])
    end
  
    def update
      @comment = Comment.find(params[:id])
      if @comment.update(comment_params)
        redirect_to activity_comments_path(@comment.activity)
      else
        render :edit
      end
    end
  


   def destroy
      @comment = Comment.find_by(params[:id])
      @comment.user_id = current_user.id
   end
     
  private

  #  def get_user
  #   @user = User.find(params[:user_id])
  #  end

   def get_activity
      @activity = Activity.find_by_id(params[:activity_id])
   end

   def set_comment
      @comment = @activity.comments.find(params[:id])
    end
    
   def comment_params
        params.require(:comment).permit(:body)
    end
end

