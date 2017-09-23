class AddThingsToEvaluationHiringManager < ActiveRecord::Migration[5.0]
  def change
    add_column :evaluation_hiring_managers, :location, :text
    add_column :evaluation_hiring_managers, :department, :text
    add_column :evaluation_hiring_managers, :responsable_name, :text
    add_column :evaluation_hiring_managers, :start_date, :date
    add_column :evaluation_hiring_managers, :end_date, :date
    add_column :evaluation_hiring_managers, :responsable_position, :text
    add_column :evaluation_hiring_managers, :target_position, :text
  end
end
