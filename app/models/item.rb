class Item < ActiveRecord::Base
  belongs_to :category
  belongs_to :equiped
  belongs_to :timing
end
