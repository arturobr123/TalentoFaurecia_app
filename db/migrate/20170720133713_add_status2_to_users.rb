class AddStatus2ToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :status, :integer, default: 1
  end
end
