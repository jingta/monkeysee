class Push < ActiveRecord::Base

  belongs_to :repository
  has_many :commits

end
