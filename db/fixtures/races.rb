# 種族
races = %w(ヒューリン エルダナーン ネヴァーフ フィルボル ヴァーナ ドゥアン)
races.each_with_index do |name,i|
  Race.seed do |s|
    s.id = i
    s.name = name
  end
end