class RemoveReferenceToAnswerQuestions < ActiveRecord::Migration[5.0]
  def change
    remove_reference :answer_questions, :question_first_filter, foreign_key: true
    add_reference :answer_questions, :questions_first_filter, foreign_key: true
  end
end
