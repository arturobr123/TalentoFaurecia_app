class RemoveInitialValuesFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :interest_area1, :text
    remove_column :users, :interest_area2, :text
    remove_column :users, :interest_area3, :text

    add_column :users, :interest_area1, :integer
    add_column :users, :interest_area2, :integer
    add_column :users, :interest_area3, :integer
  end
end
