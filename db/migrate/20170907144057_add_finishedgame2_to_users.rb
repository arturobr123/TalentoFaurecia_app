class AddFinishedgame2ToUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :game_finished, :boolean 
    add_column :users, :game_finished, :boolean,default: false
  end
end
