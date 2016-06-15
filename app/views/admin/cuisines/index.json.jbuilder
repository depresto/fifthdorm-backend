json.array!(@admin_cuisines) do |admin_cuisine|
  json.extract! admin_cuisine, :id
end
