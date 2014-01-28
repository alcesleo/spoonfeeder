class User < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation, :password_digest
  validates :name, presence: true, uniqueness: true
  validates :password, presence: { on: :create }, length: { minimum: 3, allow_blank: true }
  validates :password_confirmation, presence: { on: :create }, length: { minimum: 3, allow_blank: true }

  has_secure_password

  after_destroy :ensure_one_admin_remains

  private
  def ensure_one_admin_remains
    # TODO: are all users admins?
    if User.count.zero?
      raise "Can't delete last user"
    end
  end

end
