json.extract! contact, :id, :lastName, :firstName, :email, :created_at, :updated_at
json.url contact_url(contact, format: :json)
