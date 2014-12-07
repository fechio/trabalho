class Participante < ActiveRecord::Base
  has_attached_file :foto, styles:
	{ medium: "300x300>", thumb: "100x100>" }
end
