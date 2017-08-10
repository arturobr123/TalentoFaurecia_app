class CreateEvaluations < ActiveRecord::Migration[5.0]
  def change
    create_table :evaluations do |t|
      t.references :admin, foreign_key: true
      t.text :comments
      t.references :user, foreign_key: true
      t.boolean :candidato_potencial
      t.integer :english_level
      t.text :technical_skills
      t.string :duration_training
      t.integer :rank_global_candidate

      t.timestamps
    end
  end
end
