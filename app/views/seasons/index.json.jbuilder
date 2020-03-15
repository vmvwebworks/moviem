json.index @seasons do |season|
  json.title season.title
  json.plot season.plot
  json.on_catalog_since season.created_at.strftime("%c")

  json.season_episodes season.episodes.order('number DESC') do |episode|
    json.number episode.number
    json.title episode.title
    json.plot episode.plot
  end
  json.purchase_options season.options do |option|
    json.id option.id
    json.price option.price
    json.quality option.quality.quality
  end

end
