worker_processes 2
preload_app true

listen '/tmp/fifthdorm.unicorn.sock' # sock 檔名可依照 app 需求設定

stderr_path '/var/log/virtualmin/fifthdorm.s.co.error.log'
stdout_path '/var/log/virtualmin/fifthdorm.s.co.log'

pid "tmp/pids/unicorn.pid"

rails_env = ENV['RAILS_ENV'] || 'production'

# before/after fork 可自行擴充

before_fork do |server, worker|
end

after_fork do |server, worker|
end