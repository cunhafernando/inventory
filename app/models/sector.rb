class Sector < ApplicationRecord
    validates :local , presence: true, uniqueness: true
    belongs_to :user
end
