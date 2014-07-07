json.array!(@detalle_compras) do |detalle_compra|
  json.extract! detalle_compra, :id, :dec_cantidad, :dec_uni, :dec_total, :dec_descuento
  json.url detalle_compra_url(detalle_compra, format: :json)
end
