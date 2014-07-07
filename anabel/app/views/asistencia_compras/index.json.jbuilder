json.array!(@asistencia_compras) do |asistencia_compra|
  json.extract! asistencia_compra, :id, :asc_fecha, :asc_comision
  json.url asistencia_compra_url(asistencia_compra, format: :json)
end
