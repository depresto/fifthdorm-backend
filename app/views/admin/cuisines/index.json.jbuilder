json.array!(@admin_cuisines) do |admin_cuisine|
  json.extract! admin_cuisine, :id
  json.url admin_cuisine_url(admin_cuisine, format: :json)
end
