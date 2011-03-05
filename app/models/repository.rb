class Repository < ActiveRecord::Base

  belongs_to :committer, :as => :owner

  has_many :pushes
  has_many :commits, :through => :pushes
  has_many :commiters, :through => :commits, :as => :contributors

end
