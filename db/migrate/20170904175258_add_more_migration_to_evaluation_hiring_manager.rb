class AddMoreMigrationToEvaluationHiringManager < ActiveRecord::Migration[5.0]
  def change

  	add_reference :evaluation_hiring_managers, :admin, foreign_key: true, index:true
  	add_reference :evaluation_hiring_managers, :user,  foreign_key: true, index:true
  	add_column :evaluation_hiring_managers, :name_hiring_manager , :text 


  end
end
