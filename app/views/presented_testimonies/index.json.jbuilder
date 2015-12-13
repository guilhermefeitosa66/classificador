json.array!(@presented_testimonies) do |presented_testimony|
  json.extract! presented_testimony, :id, :pacient_id, :testimony_id
  json.url presented_testimony_url(presented_testimony, format: :json)
end
