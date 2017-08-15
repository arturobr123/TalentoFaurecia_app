class CreateMonths < ActiveRecord::Migration[5.0]
  def change
    create_table :months do |t|
    	t.text :mes
    	t.timestamps
    end
  end
end
