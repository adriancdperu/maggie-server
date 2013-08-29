class CreateTag < ActiveRecord::Migration
    def change
        create_table :tag do |t|
            t.integer :tag_id, :null => false
            t.integer :item_id, :null => false
            t.integer :creator_id, :null => false
            t.string  :tag
            t.integer :created_at
            t.integer :updated_at
            t.integer :deleted_at

            t.timestamps
        end
    end
end
