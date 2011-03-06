class Committer < ActiveRecord::Base

  has_many :repositories
  has_many :branches
  has_many :pushes
  has_many :commits

end
