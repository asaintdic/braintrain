class Activity < ApplicationRecord
    
    has_many :comments, dependent: :destroy
    has_many :users, through: :comments


    # scope :this_activity_comments, -> { where("activity_id = ?", params[:id])}
end
 