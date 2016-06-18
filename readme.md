Fifthdorm Project / 五號宿舍(?
===

Biteè App 後臺管理界面
	
API 使用說明 / API Usage
---
### GET
* 店家清單

		// http://example.com/stores.json
	
	
		[{"store_id":1,"name":"德田商旅","phone":"123456","address":"就是德田商旅","cuisines":
		[{"cuisine_id":1,"name":"餐點A","price":50.0},
		{"cuisine_id":2,"name":"麥當勞","price":99.0}]},	
		{"store_id":2,"name":"總圖鐘塔","phone":"12313135","address":"神祕力量","cuisines":	
		[{"cuisine_id":3,"name":"吃的","price":999.0},
		{"cuisine_id":4,"name":"隨便","price":1000000.0}]}]

* 店家資訊

		// store_id 請自行替換
		// http://example.com/stores/store_id.json

		{"store_id":1,"name":"德田商旅","phone":"123456","address":"就是德田商旅","manager":"borris"}
		
* 店家餐點資訊

		// store_id 請自行替換
		// http://fifthdorm.s.co/stores/store_id/cuisines.json
		
		[{"cuidine_id":1,"name":"餐點A","price":50.0},
		{"cuidine_id":2,"name":"麥當勞","price":99.0},
		{"cuidine_id":3,"name":"吃的","price":999.0},
		{"cuidine_id":4,"name":"隨便","price":1000000.0}]
		
* 餐點資訊

		// store_id, cuisine_id 請自行替換
		// http://fifthdorm.s.co/stores/store_id/cuisines/cuisine_id.json
		
		{"cuisine_id":1,"name":"餐點A","price":50.0}