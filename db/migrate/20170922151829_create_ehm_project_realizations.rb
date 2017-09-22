class CreateEhmProjectRealizations < ActiveRecord::Migration[5.0]
  def change
    create_table :ehm_project_realizations do |t|
      t.text :score

      t.timestamps
    end
  end
end
