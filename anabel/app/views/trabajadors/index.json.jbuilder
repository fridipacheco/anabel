json.array!(@trabajadors) do |trabajador|
  json.extract! trabajador, :id, :tra_rut, :tra_nombre, :tra_apellidop, :tra_apellidom, :tra_nacimiento, :tra_telefono, :tra_direccion, :tra_numero, :tra_email, :tra_sexo
  json.url trabajador_url(trabajador, format: :json)
end
