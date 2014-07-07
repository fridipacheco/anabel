json.array!(@estados) do |estado|
  json.extract! estado, :id, :est_descripcion
  json.url estado_url(estado, format: :json)
end
