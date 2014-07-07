json.array!(@producto_seccions) do |producto_seccion|
  json.extract! producto_seccion, :id, :prs_cant, :prs_fecha, :prs_preciouni
  json.url producto_seccion_url(producto_seccion, format: :json)
end
