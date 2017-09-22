class ChangeTableBehaviors < ActiveRecord::Migration
  def change
    rename_table :ecm_behaviors, :ehm_behaviors
  end


end