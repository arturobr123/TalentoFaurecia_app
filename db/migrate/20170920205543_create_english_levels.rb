class CreateEnglishLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :english_levels do |t|
      t.text :level

      t.timestamps
    end
  end
end
