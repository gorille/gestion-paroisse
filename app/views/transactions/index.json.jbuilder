json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :montant, :date_effet, :numero_de_piece, :commentaire, :mort_id, :donnateur_id, :paroisse_id
  json.url transaction_url(transaction, format: :json)
end
