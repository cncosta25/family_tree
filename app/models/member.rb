class Member < ActiveRecord::Base

  has_many :relationships , :class_name => "Relationship", :foreign_key => "member_id", :dependent => :destroy
  has_many :other_relationships , :class_name => "Relationship", :foreign_key => "other_member_id", :dependent => :destroy
  belongs_to :family
  has_many :relatives, :through => :relationships , :source => :member

  validates :surname, :presence => true
  validates :name, :presence => true
  validates :family_id, :presence => true

end
