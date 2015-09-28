
#　"プレイヤー"
generate :model, "Player", "name:string"

#　"キャラクター"
generate :model, "Charactor", "race:references", "name:string", "age:integer", "sex:string", "player:references"

#　"種族"
generate :model, "Race", "name:string"
generate :model, "RaceAbility", "race:references", "ability:references", "number:integer"

#　"クラス"
generate :model, "Klass", "name:string", "is_main:boolean", "initial_hp:integer", "initial_mp:integer", "level_up_hp:integer", "level_up_mp:integer"
generate :model, "KlassAbility", "klass:references", "ability:references", "number:integer"

#　"キャラクターのメイン、サポートクラス"
generate :model, "MainKlass", "charactor:references", "klass:references"
generate :model, "SupportKlass", "charactor:references", "klass:references"

#　"レベルアップ関連（メイキング時を０から１レベルへのレベルアップとみなしている）"
generate :model, "LevelUp", "charactor:references", "level:integer"
generate :model, "BaseAbilityUp", "level_up:references", "ability:references", "number:integer"
generate :model, "SkillUp", "level_up:references", "skill:references"

#　"能力値"
generate :model, "Ability", "name:string"

#　"スキル"
generate :model, "Skill", "name:string", "cost:integer", "sl_limit:integer", "effect:text", "critical:references", "is_magic:boolean", "klass:references", "race:references"
generate :model, "SkillBonus", "skill:references", "bonus:references", "number:integer"
generate :model, "Bonus", "name:string"

#　"アイテム"
generate :model, "Item", "name:string", "category:references", "level:integer", "weight:integer", "equiped:references", "price:integer", "inspect_rate:integer", "is_consumued:boolean", "timing:references", "comment:text"
generate :model, "ItemRequireKlass", "item:references", "klass:references"
generate :model, "ItemBonus", "item:references", "bonus:references", "number:integer"
generate :model, "Category", "name:string"
generate :model, "Equiped", "name:string"

#　"キャラクターが保有するアイテム"
generate :model, "CharactorItem", "charactor:references", "item:references"

#　"スキルやアイテムの効果"
generate :model, "Effect", "timing:references", "roll_type:references", "target:references", "distance:references", "limitation:references"
generate :model, "Timing", "name:string"
generate :model, "RollType", "name:string"
generate :model, "Target", "name:string"
generate :model, "Distance", "name:string"
generate :model, "Critical", "name:string"
generate :model, "Limitation", "name:string"
