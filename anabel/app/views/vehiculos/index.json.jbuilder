json.array!(@vehiculos) do |vehiculo|
  json.extract! vehiculo, :id, :veh_patente, :veh_capacidad
  json.url vehiculo_url(vehiculo, format: :json)
end
