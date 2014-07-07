json.array!(@tipo_tarjets) do |tipo_tarjet|
  json.extract! tipo_tarjet, :id, :tta_descripcion
  json.url tipo_tarjet_url(tipo_tarjet, format: :json)
end
