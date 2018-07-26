class CreateCities < ActiveRecord::Migration[5.2]
  def change
  	#création de la table cities
    create_table :cities do |t|
      t.string :name

      t.timestamps
    end
  end
end
