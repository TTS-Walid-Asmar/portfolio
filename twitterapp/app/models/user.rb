class User < ActiveRecord::Base
    searchkick
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

      serialize :following, Array

     validates :username, presence: true, uniqueness: true

     validates :name, presence: true

    has_many :tweets

has_attached_file :avatar, :styles =>{ :medium => "100x100>", :navpic => "32x32>", :thumb => "60x60>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
