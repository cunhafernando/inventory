class Equipment < ApplicationRecord
    belongs_to :supplier
    belongs_to :user
    validates :gati, presence: true, uniqueness: true
    validates :kind_of_equipment, presence: true 
end
