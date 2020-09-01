class User < ApplicationRecord
    has_many :comments
    has_many :activities, through: :comments

    validates :name, presence: true
    validates :email, presence: true
    # validates :password, presence: true

    
    def self.find_or_create_from_omniauth(user_info)
        User.first_or_create(uid: user_info["uid"]) do |user|
          user.email = user_info["info"]["nickname"] + "@something.com"
          user.password = SecureRandom.hex
        end
      
    end
end
