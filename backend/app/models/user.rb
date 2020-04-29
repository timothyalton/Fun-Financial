class User < ApplicationRecord
    enum role: [:gaurdian, :child]

    has_secure_password

    validates :username, uniqueness: { case_sensitive: false }, presence: true
    validates :password, length: { in: 6..20 }
    validates :password_confirmation, presence: true


    has_many :chores
    has_many :rewards
    has_one :credit_score
    has_one :credit_line
    has_one :wallet

    belongs_to :family
end
