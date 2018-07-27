class Doctor < ApplicationRecord
	#possède plusieurs :
	has_many :appointments
	has_many :patients, through: :appointments #au travers d'appointments
	belongs_to :city
	has_and_belongs_to_many :specialties

end
