class AlbumController < ApplicationController
  def index
	@participantes = Participante.order(:nome)
  end
end
