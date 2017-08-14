class CreateR112Ranges < ActiveRecord::Migration[5.0]
  def change
    create_table :r1_12_ranges do |t|
    	t.integer :rango
    	t.timestamps
    end
  end
end
