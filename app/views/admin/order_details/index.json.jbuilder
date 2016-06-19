json.array!(@admin_order_details) do |admin_order_detail|
  json.extract! admin_order_detail, :id
  json.url admin_order_detail_url(admin_order_detail, format: :json)
end
