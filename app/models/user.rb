class User < ActiveRecord::Base
  # validates attributes are not blank
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }

  before_save {
    self.email = email.downcase
  }

  ##
  # Adds virtual password and password_confirmation attributes, requires the presence
  # of the password, require that they match, and adds an authenticate method to compare
  # a hashed password to the password_digest to authenticate users.
  has_secure_password
end
