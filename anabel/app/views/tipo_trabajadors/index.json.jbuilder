json.array!(@tipo_trabajadors) do |tipo_trabajador|
  json.extract! tipo_trabajador, :id, :tpt_descripcion
  json.url tipo_trabajador_url(tipo_trabajador, format: :json)
end
