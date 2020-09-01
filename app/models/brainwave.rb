class Brainwave < ApplicationRecord
    

    validates_uniqueness_of :name
end
