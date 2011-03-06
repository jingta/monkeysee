class Repository < ActiveRecord::Base

  belongs_to :owner, :class_name => "Committer"

  has_many :branches
  has_many :pushes, :through => :branches
  has_many :commits, :through => :pushes
  has_many :commiters, :through => :commits

end
