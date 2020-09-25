class Activity < ApplicationRecord
    belongs_to :brainwave
    
    has_many :activity_logs
    has_many :users, through: :activity_logs
    
    validates_uniqueness_of :name

    

    # scope :short_activities, -> { where("duration < 30")}

    # scope :long_activities, ->{ where("duration > 30")}

    scope :search, -> (term) {where("name LIKE ?", "%#{term}%") }

    scope :by_user, -> {joins(:activity_logs).where('user_id = user.id')}
end
 