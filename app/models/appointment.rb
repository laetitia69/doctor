class Appointment < ApplicationRecord
	#appartient à un seul
	belongs_to :doctor
	belongs_to :patient
end
