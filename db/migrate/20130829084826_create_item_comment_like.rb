class CreateItemComment < ActiveRecord::Migration
    def change
        create_table :item_comment do |t|
            t.integer :comment_id, :null => false
            t.integer :item_id, :null => false
            t.integer :creator_id, :null => false
            t.string  :type
            t.integer :count
            t.integer :created_at
            t.integer :updated_at
            t.integer :deleted_at
            t.boolean :is_unliked

            t.timestamps
        end
    end
end
