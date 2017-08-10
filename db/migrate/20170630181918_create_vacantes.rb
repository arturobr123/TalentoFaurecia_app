class CreateVacantes < ActiveRecord::Migration[5.0]
  def change
    create_table :vacantes do |t|
      t.text :name
      t.text :function
      t.text :location
      t.text :little_summary
      t.text :summary
      t.text :missions_role
      t.boolean :occupied
      t.references :admin, foreign_key: true, index:true

      t.timestamps
    end
  end
end
