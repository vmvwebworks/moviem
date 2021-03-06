module Commons
  extend ActiveSupport::Concern
  def alive
    where("purchases.created_at > ?", 3.days.ago)
  end

  def descending
    order('created_at DESC')
  end

end
