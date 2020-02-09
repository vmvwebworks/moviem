class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :purchaseable, polymorphic: true

  scope :active, -> { where("created_at > ?", 3.days.ago) }

  def active?
    created_at > 3.days.ago
  end

end
