json.array!(@paroisses) do |paroiss|
  json.extract! paroiss, :id, :nom
  json.url paroiss_url(paroiss, format: :json)
end
