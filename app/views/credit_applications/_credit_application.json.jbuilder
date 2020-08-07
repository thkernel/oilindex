json.extract! credit_application, :id, :entrepreneur, :entrepreneurship_time, :activity_area, :desired_amount, :notes, :status, :user_id, :created_at, :updated_at
json.url credit_application_url(credit_application, format: :json)
