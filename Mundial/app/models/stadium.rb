class Stadium < ActiveRecord::Base

	has_many :matches
	validates :name,presence: true ,uniqueness: true
	validates :city,presence: true ,uniqueness: true
	validates :construct_date,presence: true ,format: { with: /\d{2}\/\d{2}\/\d{4}/, message: "Fecha invalida" }
	validates :max_cap,presence: true,numericality: { only_integer: true }
	validates :photo, presence:true
	
	validate :city_verify

	def city_verify
	    if (!(city == "Belo Horizonte" || city == "Brasilia"|| city == "Cuiaba"|| city == "Curitiba" || city == "Fortaleza" || city == "Manaus" || city == "Natal"  || city == "Recife" || city == "Rio de Janeiro"|| city == "Salvador"|| city == "Sao Paulo" ))
	      errors.add(:city, "Nombre incorrecto")
	    end
  	end




end
