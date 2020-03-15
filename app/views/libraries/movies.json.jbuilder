json.movies @movies do |purchase|
  json.title purchase.purchaseable.title
  json.plot purchase.purchaseable.plot
  json.purchased_on purchase.created_at.to_datetime.strftime("%c")
  json.quality purchase.option.quality
end
