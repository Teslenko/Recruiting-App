json.extract! vacancy, :id, :summary, :description, :company, :created_at, :updated_at
json.url vacancy_url(vacancy, format: :json)
