json.available_catalog @catalog.sort_by(&:created_at) do |catalogable|
  json.on_catalog_since catalogable.created_at.to_datetime.strftime("%c")
  json.title catalogable.title
  json.plot catalogable.plot
end
