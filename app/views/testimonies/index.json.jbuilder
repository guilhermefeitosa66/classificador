json.array!(@testimonies) do |testimony|
  json.extract! testimony, :id, :title, :testimony, :disorder_id, :age_group_id, :gender_id
  json.url testimony_url(testimony, format: :json)
end
