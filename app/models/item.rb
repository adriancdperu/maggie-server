# CLASS: Item class describes item table

class Item < ActiveRecord::Base
    belongs_to  :creator_id
    has_one     :item_id
    has_one     :title
    has_many    :description
    has_many    :source
    has_one     :status
    has_one     :is_buyable
    has_one     :is_ours
    has_one     :created_at
    has_one     :updated_at
    has_one     :delted_at

end
