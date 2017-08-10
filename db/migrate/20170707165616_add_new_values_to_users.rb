class AddNewValuesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :sexo, :string
    add_column :users, :disponible_en, :date
    add_column :users, :estado_residencia, :string
    remove_column :users, :university, :text
    add_column :users, :university, :integer
    add_column :users, :duration_internship, :integer
    add_column :users, :level_english, :integer
  end
end
