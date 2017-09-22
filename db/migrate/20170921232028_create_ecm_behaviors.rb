class CreateEcmBehaviors < ActiveRecord::Migration[5.0]
  def change
    create_table :ecm_behaviors do |t|
      t.text :rating

      t.timestamps
    end
  end
end
