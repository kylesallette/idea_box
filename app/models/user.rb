class User < ApplicationRecord

   validates_presence_of :name, :email, :password

  has_secure_password
  has_many :ideas

  enum role: ["default", "admin"]
end
