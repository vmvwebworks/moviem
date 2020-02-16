class Movie < ApplicationRecord
  has_many :purchases, as: :purchaseable
  # has_many :users, through: :purchases
end
