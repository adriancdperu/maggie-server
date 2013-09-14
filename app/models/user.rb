# CLASS: User class describes user table

class User < ActiveRecord::Base
    acts_as_authentic
    acts_as_permissible

    has_one     :user_id
    has_one     :avatar_id
    has_one     :comment
    has_one     :type
    has_one     :status
    has_one     :created_at
    has_one     :updated_at
    has_one     :is_active
    has_one     :is_male
    has_one     :has_bought

end
