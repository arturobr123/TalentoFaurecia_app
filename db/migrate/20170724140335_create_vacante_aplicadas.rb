class CreateVacanteAplicadas < ActiveRecord::Migration[5.0]
  def change
    create_table :vacante_aplicadas do |t|
      t.references :vacante,foreign_key: true, index:true
      t.references :user,foreign_key: true, index:true
      t.integer :status, default: 1

      t.timestamps
    end
  end
end
