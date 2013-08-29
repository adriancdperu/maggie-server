class CreateItemComment < ActiveRecord::Migration
    def change
        create_table :item_comment do |t|
            t.integer :comment_id, :null => false
            t.integer :item_id, :null => false
            t.integer :creator_id, :null => false
            t.integer :image_id
            t.string  :caption
            t.integer :created_at
            t.integer :updated_at
            t.integer :deleted_at

            t.timestamps
        end
    end
end
