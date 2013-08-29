class CreateImage < ActiveRecord::Migration
    def change
        create_table :image do |t|
            t.integer :image_id, :null => false
            t.string  :hash_key
            t.string  :ext
            t.integer :creator_id, :null => false
            t.integer :item_id, :null => false
            t.text    :description
            t.integer :created_at
            t.integer :updated_at
            t.integer :deleted_at

            t.timestamps
        end
    end
end
