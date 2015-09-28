# クラス
klass_names = %w(
ウォーリア
アコライト
メイジ
シーフ
アルケミスト
ガンスリンガー
侍
サモナー
セージ
ダンサー
ニンジャ
バード
モンク
レンジャー
)

klass_numbers = [
  [13,10,7,4],
  [11,12,5,6],
  [10,13,4,7],
  [12,11,6,5],
  [10,13],
  [12,11],
  [12,11],
  [ 8,15],
  [ 9,14],
  [11,12],
  [10,13],
  [10,13],
  [12,11],
  [12,11]
]

klass_names.each_with_index do |name, i|
  Klass.seed do |s|
    s.id = i
    s.name = name
    s.initial_hp = klass_numbers[i][0]
    s.initial_mp = klass_numbers[i][1]
    if i <= 3
      s.is_main = true
      s.level_up_hp = klass_numbers[i][2]
      s.level_up_mp = klass_numbers[i][3]
    else
      s.is_main = false
      s.level_up_hp = 0
      s.level_up_mp = 0
    end
  end
end
