class Artist < ActiveRecord::Base

    has_attached_file :avatar, :styles => { :large => "600x600>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/missing/:style.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

    has_many :songs
    validates :name, presence: true
    validates :name, uniqueness: true
end

