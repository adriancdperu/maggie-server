class CreateFollowship < ActiveRecord::Migration
    def change
        create_table :followship do |t|
            t.integer :from_user_id, :null => false
            t.integer :to_user_id, :null => false
            t.integer :status
            t.integer :created_at
            t.integer :updated_at
            t.integer :deleted_at

            t.timestamps
        end
    end
end
