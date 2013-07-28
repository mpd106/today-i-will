class Thing < ActiveRecord::Base
  attr_accessible :description, :done

  belongs_to :list
end
