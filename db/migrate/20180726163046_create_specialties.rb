class CreateSpecialties < ActiveRecord::Migration[5.2]
  def change
  	#création de la table specialties
    create_table :specialties do |t|
      t.string :name

      t.timestamps
    end
  end
end
