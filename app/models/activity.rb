class Activity < ApplicationRecord
    belongs_to :brainwave
    has_many :comments, dependent: :destroy
    has_many :activity_logs
    has_many :users, through: :activity_logs
    
    validates_uniqueness_of :name

    

    scope :short_activities, -> { where("duration < 30")}

    scope :long_activities, ->{ where("duration > 30")}

    scope :search, -> (term) {where("name LIKE ?", "%#{term}%") }
end
 