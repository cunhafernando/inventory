class Supplier < ApplicationRecord
    has_many :equipment
    belongs_to :user
end
