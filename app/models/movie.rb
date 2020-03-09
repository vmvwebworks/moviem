class Movie < ApplicationRecord
  has_many :purchases, as: :purchaseable
  has_many :options, as: :optionable
end
