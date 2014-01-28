class Post < ActiveRecord::Base
  attr_accessible :title, :entry
  validates :title, presence: true
  validates :entry, presence: true

  belongs_to :user
  has_many :comments  
end
