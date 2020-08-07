json.extract! statement_type, :id, :name, :description, :status, :user_id, :created_at, :updated_at
json.url statement_type_url(statement_type, format: :json)
