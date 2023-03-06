class Allocation < ApplicationRecord
    belongs_to :user
    enum :unit, {hegv: 0, upa: 1}, prefix: true, scopes: false
end
