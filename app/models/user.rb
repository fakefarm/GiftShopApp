class User < ActiveRecord::Base
  attr_accessible :name, :login, :password, :password_confirmation
  
  has_secure_password
  
end
