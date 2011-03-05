class Repository < ActiveRecord::Base

  belongs_to :owner, :class_name => "Committer"

  has_many :pushes
  has_many :commits, :through => :pushes
  has_many :commiters, :through => :commits

end
