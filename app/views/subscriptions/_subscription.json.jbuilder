json.extract! subscription, :id, :user_id, :cutoff_id, :state, :deliver_info, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
