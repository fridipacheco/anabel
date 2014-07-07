json.array!(@producto_bodegas) do |producto_bodega|
  json.extract! producto_bodega, :id, :prb_cant, :prb_fecha, :prb_preciouni
  json.url producto_bodega_url(producto_bodega, format: :json)
end
