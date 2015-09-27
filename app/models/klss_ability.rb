class KlssAbility < ActiveRecord::Base
  belongs_to :klass
  belongs_to :ability
end
