class SkillUp < ActiveRecord::Base
  belongs_to :level_up
  belongs_to :skill
end
