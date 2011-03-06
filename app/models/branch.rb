class Branch < ActiveRecord::Base

  belongs_to :repository
  has_many :pushes
  has_many :commits, :through => :pushes
  has_many :committers, :through => :commits

end
