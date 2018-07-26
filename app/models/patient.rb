class Patient < ApplicationRecord
	#possède plusieurs :
	has_many :appointments
	has_many :doctors, :through => :appointments
end
