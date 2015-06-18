class Inventory < ActiveRecord::Base

  belongs_to :user

  belongs_to :category

  attachment :item_image

  has_many :comments, as: :commentable

end
