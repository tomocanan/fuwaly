json.extract! status, :id, :taking_id, :created_at, :updated_at
json.url meeting_url(status, format: :json)
