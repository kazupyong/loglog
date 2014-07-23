json.array!(@administrators_log) do |administrators_log|
  json.extract! administrators_log, :id
  json.url administrators_log_url(administrators_log, format: :json)
end
