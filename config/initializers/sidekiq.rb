Sidekiq.configure_server do |config|
  config.redis = { uri: 'redis://redis:6379', namespace: 'sidekiq' }
end

Sidekiq.configure_client do |config|
  config.redis = { uri: 'redis://redis:6379', namespace: 'sidekiq' }
end