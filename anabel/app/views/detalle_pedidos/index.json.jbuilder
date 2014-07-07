json.array!(@detalle_pedidos) do |detalle_pedido|
  json.extract! detalle_pedido, :id, :dep_cant, :dep_precio
  json.url detalle_pedido_url(detalle_pedido, format: :json)
end
