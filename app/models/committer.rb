class Committer < ActiveRecord::Base

  has_many :pushes
  has_many :commits
  has_many :repositories

end
