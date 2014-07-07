json.array!(@compras) do |compra|
  json.extract! compra, :id, :com_cant, :com_total, :com_cuota
  json.url compra_url(compra, format: :json)
end
