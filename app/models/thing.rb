class Thing < ActiveRecord::Base
  attr_accessible :description
  validates :list, presence: true
  validates :description, presence: true

  belongs_to :list

  def done
    self[:done]
  end

  def mark_done
    self.done = true
  end

  private
  
  def done=(val)
    write_attribute :done, val
  end
end
