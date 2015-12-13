json.array!(@diagnoses) do |diagnosis|
  json.extract! diagnosis, :id, :obs, :date, :pacient_id
  json.url diagnosis_url(diagnosis, format: :json)
end
