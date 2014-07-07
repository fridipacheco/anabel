json.array!(@tipo_turnos) do |tipo_turno|
  json.extract! tipo_turno, :id, :ttu_descripcio
  json.url tipo_turno_url(tipo_turno, format: :json)
end
