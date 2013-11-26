class Tournament < ActiveRecord::Base
  belongs_to :user

  has_many :teams
  accepts_nested_attributes_for :teams

end
