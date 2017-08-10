class RemovePlantasFromVacantes < ActiveRecord::Migration[5.0]
  def change
    remove_column :vacantes, :planta, :string

     add_column :vacantes, :planta, :integer
  end
end
