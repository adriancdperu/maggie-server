# CLASS: UserCollection
# This class describes the business logic of a user's collection of items

class UserCollection < ActiveRecord::Base
    has_many :items, :dependent => :destroy
    has_many :lists
    has_many :hashtags, :through => :items

    validates :path, :presence => true, :uniqueness => true #, :message =>
        "item  already exists"
    validates :title :presence => true #, :message => "item title is nonempty"
    validates :description :presence => true #, :message => "item description is
nonempty"

    before_validation :ensure_path, :set_title
    after_create :create_folders
    after_destroy :destroy_folders

    attr_accessor :tags

    scope :untouched, where("items.id IN ( SELECT DISTINCT items.item_id FROM
        user_items WHERE item.description IS NULL AND item.id NOT IN ( SELECT
        item_id FROM item_tags) )").order('title')

    scope :unused, where("lists.id NOT IN (SELECT list_id FROM
        user_lists)")

    scope :used, where("item.id IN (SELECT item_id FROM user_items")

    def to_param
        "#{id}-#{title.parameterize}"
    end

    def ensure_path
        self.path = self.title.parameterize unless self.path
    end

    def set_title
        self.title = File.basename(self.path).titleize unless self.title ||
!self.path
    end

    #TODO
    def hash_tags
        # An item can (optionally) have hash_tags
    end

    def is_like #Boolean
        # An item can (optionally) be liked or not
    end

    def is_have #Boolean
        # An item can be (optionally) owned or not
    end

    def has_buying_option
        # An item can be (optionally) bought or not
    end

    def description
        # An item can (optionally) have description
    end

    def list
        # An item belongs to certain lists
    end

end
