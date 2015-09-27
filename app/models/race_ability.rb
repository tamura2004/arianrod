class RaceAbility < ActiveRecord::Base
  belongs_to :race
  belongs_to :ability
end
