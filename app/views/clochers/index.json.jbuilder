json.array!(@clochers) do |clocher|
  json.extract! clocher, :id
  json.url clocher_url(clocher, format: :json)
end
