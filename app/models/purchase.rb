class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :purchaseable, polymorphic: true
  belongs_to :option
  scope :movies, -> { where(purchaseable_type: "Movie") }
  scope :seasons, -> { where(purchaseable_type: "Season") }
  scope :alive, -> { where('purchases.created_at > ?', 3.days.ago)}
end
