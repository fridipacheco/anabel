json.array!(@seccions) do |seccion|
  json.extract! seccion, :id, :sec_seccion, :sec_descripcion
  json.url seccion_url(seccion, format: :json)
end
