json.array!(@modelos) do |modelo|
  json.extract! modelo, :id, :mod_descripcion
  json.url modelo_url(modelo, format: :json)
end
