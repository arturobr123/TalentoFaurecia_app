class AddNewValluesToVacantes < ActiveRecord::Migration[5.0]
  def change
    add_column :vacantes, :Name_Hiring_Manager, :Text
  end
end
