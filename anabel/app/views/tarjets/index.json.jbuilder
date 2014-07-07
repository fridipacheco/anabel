json.array!(@tarjets) do |tarjet|
  json.extract! tarjet, :id, :tar_serie, :tar_verificador, :tar_expira, :tar_estado, :tar_cobro
  json.url tarjet_url(tarjet, format: :json)
end
