class AddMesesToVacantes < ActiveRecord::Migration[5.0]
  def change
    add_column :vacantes, :mes_inicio, :integer
    add_column :vacantes, :mes_fin, :integer
  end
end
