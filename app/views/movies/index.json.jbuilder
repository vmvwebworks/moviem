json.index @movies do |movie|
  json.id movie.id
  json.title movie.title
  json.plot movie.plot
  json.on_catalog_since movie.created_at.strftime("%c")

  json.purchase_options movie.options do |option|
    json.id option.id
    json.price option.price
    json.quality option.quality.quality
  end
end
