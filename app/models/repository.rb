class Repository < ActiveRecord::Base

  has_many :pushes
  has_many :commits, :through => :pushes

end
