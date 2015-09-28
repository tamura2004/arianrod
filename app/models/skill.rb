class Skill < ActiveRecord::Base
  belongs_to :critical
  belongs_to :klass
  belongs_to :race
  belongs_to :effect
end
