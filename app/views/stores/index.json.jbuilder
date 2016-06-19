json.array!(@stores) do |store|
  json.store_id store.id
  json.extract! store, :name, :phone, :address
  unless store.image.url.nil?
	  json.thumb self.request.subdomain+'.'+self.request.domain+store.image.square.url
	  json.image self.request.subdomain+'.'+self.request.domain+store.image.url
	end
  json.cuisines do 
  	json.array!(store.cuisines) do |cuisine|
  		json.cuisine_id cuisine.id
  		unless cuisine.image.url.nil?
  			json.thumb self.request.subdomain'.'+self.request.domain+cuisine.image.square.url
  			json.image self.request.subdomain'.'+self.request.domain+cuisine.image.url
  		end
  		json.extract! cuisine, :name, :price
  	end
  end
end
