class ActivityLog < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  
  # scope :by_user, -> {where(user_id: current_user.id)}

  scope :created_before, ->(time) { where("created_at < ?", time)}

  scope :by_user, -> {where(user_id: user.id)}
end

