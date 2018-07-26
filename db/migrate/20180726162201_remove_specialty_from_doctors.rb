class RemoveSpecialtyFromDoctors < ActiveRecord::Migration[5.2]
  def change
  	#suppression de la colonne specialty avec (rails generate migration RemoveSpecialtyFromDoctors specialty:string)
    remove_column :doctors, :specialty, :string
  end
end
