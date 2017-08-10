class RemoveInitialValuesFromUialValuesFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :language1, :text
    remove_column :users, :language1_percentage_reading, :integer
    remove_column :users, :language1_percentage_writing, :integer

    remove_column :users, :language2, :text
    remove_column :users, :language2_percentage_reading, :integer
    remove_column :users, :language2_percentage_writing, :integer

    remove_column :users, :language3, :text
    remove_column :users, :language3_percentage_reading, :integer
    remove_column :users, :language3s_percentage_writing, :integer

    remove_column :users, :type_of_internship, :string
    remove_column :users, :status, :string

    
  end
end
