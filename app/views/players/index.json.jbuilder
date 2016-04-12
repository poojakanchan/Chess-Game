json.array!(@players) do |player|
  json.extract! player, :id, :username, :password, :profileImage
  json.url player_url(player, format: :json)
end
