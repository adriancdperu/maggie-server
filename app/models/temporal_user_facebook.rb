# CLASS: TemporalUserFacebook class describes temporal_user_facebook table

class TemporalUserFacebook < ActiveRecord::Base
    belongs_to      :temporal_id
    has_many        :service_id
    has_one         :status
    has_one         :access_token #TODO
    has_one         :expire_date
    has_one         :created_at

end
