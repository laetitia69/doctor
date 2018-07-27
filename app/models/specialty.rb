class Specialty < ApplicationRecord
	#appartient ET possède plusieurs :
	has_and_belongs_to_many :doctors
end
