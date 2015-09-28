# 能力値
abilities = %w(筋力 器用 敏捷 知力 感知 精神 幸運)
abilities.each_with_index do |name,i|
  Ability.seed do |s|
    s.id = i
    s.name = name
  end
end
