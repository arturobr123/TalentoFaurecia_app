class RemoveStatusFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :stauts, :integer
  end
end
