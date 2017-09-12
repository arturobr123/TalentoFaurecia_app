class CreateQuestionsFirstFilters < ActiveRecord::Migration[5.0]
  def change
    create_table :questions_first_filters do |t|
      t.text :pregunta
      t.text :respuesta1
      t.text :respuesta2
      t.text :respuesta3
      t.text :respuesta4
      t.text :respuesta_correcta

      t.timestamps
    end
  end
end
