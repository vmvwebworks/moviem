class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :purchaseable, polymorphic: true
  scope :alive, -> { where("created_at > ?", 3.days.ago) }
  scope :movies, -> { where( purchaseable_type: 'Movie' )}
  scope :seasons, -> { where( purchaseable_type: 'Season' )}

  def is_alive?
    created_at > 3.days.ago
  end

end