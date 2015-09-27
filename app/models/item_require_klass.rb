class ItemRequireKlass < ActiveRecord::Base
  belongs_to :item
  belongs_to :klass
end
