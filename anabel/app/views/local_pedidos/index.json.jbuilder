json.array!(@local_pedidos) do |local_pedido|
  json.extract! local_pedido, :id
  json.url local_pedido_url(local_pedido, format: :json)
end
