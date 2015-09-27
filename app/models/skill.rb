class Skill < ActiveRecord::Base
  belongs_to :timing
  belongs_to :roll_type
  belongs_to :target
  belongs_to :range
  belongs_to :critical
  belongs_to :klass
  belongs_to :race
end
