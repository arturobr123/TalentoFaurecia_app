class AddAttachmentCvToUsers < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :CV, :string

  	add_attachment :users, :CV
  end
end
