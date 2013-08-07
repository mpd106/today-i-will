class User < ActiveRecord::Base
  attr_accessible :name, :email, :username
 
  has_many :lists

  validates :name, presence: true
  validates :email, presence: true , email: true
  validates :username, presence: true, username: true, uniqueness: true
end
