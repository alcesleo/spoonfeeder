# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation, :password_digest
  validates :name, presence: true, uniqueness: true
  has_secure_password

  after_destroy :ensure_one_admin_remains

  has_many :posts

  private
  def ensure_one_admin_remains
    # TODO: are all users admins?
    if User.count.zero?
      raise "Can't delete last user"
    end
  end

end
