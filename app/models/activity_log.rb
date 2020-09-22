class ActivityLog < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  
  scope :by_user, -> {where(user_id: current_user.id)}
end

