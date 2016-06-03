class Relationship < ActiveRecord::Base

  belongs_to :member , :class_name => "Member", :foreign_key => "member_id"

  validates :relationship_type, :presence => true
  validates :member_id, :presence => true
  validates :other_member_id, :presence => true

end
