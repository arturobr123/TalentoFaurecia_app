class CreateEhmCompetences < ActiveRecord::Migration[5.0]
  def change
    create_table :ehm_competences do |t|
      t.text :score

      t.timestamps
    end
  end
end
