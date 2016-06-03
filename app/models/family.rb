class Family < ActiveRecord::Base

  has_many :members
  belongs_to :family , :class_name => "User", :foreign_key => "family_id"

  valites :name, :presence => true

end
