class User < ApplicationRecord
    enum role: [:gaurdian, :child]

    has_many :chores
    has_many :rewards
    has_one :credit_score
    has_one :credit_line
    has_one :wallet

    belongs_to :family
end
