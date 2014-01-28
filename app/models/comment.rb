class Comment < ActiveRecord::Base
  attr_accessible :username, :comment
  belongs_to :post
  belongs_to :user
end
