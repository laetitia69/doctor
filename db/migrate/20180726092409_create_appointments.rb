class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
  	#création de la table appointments
    create_table :appointments do |t|
      t.datetime :date
      #appartient à un seul:
      t.belongs_to :doctor
      t.belongs_to :patient
      t.timestamps
    end
  end
end
