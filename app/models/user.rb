class User < ApplicationRecord
    has_secure_password
    validates :user_name , presence: true, uniqueness: true
    has_many :equipment
    has_many :allocations
    has_many :suppliers
    has_many :suppliers
    enum role: [:user, :moderator, :admin]
    after_initialize :set_default_role, :if => :new_record?
    def set_default_role
        self.role ||= :user
    end
end
