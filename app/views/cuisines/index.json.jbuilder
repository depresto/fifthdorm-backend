json.array!(@cuisines) do |cuisine|
  json.cuidine_id cuisine.id
  json.extract! cuisine, :name, :price
end
