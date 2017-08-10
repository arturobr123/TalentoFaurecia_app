class RemoveInitialValuesFromVacantes < ActiveRecord::Migration[5.0]
  def change
    remove_column :vacantes, :function, :text
    remove_column :vacantes, :little_summary, :text
    remove_column :vacantes, :summary, :text

    add_column :vacantes, :area, :integer
    add_column :vacantes, :description, :text
    add_column :vacantes, :planta, :string
    add_column :vacantes, :periodo_de_practica, :text


  end
end
