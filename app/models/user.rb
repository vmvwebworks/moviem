class User < ApplicationRecord
  has_many :purchases
  has_many :movies, through: :purchases, source: :purchaseable, source_type: "Movie" do
    include Commons
  end
  has_many :seasons, through: :purchases, source: :purchaseable, source_type: "Season" do
    include Commons
  end
end
