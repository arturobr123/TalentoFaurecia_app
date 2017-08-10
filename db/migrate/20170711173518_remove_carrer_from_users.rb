class RemoveCarrerFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :carrer, :text

    add_column :users, :carrer, :integer
  end
end
