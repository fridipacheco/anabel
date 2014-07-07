json.array!(@marcas) do |marca|
  json.extract! marca, :id, :mar_descripcion
  json.url marca_url(marca, format: :json)
end
