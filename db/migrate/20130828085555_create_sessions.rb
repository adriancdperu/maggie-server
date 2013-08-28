class CreateSessions < ActiveRecord::Migration
    def change
        create_table :sessions do |t|
            t.integer :id
            t.text :sessions_data

            t.timestamps
        end
    end
end
