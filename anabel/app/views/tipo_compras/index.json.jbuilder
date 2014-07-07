json.array!(@tipo_compras) do |tipo_compra|
  json.extract! tipo_compra, :id, :tco_descripcion
  json.url tipo_compra_url(tipo_compra, format: :json)
end
