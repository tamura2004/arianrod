class AbilityUp < ActiveRecord::Base
  belongs_to :level_up
  belongs_to :ability
end
