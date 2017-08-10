class RemoveInitialValluesFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :estado_residencia, :string

    add_column :users, :estado_residencia, :integer
    
  end
end
