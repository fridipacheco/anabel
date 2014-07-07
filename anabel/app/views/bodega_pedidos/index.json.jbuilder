json.array!(@bodega_pedidos) do |bodega_pedido|
  json.extract! bodega_pedido, :id
  json.url bodega_pedido_url(bodega_pedido, format: :json)
end
