json.array!(@trabajador_seccions) do |trabajador_seccion|
  json.extract! trabajador_seccion, :id, :trs_fechaini, :trs_fechafin
  json.url trabajador_seccion_url(trabajador_seccion, format: :json)
end
