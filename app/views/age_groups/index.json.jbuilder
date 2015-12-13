json.array!(@age_groups) do |age_group|
  json.extract! age_group, :id, :name, :description, :min, :max
  json.url age_group_url(age_group, format: :json)
end
