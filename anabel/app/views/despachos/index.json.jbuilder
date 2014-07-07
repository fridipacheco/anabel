json.array!(@despachos) do |despacho|
  json.extract! despacho, :id, :desp_fecha
  json.url despacho_url(despacho, format: :json)
end
