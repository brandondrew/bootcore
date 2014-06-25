json.array!(@boot_scripts) do |boot_script|
  json.extract! boot_script, :id, :file_name, :body, :user_id, :accessibility
  json.url boot_script_url(boot_script, format: :json)
end
