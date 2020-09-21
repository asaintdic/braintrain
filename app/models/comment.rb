class Comment < ApplicationRecord
  belongs_to :activity
  belongs_to :user
  validates :body, presence: true
  # validates_format_of :body, :with => /^[a-z]+$/i

  scope :this_activity_comments, -> { where("activity_id = ?", params[:id])}
end
