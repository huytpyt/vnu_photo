json.extract! photo, :id, :image, :title, :prize, :created_at, :updated_at
json.url photo_url(photo, format: :json)