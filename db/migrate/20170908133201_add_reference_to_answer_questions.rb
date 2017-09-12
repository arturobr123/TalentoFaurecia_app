class AddReferenceToAnswerQuestions < ActiveRecord::Migration[5.0]
  def change
    add_reference :answer_questions, :question_first_filter, foreign_key: true
  end
end
