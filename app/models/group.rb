class Group < ApplicationRecord
  has_many :users, through: :members
  has_many :massages
end
