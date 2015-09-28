class Race < ActiveRecord::Base
  has_many :race_abilities
  has_many :skills
  has_many :charactors
end
