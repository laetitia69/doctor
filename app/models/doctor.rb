class Doctor < ApplicationRecord
	#possède plusieurs :
	has_many :appointments
	has_many :patients, :through => :appointments #au travers d'appointments

end
