class Event < ActiveRecord::Base
    searchkick

  belongs_to :user

    attachment :event_image

    has_many :comments, as: :commentable
end
