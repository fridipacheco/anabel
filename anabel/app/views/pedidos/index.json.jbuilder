json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :ped_fecha, :ped_total, :ped_canttot
  json.url pedido_url(pedido, format: :json)
end
