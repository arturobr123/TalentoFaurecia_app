class CreateJobAreas < ActiveRecord::Migration[5.0]
  def change
    create_table :job_areas do |t|
    	t.text :job_area
    	t.timestamps
    end
  end
end
