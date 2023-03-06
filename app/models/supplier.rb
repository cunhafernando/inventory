class Supplier < ApplicationRecord
    validates :name , presence: true, uniqueness: true
    has_many :equipment
    belongs_to :user
end
