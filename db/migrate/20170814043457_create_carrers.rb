class CreateCarrers < ActiveRecord::Migration[5.0]
  def change
    create_table :carrers do |t|
    	t.text :carrera
    	t.timestamps
    end
  end
end
