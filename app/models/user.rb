class User < ApplicationRecord
    has_secure_password
    has_many :comments
    has_many :activities, through: :comments
    validates :name, presence: true
    validates :email, presence: true
    validates :password, presence: true
 
 
    def self.find_or_create_from_omniauth(auth)
    @user = User.find_by(auth["uid"]) || User.find_or_create_by_id(auth)
    @user.id 
    @user.name = auth['info']['name']
    @user.email = auth['info']['email']
    @user.image = auth['info']['image']
    @user.save
    @user
  end
  
    
  
  
  def self.find_or_create_by_id(auth)
    User.find_or_create_by(uid: auth["uid"]) do |user|
      user.email = auth["info"]["nickname"] + "@something.com"
      user.password = SecureRandom.hex
    end
  end

 
    
    
    
    
    
    
    
    # def self.find_or_create_from_omniauth(user_info)
    #     User.find_or_create_by(uid: user_info["uid"]) do |user|
    #       user.email = user_info["info"]["nickname"] + "@something.com"
    #       user.password = SecureRandom.hex
    #     end
      
    # end

    # def facebook
    #   @user = User.find_or_create_by(uid: auth['uid']) do |u|
    #   u.name = auth['info']['name']
    #   u.email = auth['info']['email']
    #   u.image = auth['info']['image']
    # end
    #   session[:user_id] = @user.id
    #   redirect_to root_path
    # end
    

end
