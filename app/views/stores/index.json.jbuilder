json.array!(@stores) do |store|
  json.store_id store.id
  json.extract! store, :name, :phone, :address
  json.cuisines do 
  	json.array!(store.cuisines) do |cuisine|
  		json.cuisine_id cuisine.id
  		json.extract! cuisine, :name, :price
  	end
  end
end
