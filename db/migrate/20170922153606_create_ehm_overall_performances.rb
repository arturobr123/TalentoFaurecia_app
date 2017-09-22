class CreateEhmOverallPerformances < ActiveRecord::Migration[5.0]
  def change
    create_table :ehm_overall_performances do |t|
      t.text :score

      t.timestamps
    end
  end
end
