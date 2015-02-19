json.array!(@morts) do |mort|
  json.extract! mort, :id, :nom, :prenom, :date_de_deces
  json.url mort_url(mort, format: :json)
end
