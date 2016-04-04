json.array!(@friends) do |friend|
  json.extract! friend, :id, :playerId1, :playerId2
  json.url friend_url(friend, format: :json)
end
