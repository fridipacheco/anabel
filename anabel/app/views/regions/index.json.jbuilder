json.array!(@regions) do |region|
  json.extract! region, :id, :reg_nombre
  json.url region_url(region, format: :json)
end
