class Push < ActiveRecord::Base

  belongs_to :repository
  belongs_to :committer, :as => :pusher

  has_many :commits
  has_many :committers, :through => :commits, :as => :authors

end
