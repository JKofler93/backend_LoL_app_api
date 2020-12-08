class User < ApplicationRecord
    has_many :comments
    has_many :champions, through: :comments
end
