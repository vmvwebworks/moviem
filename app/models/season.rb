class Season < ApplicationRecord
  has_many :purchases, as: :purchaseable
  has_many :options, as: :optionable
  has_many :episodes
end
