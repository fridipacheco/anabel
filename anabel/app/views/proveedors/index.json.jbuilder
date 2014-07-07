json.array!(@proveedors) do |proveedor|
  json.extract! proveedor, :id, :prov_rut, :prov_nombre, :prov_apellidop, :prov_apellidom, :prov_telefono, :prov_direccion, :prov_numero, :prov_email
  json.url proveedor_url(proveedor, format: :json)
end
