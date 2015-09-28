# クラス能力値修正
klass_abilities = [
[0,1,2],
[1,3,5],
[3,4,5],
[1,2,4],
[1,3,4],
[1,4,5],
[0,1,5],
[3,5,6],
[3,4,6],
[2,5,6],
[1,2,3],
[4,5,6],
[0,2,5],
[0,1,4]
]

klass_abilities.each_with_index do |abilities, klass_id|
  abilities.each do |ability_id|
    KlassAbility.seed do |s|
      s.id = klass_id * 3 + ability_id
      s.klass_id = klass_id
      s.ability_id = ability_id
      s.number = 1
    end
  end
end
