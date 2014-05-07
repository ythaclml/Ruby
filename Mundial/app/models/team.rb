class Team < ActiveRecord::Base

	has_one :participations
	has_one :groups, :through => :participations
	has_many :matches
	
	validates :name, presence: true ,uniqueness: true,format: { with: /\A[a-zA-Z]+\z/, message: "Deben ser solo letras" }
	validates :coach, presence: true
	validates :flag, presence:true
	validates :uniform , presence:true
	validates :history, presence:true , length: { in: 15..200 }
end
