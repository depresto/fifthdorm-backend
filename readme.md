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


系統需求 / System Requirements
---

開發環境：

* Unix-like OS
* RVM or Rbenv
* Ruby 2.3.0
* PostgreSQL 9.4.5
* Xcode Tools (MacOS)

部署環境：

* Ubuntu 14.04
* Docker 1.11.2
* Dokku 0.6.0 


安裝 / Installations
---
	
	git clone https://github.com/depresto/fifthdorm-backend.git
	
	# Install ruby 2.3.0
	rvm install 2.3.0	#rbenv install 2.3.0
	rvm use 2.3.0		#rbenv local 2.3.0
	
	# Dependency for PostgreSQL
	sudo apt-get install libpq-dev 		# Ubuntu
	brew update && brew install postgresql 	# Mac
	gem install pg
	
	# Install dependency
	bundle install
	
	# Build up database
	rake db:migrate
	
	# Run server in development mode
	# Check http://localhost:3000 after run this command
	rails s -e development