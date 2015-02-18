json.array!(@messages) do |message|
  json.extract! message, :id, :message, :user_id, :resolved
  json.url message_url(message, format: :json)
end
