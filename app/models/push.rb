class Push < ActiveRecord::Base

  belongs_to :repository
  belongs_to :pusher, :class_name => "Committer"

  has_many :commits
  has_many :committers, :through => :commits

end
