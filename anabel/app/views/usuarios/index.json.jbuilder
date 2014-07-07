json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :usu_nombre, :usu_password
  json.url usuario_url(usuario, format: :json)
end
