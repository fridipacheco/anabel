json.array!(@productos) do |producto|
  json.extract! producto, :id, :pro_nombre, :pro_descripcion
  json.url producto_url(producto, format: :json)
end
