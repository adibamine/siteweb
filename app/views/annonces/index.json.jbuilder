json.array!(@annonces) do |annonce|
  json.extract! annonce, :id, :marque, :modele, :couleur, :model_year, :price, :description, :carburant, :boite_vitesse
  json.url annonce_url(annonce, format: :json)
end
