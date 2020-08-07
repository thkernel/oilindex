json.extract! contact_form, :id, :first_name, :last_name, :phone, :email, :subject, :message, :status, :created_at, :updated_at
json.url contact_form_url(contact_form, format: :json)
