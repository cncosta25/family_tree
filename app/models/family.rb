class Family < ActiveRecord::Base

  has_many :members, :dependent => :destroy
  validates :name, :presence => true

end
