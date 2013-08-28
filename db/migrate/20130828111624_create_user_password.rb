class CreateUserPassword < ActiveRecord::Migration
    def change
        create_table :user_password do |t|
            t.integer :user_id, :null => false
            t.text    :password_hash

            t.timestamps
        end
    end
end
