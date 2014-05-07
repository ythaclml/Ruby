class Match < ActiveRecord::Base

  	belongs_to :local, :class_name => Team
	belongs_to :visit, :class_name => Team
  	belongs_to :winner, :class_name => Team
  	belongs_to :loser, :class_name => Team
	belongs_to :group, :class_name => Group
	belongs_to :stadium, :class_name => Stadium



	validates :match_date,presence: true
	validates :stage,presence: true
	validates :status,presence: true
	validates :local,presence: true
	validates :visit,presence: true
	validates :score,presence: true, format: { with: /\d+-\d+/, message: "Debe ser nun-num" }
	validates :stadium_id,presence: true
	validate :stage_verify,:status_verify

	def stage_verify
	    if (!(stage == "Grupos" || stage == "Octavos de final"|| stage == "Cuartos de final"||stage == "Semifinales"||stage == "Final" ))
	      errors.add(:stage, "Fase incorrecta")
	    end
  	end

  	def status_verify
	    if (!(status == "Por jugar" || status == "En juego"|| status == "Finalizado"))
	      errors.add(:status, "Estado incorrecto")
	    end
  	end
end
