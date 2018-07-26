class Appointment < ApplicationRecord
	#appartient à un seul
	belongs_to :doctor, optional:true
	belongs_to :patient, optional:true
end
