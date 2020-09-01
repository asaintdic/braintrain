class CommentsController < ApplicationController

    def create
        @activity = Activity.find(params[:activity_id])
        @comment = @activity.comments.build(comment_params)
       @comment.user_id = current_user.id
       if @comment.save
        redirect_to activity_path(@activity)
       else
        redirect_to activity_path(@activity), notice: "Comment did not save because you are not logged in. Please log in to make a comment"
       end
    end

    def destroy
    end
     
      private
        def comment_params
          params.require(:comment).permit(:body)
        end
end
