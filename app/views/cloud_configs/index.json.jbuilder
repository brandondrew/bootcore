json.array!(@cloud_configs) do |cloud_config|
  json.extract! cloud_config, :id, :user_id, :accessibility
  json.url cloud_config_url(cloud_config, format: :json)
end
