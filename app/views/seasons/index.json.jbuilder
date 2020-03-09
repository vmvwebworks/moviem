json.index @seasons do |season|
  json.title season.title
  json.plot season.plot

  json.purchase_options season.options do |option|
    json.id option.id
    json.price option.price
    json.quality option.quality.quality
  end
end
