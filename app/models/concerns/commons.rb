module Commons
  extend ActiveSupport::Concern
  def alive
    where("purchases.created_at > ?", 3.days.ago)
  end

  def ascending
    order('created_at ASC')
  end

end
