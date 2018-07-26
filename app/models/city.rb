class City < ApplicationRecord
	#possède plusieurs :
	has_many :doctors
	has_many :patients
	has_many :appointments
end
