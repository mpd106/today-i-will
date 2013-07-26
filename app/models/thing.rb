class Thing < ActiveRecord::Base
  attr_accessor :description, :done

  belongs_to :list
end
