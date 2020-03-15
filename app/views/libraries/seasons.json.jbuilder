json.seasons @seasons do |purchase|
  json.title purchase.purchaseable.title
  json.plot purchase.purchaseable.plot
  json.purchased_on purchase.created_at.strftime("%c")
  json.remaining_time purchase.remaining_time
  json.quality purchase.option.quality
  json.season_episodes purchase.purchaseable.episodes.order('number DESC') do |episode|
    json.number episode.number
    json.title episode.title
    json.plot episode.plot
  end
end
