class Effect < ActiveRecord::Base
  belongs_to :timing
  belongs_to :roll_type
  belongs_to :target
  belongs_to :distance
  belongs_to :limitation
  belongs_to :bonus
end
