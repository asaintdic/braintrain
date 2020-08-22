class User < ApplicationRecord

    has_many :brainwaves, through: :activities
end
