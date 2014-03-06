# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  entry      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ActiveRecord::Base
  attr_accessible :title, :entry
  validates :title, presence: true
  validates :entry, presence: true

  belongs_to :user
  has_many :comments
  has_many :likes
end
