class Ability < ActiveRecord::Base
  has_many :race_abilities
  has_many :base_ability_ups
  has_many :klass_abilities
end
