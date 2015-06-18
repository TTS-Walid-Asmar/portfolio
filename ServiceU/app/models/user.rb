class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         validates :email, presence: true, uniqueness: true

         validates :username, presence: true, uniqueness: true

         validates :name, presence: true

#######Everything above this comment pertains to devise.
  has_many :jobs

  has_many :events

  has_many :forums

  has_many :comments

  has_many :inventories

  attachment :profile_image


end
