class User < ApplicationRecord
    has_secure_password
    validates :user_name , presence: true, uniqueness: true

    enum role: [:user, :moderator, :admin]
    after_initialize :set_default_role, :if => :new_record?
    def set_default_role
        self.role ||= :user
    end
end
