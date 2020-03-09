class Option < ApplicationRecord
  has_many :purchases
  belongs_to :optionable, polymorphic: true
  belongs_to :quality
end
