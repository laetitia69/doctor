class Appointment < ApplicationRecord
	#appartient à un seul
	belongs_to :doctor, index:true
	belongs_to :patient, index:true
end
