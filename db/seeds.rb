require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
	#affiche 10 fakes doctors
	doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, postal_code: Faker::Address.postcode)

	#affiche 10 fakes patients
	patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)

	#affiche 10 fakes appointments
	appointment = Appointment.create(doctor_id: rand(1..10), patient_id: rand(1..10),date: Faker::Time.between(DateTime.now - 1, DateTime.now))

	#affiche 10 fakes cities
	city = City.create(name: Faker::Address.city)

	#affiche 10 fakes specialties
	specialty = Specialty.create(name: Faker::Cat.name)	
end