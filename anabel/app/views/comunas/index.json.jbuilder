json.array!(@comunas) do |comuna|
  json.extract! comuna, :id, :com_nombre
  json.url comuna_url(comuna, format: :json)
end
