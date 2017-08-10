class AddNewValuesToVacantes < ActiveRecord::Migration[5.0]
  def change
    add_column :vacantes, :little_description, :text
  end
end
