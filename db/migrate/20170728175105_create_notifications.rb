class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.references :admin, foreign_key: true
      t.references :item , polymorphic:true, index: true
      t.boolean :viewed , default: false

      t.timestamps
    end
  end
end
