class AddNewValuesToEhmBehavior < ActiveRecord::Migration[5.0]
  def change
  	rename_column :ehm_behaviors, :rating, :score
  end
end
