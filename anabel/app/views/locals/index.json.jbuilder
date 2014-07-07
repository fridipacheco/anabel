json.array!(@locals) do |local|
  json.extract! local, :id, :loc_rut, :loc_rs, :loc_direccion, :loc_numero, :loc_telefono, :loc_mail
  json.url local_url(local, format: :json)
end
