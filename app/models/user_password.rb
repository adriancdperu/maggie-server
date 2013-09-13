# CLASS: UserPassword class describes user_password table

class UserPassword < ActiveRecord::Base
    belongs_to  :user_id
    has_one     :password_hash

end
