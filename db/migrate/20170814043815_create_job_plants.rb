class CreateJobPlants < ActiveRecord::Migration[5.0]
  def change
    create_table :plants do |t|
    	t.text :planta
    	t.timestamps
    end
  end
end
