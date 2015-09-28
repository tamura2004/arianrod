def generate(sym,*args)
  case sym
  when :model
    printf "rails g rspec:model %s\n", args.first
  end
end

generate :comment, "プレイヤー"
generate :model, *%w(Player name:string)

generate :comment, "キャラクター"
generate :model, *%w(Charactor race:references name:string age:integer sex:string player:references)

generate :comment, "種族"
generate :model, *%w(Race name:string)
generate :model, *%w(RaceAbility race:references ability:references number:integer)

generate :comment, "クラス"
generate :model, *%w(Klass name:string is_main:boolean initial_hp:integer initial_mp:integer level_up_mp:integer level_up_mp:integer)
generate :model, *%w(KlassAbility klass:references ability:references number:integer)

generate :comment, "キャラクターのメイン、サポートクラス"
generate :model, *%w(MainKlass charactor:references klass:references)
generate :model, *%w(SupportKlass charactor:references klass:references)

generate :comment, "レベルアップ関連（メイキング時を０から１レベルへのレベルアップとみなしている）"
generate :model, *%w(LevelUp charactor:references level:integer)
generate :model, *%w(BaseAbilityUp level_up:references ability:references number:integer)
generate :model, *%w(SkillUp level_up:references skill:references)

generate :comment, "能力値"
generate :model, *%w(Ability name:string)

generate :comment, "スキル"
generate :model, *%w(Skill name:string cost:integer sl_limit:integer effect:text critical:references is_magic:boolean klass:references race:references)
generate :model, *%w(SkillBonus skill:references bonus:references number:integer)
generate :model, *%w(Bonus name:string)

generate :comment, "アイテム"
generate :model, *%w(Item name:string category:references level:integer weight:integer equiped:references price:integer inspect_rate:integer is_consumued:boolean timing:references comment:text)
generate :model, *%w(ItemRequireKlass item:references klass:references)
generate :model, *%w(ItemBonus item:references bonus:references number:integer)

generate :comment, "キャラクターが保有するアイテム"
generate :model, *%w(CharactorItem charactor:references item:references)

generate :comment, "スキルやアイテムの効果"
generate :model, *%w(Effect timing:references roll_type:references target:references range:references limitation:references)
generate :model, *%w(Timing name:string)
generate :model, *%w(RollType name:string)
generate :model, *%w(Target name:string)
generate :model, *%w(Distance name:string)
generate :model, *%w(Critical name:string)
generate :model, *%w(Limitation name:string)



