json.array!(@genders) do |gender|
  json.extract! gender, :id, :name, :description
  json.url gender_url(gender, format: :json)
end
