json.extract! @admin_store, :id, :name, :phone, :address, :manager
json.thumb self.request.domain+@admin_store.image.square.url
json.image self.request.domain+@admin_store.image.square.url
