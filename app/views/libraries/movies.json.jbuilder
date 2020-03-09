json.movies @movies do |purchase|
  json.title purchase.purchaseable.title
  json.plot purchase.purchaseable.plot
  json.purchased_on purchase.created_at
  json.quality purchase.option.quality
end
