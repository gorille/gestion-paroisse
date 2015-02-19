json.array!(@donnateurs) do |donnateur|
  json.extract! donnateur, :id, :nom, :prenom, :adresse_1, :adresse_2, :code_postal, :ville, :telephone
  json.url donnateur_url(donnateur, format: :json)
end
