class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :purchaseable, polymorphic: true

  scope :available, -> { where("created_at > ?", 3.days.ago) }

  def available?
    created_at > 3.days.ago
  end

end
