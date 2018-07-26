class Specialty < ApplicationRecord
	#possède plusieurs :
	has_many :doctors
end
