class AddAssessmentToEvaluations < ActiveRecord::Migration[5.0]
  def change
    add_column :evaluations, :assessment, :boolean
  end
end
