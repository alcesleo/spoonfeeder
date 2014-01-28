class Post < ActiveRecord::Base
  include PublicActivity::Common
  attr_accessible :title, :entry

  has_many :comments
end
