json.array!(@estado_despachos) do |estado_despacho|
  json.extract! estado_despacho, :id, :ede_descripcion
  json.url estado_despacho_url(estado_despacho, format: :json)
end
