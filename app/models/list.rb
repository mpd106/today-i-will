class List < ActiveRecord::Base
  attr_accessor :date
  validates :user, presence: true
  validates :date, presence: true

  belongs_to :user
  has_many :things
end
