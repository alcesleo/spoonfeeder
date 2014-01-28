# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  post_id    :integer
#  username   :string(255)      default("Anonymous")
#  comment    :text(300)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ActiveRecord::Base
  attr_accessible :comment
  belongs_to :post
  belongs_to :user
end
