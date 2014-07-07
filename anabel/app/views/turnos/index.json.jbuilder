json.array!(@turnos) do |turno|
  json.extract! turno, :id, :tur_horario
  json.url turno_url(turno, format: :json)
end
