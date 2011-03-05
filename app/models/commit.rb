class Commit < ActiveRecord::Base

  belongs_to :push
  belongs_to :committer

end
