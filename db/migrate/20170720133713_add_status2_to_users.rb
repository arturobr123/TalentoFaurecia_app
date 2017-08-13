class AddStatus2ToUsers < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :status, :string
    add_column :users, :status, :integer, default: 1
  end
end
