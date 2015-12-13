json.array!(@diagnosed_disorders) do |diagnosed_disorder|
  json.extract! diagnosed_disorder, :id, :disorder_id, :diagnosis_id
  json.url diagnosed_disorder_url(diagnosed_disorder, format: :json)
end
