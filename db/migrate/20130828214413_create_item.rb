class CreateItem < ActiveRecord::Migration
    def change
        create_table :item do |t|
            t.integer :item_id, :null => false
            t.integer :creator_id, :null => false
            t.string  :title
            t.text    :description
	    t.text    :source
            t.status  :integer
            t.boolean :is_buyable
            t.boolean :is_ours
	    t.integer :created_at
	    t.integer :updated_at
	    t.integer :deleted_at

            t.timestamps
        end
    end
end
