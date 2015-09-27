class SkillBonu < ActiveRecord::Base
  belongs_to :skill
  belongs_to :bonus
end
