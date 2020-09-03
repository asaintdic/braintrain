class Activity < ApplicationRecord
    
    has_many :comments, dependent: :destroy
    has_many :users, through: :comments


    scope :short_activities, -> { where("duration < 30")}

    scope :long_activities, ->{ where("duration > 30")}

    scope :search, -> (term) {where("name LIKE ?", "%#{term}%") }
end
 