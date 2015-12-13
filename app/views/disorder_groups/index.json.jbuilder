json.array!(@disorder_groups) do |disorder_group|
  json.extract! disorder_group, :id, :name, :description
  json.url disorder_group_url(disorder_group, format: :json)
end
