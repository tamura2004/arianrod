# 種族能力値
race_abilities = [
  [9,9,8,8,8,8,9],
  [7,8,8,10,7,10,7],
  [10,11,7,8,7,8,6],
  [6,8,9,7,8,11,8],
  [8,7,12,6,10,6,8],
  [12,8,8,6,7,9,7]
]

race_abilities.each_with_index do |abilities, race_id|
  abilities.each_with_index do |number, ability_id|
    RaceAbility.seed do |s|
      s.race_id = race_id
      s.ability_id = ability_id
      s.number = number
    end
  end
end