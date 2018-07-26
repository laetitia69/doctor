require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#affiche 10 fakes doctors
10.times do
	doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: Faker::Commerce.material, postal_code: Faker::Address.postcode)
end

#affiche 10 fakes patients
10.times do
	patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

#affiche 10 fakes appointments
10.times do
	appointment = Appointment.create(doctor_id: rand(1..10), patient_id: rand(1..10),date: Faker::Time.between(DateTime.now - 1, DateTime.now))
end