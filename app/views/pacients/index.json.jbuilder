json.array!(@pacients) do |pacient|
  json.extract! pacient, :id, :name, :birthday, :gender_id, :medic_id
  json.url pacient_url(pacient, format: :json)
end
