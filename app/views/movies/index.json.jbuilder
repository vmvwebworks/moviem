json.index @movies do |movie|
  json.id movie.id
  json.title movie.title
  json.plot movie.plot

  json.purchase_options movie.options do |option|
    json.id option.id
    json.price option.price
    json.quality option.quality.quality
  end
end
