class CreateList < ActiveRecord::Migration
    def change
        create_table :list do |t|
            t.integer :list_id, :null => false
            t.integer :item_id, :null => false
            t.integer :creator_id, :null => false
            t.string  :list_title
            t.text    :list_description
            t.boolean :is_public

            t.timestamps
        end
    end
end
