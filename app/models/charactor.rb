class Charactor < ActiveRecord::Base
  belongs_to :race
  belongs_to :player
  has_many :main_klasses
  has_many :support_klasses
  has_many :level_ups
  has_many :charactor_items
end
