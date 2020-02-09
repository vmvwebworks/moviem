class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :purchaseable, polymorphic: true

  scope :alive, -> { where("created_at > ?", 3.days.ago) }

  def alive?
    created_at > 3.days.ago
  end

end
