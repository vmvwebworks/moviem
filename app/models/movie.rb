class Movie < ApplicationRecord
  has_many :purchases, as: :purchaseable
end
