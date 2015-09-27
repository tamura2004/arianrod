class ItemBonu < ActiveRecord::Base
  belongs_to :item
  belongs_to :bonus
end
