class AddEmailHmToVacantes < ActiveRecord::Migration[5.0]
  def change
    add_column :vacantes, :email_hiring_manager, :string
  end
end
