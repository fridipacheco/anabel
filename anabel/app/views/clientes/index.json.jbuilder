json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :cli_rut, :cli_nombre, :cli_apellidop, :cli_apellidom, :cli_telefono, :cli_direccion, :cli_numero, :cli_email
  json.url cliente_url(cliente, format: :json)
end
