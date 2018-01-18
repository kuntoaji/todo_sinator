threads 4, 4
workers 2
preload_app!

before_fork do
  TodoSinator::DB.disconnect if defined?(TodoSinator::DB)
end