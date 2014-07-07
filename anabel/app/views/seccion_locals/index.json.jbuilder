json.array!(@seccion_locals) do |seccion_local|
  json.extract! seccion_local, :id
  json.url seccion_local_url(seccion_local, format: :json)
end
