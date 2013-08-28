class CreateTemporalUserFacebook < ActiveRecord::Migration
    def change
        create_table :temporal_user_facebook do |t|
            t.integer :user_id, :null => false
            t.integer :service_id, :null => false
            t.integer :status
            t.text    :access_token
            t.integer :expire_date
            t.integer :created_at

            t.timestamps
        end
    end
end
