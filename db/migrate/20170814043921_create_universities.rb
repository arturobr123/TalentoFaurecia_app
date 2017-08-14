class CreateUniversities < ActiveRecord::Migration[5.0]
  def change
    create_table :universities do |t|
    	t.text :universidad
    	t.timestamps
    end
  end
end
