json.array!(@medics) do |medic|
  json.extract! medic, :id, :name, :email, :password, :expertise_id
  json.url medic_url(medic, format: :json)
end
