json.array!(@statistics) do |statistic|
  json.extract! statistic, :id, :wins, :loses, :playerId
  json.url statistic_url(statistic, format: :json)
end
