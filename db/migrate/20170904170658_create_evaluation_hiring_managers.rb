class CreateEvaluationHiringManagers < ActiveRecord::Migration[5.0]
  def change
    create_table :evaluation_hiring_managers do |t|

      t.integer :learning_on_the_fly_select
      t.text :learning_on_the_fly_justification
      t.integer :problem_solving_select
      t.text :problem_solving_justification
      t.integer :customer_focus_select
      t.text :customer_focus_justification
      t.integer :priority_setting_select
      t.text :priority_setting_justification
      t.integer :personal_learning_select
      t.text :personal_learning_justification
      t.integer :integrity_and_trust_select
      t.text :integrity_and_trust_justification


      t.integer :entrepreneurship_select
      t.text :entrepreneurship_justification
      t.integer :autonomy_select
      t.text :autonomy_justification
      t.integer :accountability_select
      t.text :accountability_justification
      t.integer :energy_select
      t.text :energy_justification
      t.integer :respect_select
      t.text :respect_justification
      t.integer :exemplarity_select
      t.text :exemplarity_justification


      t.text :assigned_project
      t.integer :project_realization
      t.integer :overall_performance
      t.integer :future_position_option1
      t.integer :future_position_option2
      t.integer :future_position_option3
      t.boolean :mobility_of_intern_afer_assignment
      t.text :mobility_of_intern_afer_assignment_where
      t.text :aditional_comments
      t.boolean :i_recommend_this_candidate_for_inmediate_contract_with_the_company
      t.text :i_recommend_this_candidate_for_inmediate_contract_with_the_company_why

      t.timestamps


    end
  end
end
