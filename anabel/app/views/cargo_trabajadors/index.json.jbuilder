json.array!(@cargo_trabajadors) do |cargo_trabajador|
  json.extract! cargo_trabajador, :id, :cat_alta, :cat_baja, :cat_permiso, :cat_base, :cat_porcentaje
  json.url cargo_trabajador_url(cargo_trabajador, format: :json)
end
