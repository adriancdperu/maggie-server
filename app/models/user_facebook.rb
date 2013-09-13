# CLASS: UserFacebook class describes user_facebook table

class UserFacebook < ActiveRecord::Base
    belongs_to      :user_id
    has_many        :service_id
    has_one         :status
    has_one         :access_token #TODO
    has_one         :expire_date
    has_one         :created_at

end
