json.array!(@disorders) do |disorder|
  json.extract! disorder, :id, :name, :description, :disorder_group_id
  json.url disorder_url(disorder, format: :json)
end
