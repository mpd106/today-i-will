class List < ActiveRecord::Base
  attr_accessor :date

  belongs_to :user
  has_many :things
end
