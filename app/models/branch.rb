class Branch < ActiveRecord::Base

  belongs_to :repository
  belongs_to :owner, :class_name => "Committer"

  has_many :pushes
  has_many :commits, :through => :pushes
  has_many :committers, :through => :commits

end
