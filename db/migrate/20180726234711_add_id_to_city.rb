class AddIdToCity < ActiveRecord::Migration[5.2]
  def change
  	#rajoute les colonnes dans les tables
  	add_reference :appointments, :city, foreign_key: true
  	add_reference :patients, :city, foreign_key: true
  	add_reference :doctors, :city, foreign_key: true
  end
end
