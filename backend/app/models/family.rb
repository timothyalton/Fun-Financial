class Family < ApplicationRecord
    has_many :users

    # validates :family_pin, uniqueness: true
end
