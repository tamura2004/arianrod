require 'rails_helper'

RSpec.describe Ability, type: :model do
  it { should have_many(:race_abilities) }
end
