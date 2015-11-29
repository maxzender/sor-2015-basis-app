class Artist < ActiveRecord::Base

  has_many :titles
  has_many :concerts

end
