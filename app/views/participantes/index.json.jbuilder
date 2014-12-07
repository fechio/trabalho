json.array!(@participantes) do |participante|
  json.extract! participante, :id, :login, :senha, :foto, :nome, :cidade, :estado, :email, :descricao
  json.url participante_url(participante, format: :json)
end
