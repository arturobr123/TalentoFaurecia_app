class CreateUniversities < ActiveRecord::Migration[5.0]
  def change
    create_table :universities do |t|
    	t.universidad :status
    	t.timestamps
    end
  end
end
