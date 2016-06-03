class Member < ActiveRecord::Base

  has_many :relationships , :class_name => "Relationship", :foreign_key => "member_id"
  belongs_to :member , :class_name => "Family", :foreign_key => "member_id"
  has_many :relatives, :through => :relationships , :source => :member

  validates :surname, :presence => true
  validates :name, :presence => true
  validates :family_id, :presence => true

end
