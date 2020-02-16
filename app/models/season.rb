class Season < ApplicationRecord
  has_many :purchases, as: :purchaseable
  has_many :episodes
  # has_many :users, through: :purchases
end
