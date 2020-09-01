class Comment < ApplicationRecord
  belongs_to :activity
  belongs_to :user


  scope :this_activity_comments, -> { where("activity_id = ?", params[:id])}
end
