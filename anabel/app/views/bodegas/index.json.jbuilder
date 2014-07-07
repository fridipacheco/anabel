json.array!(@bodegas) do |bodega|
  json.extract! bodega, :id, :bod_rut, :bod_rs, :bod_direccion, :bod_numero, :bod_telefono, :bod_mail
  json.url bodega_url(bodega, format: :json)
end
