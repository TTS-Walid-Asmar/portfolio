class Anon < ActiveRecord::Base

    searchkick

  belongs_to :user

  has_many :comments, as: :commentable

end

