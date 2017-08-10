class DeviseCreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      t.string :name
      t.string :firs_last_name
      t.string :second_last_name
      t.text :phone
      t.text :university
      t.text :carrer
      t.string :type_of_internship
      t.text :language1
      t.integer :language1_percentage_reading
      t.integer :language1_percentage_writing
      t.text :language2
      t.integer :language2_percentage_reading
      t.integer :language2_percentage_writing
      t.text :language3
      t.integer :language3_percentage_reading
      t.integer :language3_percentage_writing

      t.integer :semester
      t.integer :graduation_year

      t.text :interest_area1
      t.text :interest_area2
      t.text :interest_area3

      t.string :status

      t.string :CV



      #Social Networks
      t.string :uid
      t.string :provider


      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
