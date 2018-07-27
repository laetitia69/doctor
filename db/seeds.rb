require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@doctors      = []
@patients     = []
@appointments = []
@cities       = []
@specilties   = []

def clean_database
  puts " Etape 0 : Suppression des anciennes données."    
  Doctor.delete_all
  Patient.delete_all
  Appointment.delete_all 
  City.delete_all 
  Specialty.delete_all
    
end 

def create_city(number)
  puts " Etape 1 : Création de #{number} cities"    

    number.times do
      @cities << City.create(city_name: Faker::Address.city)
    end
end

def create_specialty(number)
  puts " Etape 2  : Création de #{number} specialty"    

    number.times do
      @specilties << Specialty.create(name: Faker::Military.army_rank)
    end
end

def create_doctor(number)
  puts " Etape 3 : Création de #{number} docteurs."    

    number.times do
    doctor = Doctor.create(first_name: Faker::Company.name,last_name: Faker::Company.name, postal_code: Faker::Address.zip,city: @cities[Random.new.rand(0..@cities.size-1)])
        
      2.times do
        doctor.specialties << (@specilties[Random.new.rand(0..@specilties.size-1)])
      end 
        
    @doctors << doctor    
        
    end
end

def create_patient(number)
  puts " Etape 4 : Création de #{number} patients."    

    number.times do
      @patients << Patient.create(first_name: Faker::Company.name,last_name: Faker::Company.name,city: @cities[Random.new.rand(0..@cities.size-1)])

    end
end

def create_appointment(number)
  puts " Etape 5 : Création de #{number} rendez-vous."    

    number.times do
      @appointments << Appointment.create(doctor: @doctors[Random.new.rand(0..@doctors.size-1)], patient: @patients[Random.new.rand(0..@patients.size-1)], date: Faker::Time.between(DateTime.now - 1, DateTime.now),city: @cities[Random.new.rand(0..@cities.size-1)])
    end
end

puts "-------------------------- *** ---------------------------------"
puts "Bonjour, nous allons créer un jeu de test pour tester nos Models"
clean_database
create_city(10)
create_specialty(5)
create_doctor(10)
create_patient(10)
create_appointment(5)
puts "-------------------------- FIN ---------------------------------"