class CreateUser < ActiveRecord::Migration
    def change
        create_table :user do |t|
            t.integer :user_id, :null => false
            t.integer :avatar_id, :null => false
            t.text    :comment
            t.integer :type
            t.integer :status
            t.integer :created_at
            t.integer :updated_at
            t.integer :deleted_at
            t.boolean :is_active
            t.boolean :is_male
            t.boolean :has_bought, :default => false

            t.timestamps
        end
    end
end
