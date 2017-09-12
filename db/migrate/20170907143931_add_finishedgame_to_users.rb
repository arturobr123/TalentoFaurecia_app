class AddFinishedgameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :game_finished, :boolean
  end
end
