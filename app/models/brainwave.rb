class Brainwave < ApplicationRecord
    has_many :activities
    validates_uniqueness_of :name
end
