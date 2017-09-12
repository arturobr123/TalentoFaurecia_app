class CreateAnswerQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :answer_questions do |t|
      t.boolean :respuesta
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
