class User < ActiveRecord::Base
  attr_accessor :name, :email
 
  has_many :lists

  validates :name, :presence => true
  validates :email, :presence => true, :email => true
end
