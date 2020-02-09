class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :purchaseable, polymorphic: true

  scope :alive, -> { where("created_at > ?", 3.days.ago) }

  def is_alive?
    created_at > 2.days.ago
  end

end
