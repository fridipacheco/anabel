json.array!(@estado_habilitados) do |estado_habilitado|
  json.extract! estado_habilitado, :id, :esh_descripcion
  json.url estado_habilitado_url(estado_habilitado, format: :json)
end
