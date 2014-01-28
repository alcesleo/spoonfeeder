class Comment < ActiveRecord::Base
  include PublicActivity::Common
  attr_accessible :username, :comment

  belongs_to :post
end
