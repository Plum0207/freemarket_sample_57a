lady = Category.create(name: "レディース")
man = Category.create(name: "メンズ")
baby = Category.create(name: "ベビー・キッズ")
home = Category.create(name: "インテリア・住まい・小物")
book = Category.create(name: "本・音楽・ゲーム")
hobby = Category.create(name: "おもちゃ・ホビー・グッズ")

beauty = Category.create(name: "コスメ・香水・美容")
appliance = Category.create(name: "家電・スマホ・カメラ")
sport = Category.create(name: "スポーツ・レジャー")
handmade = Category.create(name: "ハンドメイド")
ticket = Category.create(name: "チケット")
mobile = Category.create(name: "自動車・オートバイ")
other = Category.create(name: "その他")

# レディースの子カテゴリ
lady_all = lady.children.create(name: "すべて")
lady_tops = lady.children.create(name: "トップス")
lady_jacket = lady.children.create(name: "ジャケット/アウター")
lady_pants = lady.children.create(name: "パンツ")
lady_skirt = lady.children.create(name: "スカート")
lady_onepiece = lady.children.create(name: "ワンピース")
lady_shoes = lady.children.create(name: "靴")
lady_roomwear = lady.children.create(name: "ルームウェア/パジャマ")
lady_legwear = lady.children.create(name: "レッグウェア")
lady_boushi = lady.children.create(name: "帽子")
lady_bag = lady.children.create(name: "バッグ")
lady_accessory = lady.children.create(name: "アクセサリー")
lady_hairaccessory = lady.children.create(name: "ヘアアクセサリー")
lady_item = lady.children.create(name: "小物")
lady_watch = lady.children.create(name: "時計")
lady_wig = lady.children.create(name: "ウィッグ/エクステ")
lady_bathingsuit = lady.children.create(name: "浴衣/水着")
lady_suits = lady.children.create(name: "スーツ/フォーマル/ドレス")
lady_maternity = lady.children.create(name: "マタニティ")
lady_other = lady.children.create(name: "その他")
# レディースの孫カテゴリ
lady_tops.children.create([{name: "すべて"}, {name: "Tシャツ/カットソー(半袖/袖なし)"}, {name: "Tシャツ/カットソー(七分/長袖)"}, {name: "シャツ/ブラウス(半袖/袖なし)"}, {name: "シャツ/ブラウス(七分/長袖)"}, {name: "ポロシャツ"}, {name: "キャミソール"}, {name: "タンクトップ"}, {name: "ホルターネック"}, {name: "ニット/セーター"}, {name: "チュニック"}, {name: "カーディガン/ボレロ"}, {name: "アンサンブル"}, {name: "ベスト/ジレ"}, {name: "パーカー"}, {name: "トレーナー/スウェット"}, {name: "ベアトップ/チューブトップ"}, {name: "ジャージ"}, {name: "その他"}])
lady_jacket.children.create([{name: "すべて"}, {name: "テーラードジャケット"}, {name: "ノーカラージャケット"}, {name: "Gジャン/デニムジャケット"}, {name: "レザージャケット"}, {name: "ダウンジャケット"}, {name: "ライダースジャケット"}, {name: "ミリタリージャケット"}, {name: "ダウンベスト"}, {name: "ジャンパー/ブルゾン"}, {name: "ポンチョ"}, {name: "ロングコート"}, {name: "トレンチコート"}, {name: "ダッフルコート"}, {name: "ピーコート"}, {name: "チェスターコート"}, {name: "モッズコート"}, {name: "スタジャン"}, {name: "毛皮/ファーコート"}, {name: "スプリングコート"}, {name: "スカジャン"}, {name: "その他"}])
lady_pants.children.create([{name: "すべて"}, {name: "デニム/ジーンズ"}, {name: "ショートパンツ"}, {name: "カジュアルパンツ"}, {name: "ハーフパンツ"}, {name: "チノパン"}, {name: "ワークパンツ/カーゴパンツ"}, {name: "クロップドパンツ"}, {name: "サロペット/オーバーオール"}, {name: "オールインワン"}, {name: "サルエルパンツ"}, {name: "ガウチョパンツ"}, {name: "その他"}])
lady_skirt.children.create([{name: "すべて"}, {name: "ミニスカート"}, {name: "ひざ丈スカート"}, {name: "ロングスカート"}, {name: "キュロット"}, {name: "その他"}])
lady_onepiece.children.create([{name: "すべて"}, {name: "ミニワンピース"}, {name: "ひざ丈ワンピース"}, {name: "ロングワンピース"}, {name: "その他"}])
lady_shoes.children.create([{name: "すべて"}, {name: "ハイヒール/パンプス"}, {name: "ブーツ"}, {name: "サンダル"}, {name: "スニーカー"}, {name: "ミュール"}, {name: "モカシン"}, {name: "ローファー/革靴"}, {name: "フラットシューズ/バレエシューズ"}, {name: "長靴/レインシューズ"}, {name: "その他"}])
lady_roomwear.children.create([{name: "すべて"}, {name: "パジャマ"}, {name: "ルームウェア"}, {name: "その他"}])
lady_legwear.children.create([{name: "すべて"}, {name: "ソックス"}, {name: "スパッツ/レギンス"}, {name: "ストッキング/タイツ"}, {name: "レッグウォーマー"}, {name: "その他"}])
lady_boushi.children.create([{name: "すべて"}, {name: "ニットキャップ/ビーニー"}, {name: "ハット"}, {name: "ハンチング/ベレー帽"}, {name: "キャップ"}, {name: "キャスケット"}, {name: "麦わら帽子"}, {name: "その他"}])
lady_bag.children.create([{name: "すべて"}, {name: "ハンドバッグ"}, {name: "トートバッグ"}, {name: "エコバッグ"}, {name: "リュック/バックパック"}, {name: "ボストンバッグ"}, {name: "スポーツバッグ"}, {name: "ショルダーバッグ"}, {name: "クラッチバッグ"}, {name: "ポーチ/バニティ"}, {name: "ボディバッグ/ウェストバッグ"}, {name: "マザーズバッグ"}, {name: "メッセンジャーバッグ"}, {name: "ビジネスバッグ"}, {name: "旅行用バッグ/キャリーバッグ"}, {name: "ショップ袋"}, {name: "和装用バッグ"}, {name: "かごバッグ"}, {name: "その他"}])
lady_accessory.children.create([{name: "すべて"}, {name: "ネックレス"}, {name: "ブレスレット"}, {name: "バングル/リストバンド"}, {name: "リング"}, {name: "ピアス(片耳用)"}, {name: "ピアス(両耳用)"}, {name: "イヤリング"}, {name: "アンクレット"}, {name: "ブローチ/コサージュ"}, {name: "チャーム"}, {name: "その他"}])
lady_hairaccessory.children.create([{name: "すべて"}, {name: "ヘアゴム/シュシュ"}, {name: "ヘアバンド/カチューシャ"}, {name: "ヘアピン"}, {name: "その他"}])
lady_item.children.create([{name: "すべて"}, {name: "長財布"}, {name: "折り財布"}, {name: "コインケース/小銭入れ"}, {name: "名刺入れ/定期入れ"}, {name: "キーケース"}, {name: "キーホルダー"}, {name: "手袋/アームカバー"}, {name: "ハンカチ"}, {name: "ベルト"}, {name: "マフラー/ショール"}, {name: "ストール/スヌード"}, {name: "バンダナ/スカーフ"},{name: "ネックウォーマー"}, {name: "サスペンダー"}, {name: "サングラス/メガネ"}, {name: "モバイルケース/カバー"}, {name: "手帳"}, {name: "イヤマフラー"}, {name: "傘"}, {name: "レインコート/ポンチョ"}, {name: "ミラー"}, {name: "タバコグッズ"}, {name: "その他"}])
lady_watch.children.create([{name: "すべて"}, {name: "腕時計(アナログ)"}, {name: "腕時計(デジタル)"}, {name: "ラバーベルト"}, {name: "レザーベルト"}, {name: "金属ベルト"}, {name: "その他"}])
lady_wig.children.create([{name: "すべて"}, {name: "前髪ウィッグ"}, {name: "ロングストレート"}, {name: "ロングカール"}, {name: "ショートストレート"}, {name: "ショートカール"}, {name: "その他"}])
lady_bathingsuit.children.create([{name: "すべて"}, {name: "浴衣"}, {name: "着物"}, {name: "振袖"}, {name: "長襦袢/半襦袢"}, {name: "水着セパレート"}, {name: "水着ワンピース"}, {name: "水着スポーツ用"}, {name: "その他"}])
lady_suits.children.create([{name: "すべて"}, {name: "スカートスーツ上下"}, {name: "パンツスーツ上下"}, {name: "ドレス"}, {name: "パーティーバッグ"}, {name: "シューズ"}, {name: "ウェディング"}, {name: "その他"}])
lady_maternity.children.create([{name: "すべて"}, {name: "トップス"}, {name: "アウター"}, {name: "インナー"}, {name: "ワンピース"}, {name: "パンツ/スパッツ"}, {name: "スカート"}, {name: "パジャマ"}, {name: "授乳服"}, {name: "その他"}])
lady_other.children.create([{name: "すべて"}, {name: "スカートスーツ上下"}, {name: "パンツスーツ上下"}, {name: "ドレス"}, {name: "パーティーバッグ"}, {name: "シューズ"}, {name: "ウェディング"}])

# メンズの子カテゴリ
man_all = man.children.create(name: "すべて")
man_tops = man.children.create(name: "トップス")
man_jacket = man.children.create(name: "ジャケット/アウター")
man_pants = man.children.create(name: "パンツ")
man_shoes = man.children.create(name: "靴")
man_bag = man.children.create(name: "バッグ")
man_suits = man.children.create(name: "スーツ")
man_boushi = man.children.create(name: "帽子")
man_accessory = man.children.create(name: "アクセサリー")
man_item = man.children.create(name: "小物")
man_watch = man.children.create(name: "時計")
man_bathingsuit = man.children.create(name: "水着")
man_legwear = man.children.create(name: "レッグウェア")
man_underwear = man.children.create(name: "アンダーウェア")
man_other = man.children.create(name: "その他")
# メンズの孫カテゴリ
man_tops.children.create([{name: "すべて"}, {name: "Tシャツ/カットソー(半袖/袖なし)"}, {name: "Tシャツ/カットソー(七分/長袖)"}, {name: "シャツ"}, {name: "ポロシャツ"}, {name: "タンクトップ"}, {name: "ニット/セーター"}, {name: "パーカー"}, {name: "カーディガン"}, {name: "スウェット"}, {name: "ジャージ"}, {name: "ベスト"}, {name: "その他"}])
man_jacket.children.create([{name: "すべて"}, {name: "テーラードジャケット"}, {name: "ノーカラージャケット"}, {name: "Gジャン/デニムジャケット"}, {name: "レザージャケット"}, {name: "ダウンジャケット"}, {name: "ライダースジャケット"}, , {name: "ミリタリージャケット"}, {name: "ナイロンジャケット"}, {name: "フライトジャケット"}, {name: "ダッフルコート"}, {name: "ピーコート"}, {name: "ステンカラーコート"}, {name: "トレンチコート"}, {name: "モッズコート"}, {name: "チェスターコート"}, {name: "スタジャン"}, {name: "スカジャン"}, {name: "ブルゾン"}, {name: "マウンテンパーカー"}, {name: "ダウンベスト"}, {name: "ポンチョ"}, {name: "カバーオール"}, {name: "その他"}])
man_pants.children.create([{name: "すべて"}, {name: "デニム/ジーンズ"}, {name: "ワークパンツ/カーゴパンツ"}, {name: "スラックス"}, {name: "チノパン"}, {name: "ショートパンツ"}, {name: "ペインターパンツ"}, {name: "サルエルパンツ"}, {name: "オーバーオール"}, {name: "その他"}])
man_.children.create([{name: "すべて"}, {name: "スニーカー"}, {name: "サンダル"}, {name: "ブーツ"}, {name: "モカシン"}, {name: "ドレス/ビジネス"}, {name: "長靴/レインシューズ"}, {name: "デッキシューズ"},  {name: "その他"}])
man_.children.create([{name: "すべて"}, {name: "ショルダーバッグ"}, {name: "トートバッグ"}, {name: "ボストンバッグ"}, {name: "リュック/バックパック"}, {name: "ウエストポーチ"}, {name: "ボディーバッグ"}, {name: "ドラムバッグ"}, {name: "ビジネスバッグ"}, {name: "トラベルバッグ"}, {name: "メッセンジャーバッグ"}, {name: "エコバッグ"}, {name: "その他"}])
man_suits.children.create([{name: "すべて"}, {name: "スーツジャケット"}, {name: "スーツベスト"}, {name: "スラックス"}, {name: "セットアップ"}, {name: "その他"}])
man_boushi.children.create([{name: "すべて"}, {name: "キャップ"}, {name: "ハット"}, {name: "ニットキャップ/ビーニー"}, {name: "ハンチング/ベレー帽"}, {name: "キャスケット"}, {name: "サンバイザー"}, {name: "その他"}])
man_accessory.children.create([{name: "すべて"}, {name: "ネックレス"}, {name: "ブレスレット"}, {name: "バングル/リストバンド"}, {name: "リング"}, {name: "ピアス(片耳用)"}, {name: "ピアス(両耳用)"}, {name: "アンクレット"}, {name: "その他"}])
man_item.children.create([{name: "すべて"}, {name: "長財布"}, {name: "折り財布"}, {name: "マネークリップ"}, {name: "コインケース/小銭入れ"}, {name: "名刺入れ/定期入れ"}, {name: "キーケース"}, {name: "キーホルダー"}, {name: "ネクタイ"}, {name: "手袋"}, {name: "ハンカチ"}, {name: "ベルト"}, {name: "マフラー"}, {name: "ストール"}, {name: "バンダナ"}, {name: "ネックウォーマー"}, {name: "サスペンダー"}, {name: "ウォレットチェーン"}, {name: "サングラス/メガネ"}, {name: "モバイルケース/カバー"}, {name: "手帳"}, {name: "ストラップ"}, {name: "ネクタイピン"}, {name: "カフリンクス"}, {name: "イヤマフラー"}, {name: "傘"}, {name: "レインコート"}, {name: "ミラー"}, {name: "タバコグッズ"}, {name: "その他"}])
man_watch.children.create([{name: "すべて"}, {name: "腕時計(アナログ)"}, {name: "腕時計(デジタル)"}, {name: "ラバーベルト"}, {name: "レザーベルト"}, {name: "金属ベルト"}, {name: "その他"}])
man_bathingsuit.children.create([{name: "すべて"}, {name: "一般水着"}, {name: "スポーツ用"}, {name: "アクセサリー"}, {name: "その他"}])
man_legwear.children.create([{name: "すべて"}, {name: "ソックス"}, {name: "レギンス/スパッツ"}, {name: "レッグウォーマー"}, {name: "その他"}])
man_underwear.children.create([{name: "すべて"}, {name: "トランクス"}, {name: "ボクサーパンツ"}, {name: "その他"}])
man_other.children.create([{name: "すべて"}])

# ベビーの子カテゴリ
baby_all = baby.children.create(name: "すべて")
baby_girlshort = baby.children.create(name: "ベビー服(女の子用) ~95cm")
baby_boyshort = baby.children.create(name: "ベビー服(男の子用) ~95cm")
baby_boygirlshort = baby.children.create(name: "ベビー服(男女兼用) ~95cm")
baby_girltall = baby.children.create(name: "ベビー服(女の子用) 100cm~")
baby_boytall = baby.children.create(name: "ベビー服(男の子用) 100cm~")
baby_boygirltall = baby.children.create(name: "ベビー服(男女兼用) 100cm~")
baby_shoes = baby.children.create(name: "キッズ靴")
baby_item = baby.children.create(name: "子ども用ファッション小物")
baby_toilet = baby.children.create(name: "おむつ/トイレ/バス")
baby_move = baby.children.create(name: "外出/移動用品")
baby_food = baby.children.create(name: "授乳/食事")
baby_interior = baby.children.create(name: "ベビー家具/寝具/室内用品")
baby_toy = baby.children.create(name: "おもちゃ")
baby_event = baby.children.create(name: "行事/記念品")
baby_other = baby.children.create(name: "その他")
# ベビーの孫カテゴリ
baby_girlshort.children.create([{name: "すべて"}, {name: "トップス"}, {name: "アウター"}, {name: "パンツ"}, {name: "スカート"}, {name: "ワンピース"}, {name: "ベビードレス"}, {name: "おくるみ"}, {name: "下着/肌着"}, {name: "パジャマ"}, {name: "その他"}])
baby_boyshort.children.create([{name: "すべて"}, {name: "トップス"}, {name: "アウター"}, {name: "パンツ"}, {name: "おくるみ"}, {name: "下着/肌着"}, {name: "パジャマ"}, {name: "ロンパース"}, {name: "その他"}])
baby_boygirlshort.children.create([{name: "すべて"}, {name: "トップス"}, {name: "アウター"}, {name: "パンツ"}, {name: "おくるみ"}, {name: "下着/肌着"}, {name: "パジャマ"}, {name: "ロンパース"}, {name: "その他"}])
baby_girltall.children.create([{name: "すべて"}, {name: "コート"}, {name: "ジャケット/上着"}, {name: "トップス(Tシャツ/カットソー)"}, {name: "トップス(トレーナー)"}, {name: "トップス(チュニック)"}, {name: "トップス(タンクトップ)"}, {name: "トップス(その他)"}, {name: "スカート"}, {name: "パンツ"}, {name: "ワンピース"}, {name: "セットアップ"}, {name: "パジャマ"}, {name: "フォーマル/ドレス"}, {name: "和服"}, {name: "浴衣"}, {name: "甚平"}, {name: "水着"}, {name: "その他"}])
baby_boytall.children.create([{name: "すべて"}, {name: "コート"}, {name: "ジャケット/上着"}, {name: "トップス(Tシャツ/カットソー)"}, {name: "トップス(トレーナー)"}, {name: "トップス(その他)"}, {name: "パンツ"}, {name: "セットアップ"}, {name: "パジャマ"}, {name: "フォーマル/ドレス"}, {name: "和服"}, {name: "浴衣"}, {name: "甚平"}, {name: "水着"}, {name: "その他"}])
baby_boygirltall.children.create([{name: "すべて"}, {name: "コート"}, {name: "ジャケット/上着"}, {name: "トップス(Tシャツ/カットソー)"}, {name: "トップス(トレーナー)"}, {name: "トップス(その他)"}, {name: "ボトムス"}, {name: "パジャマ"}, {name: "その他"}])
baby_shoes.children.create([{name: "すべて"}, {name: "スニーカー"}, {name: "サンダル"}, {name: "ブーツ"}, {name: "長靴"}, {name: "その他"}])
baby_item.children.create([{name: "すべて"}, {name: "靴下/スパッツ"}, {name: "帽子"}, {name: "エプロン"}, {name: "サスペンダー"}, {name: "タイツ"}, {name: "ハンカチ"}, {name: "バンダナ"}, {name: "ベルト"}, {name: "マフラー"}, {name: "傘"}, {name: "手袋"}, {name: "スタイ"}, {name: "バッグ"}, {name: "その他"}])
baby_toilet.children.create([{name: "すべて"}, {name: "おむつ用品"}, {name: "おまる/補助便座"}, {name: "トレーニングパンツ"}, {name: "ベビーバス"}, {name: "お風呂用品"}, {name: "その他"}])
baby_move.children.create([{name: "すべて"}, {name: "ベビーカー"}, {name: "抱っこひも/スリング"}, {name: "チャイルドシート"}, {name: "その他"}])
baby_food.children.create([{name: "すべて"}, {name: "ミルク"}, {name: "ベビーフード"}, {name: "ベビー用食器"}, {name: "その他"}])
baby_interior.children.create([{name: "すべて"}, {name: "ベッド"}, {name: "布団/毛布"}, {name: "イス"}, {name: "たんす"}, {name: "その他"}])
baby_toy.children.create([{name: "すべて"}, {name: "おふろのおもちゃ"}, {name: "がらがら"}, {name: "オルゴール"}, {name: "ベビージム"}, {name: "手押し車/カタカタ"}, {name: "知育玩具"}, {name: "その他"}])
baby_event.children.create([{name: "すべて"}, {name: "お宮参り用品"}, {name: "お食い初め用品"}, {name: "アルバム"}, {name: "手形/足形"}, {name: "その他"}])
baby_other.children.create([{name: "すべて"}, {name: "母子手帳用品"}, {name: "その他"}])

# 家庭用品の子カテゴリ
home_all =  home.children.create(name: "すべて")
home_kitchen = home.children.create(name: "キッチン/食器")
home_bed = home.children.create(name: "ベッド/マットレス")
home_sofa = home.children.create(name: "ソファ/ソファベッド")
home_chair = home.children.create(name: "椅子/チェア")
home_table = home.children.create(name: "机/テーブル")
home_storage = home.children.create(name: "収納家具")
home_rag = home.children.create(name: "ラグ/カーペット/マット")
home_curtain = home.children.create(name: "カーテン/ブラインド")
home_light = home.children.create(name: "ライト/照明")
home_comforter = home.children.create(name: "寝具")
home_interior = home.children.create(name: "インテリア小物")
home_event = home.children.create(name: "季節/年中行事")
home_other = home.children.create(name: "その他")
# 家庭用品の孫カテゴリ
home_kitchen.children.create([{name: "すべて"}, {name: "食器"}, {name: "調理器具"}, {name: "収納/キッチン雑貨"}, {name: "弁当用品"}, {name: "カトラリー(スプーン等)"}, {name: "テーブル用品"}, {name: "容器"}, {name: "エプロン"}, {name: "アルコールグッズ"}, {name: "浄水機"}, {name: "その他"}])
home_bed.children.create([{name: "すべて"}, {name: "セミシングルベッド"}, {name: "シングルベッド"}, {name: "セミダブルベッド"}, {name: "ダブルベッド"}, {name: "ワイドダブルベッド"}, {name: "クイーンベッド"}, {name: "キングベッド"}, {name: "脚付きマットレスベッド"}, {name: "マットレス"}, {name: "すのこベッド"}, {name: "ロフトベッド/システムベッド"}, {name: "簡易ベッド/折りたたみベッド"}, {name: "収納付き"}, {name: "その他"}])
home_sofa.children.create([{name: "すべて"}, {name: "ソファセット"}, {name: "シングルソファ"}, {name: "ラブソファ"}, {name: "トリプルソファ"}, {name: "オットマン"}, {name: "コーナーソファ"}, {name: "ビーズソファ/クッションソファ"}, {name: "ローソファ/フロアソファ"}, {name: "ソファベッド"}, {name: "応接セット"}, {name: "ソファカバー"}, {name: "リクライニングソファ"}, {name: "その他"}])
home_chair.children.create([{name: "すべて"}, {name: "一般"}, {name: "スツール"}, {name: "ダイニングチェア"}, {name: "ハイバックチェア"}, {name: "ロッキングチェア"}, {name: "座椅子"}, {name: "折り畳みイス"}, {name: "デスクチェア"}, {name: "その他"}])
home_table.children.create([{name: "すべて"}, {name: "こたつ"}, {name: "カウンターテーブル"}, {name: "サイドテーブル"}, {name: "センターテーブル"}, {name: "ダイニングテーブル"}, {name: "座卓/ちゃぶ台"}, {name: "アウトドア用"}, {name: "パソコン用"}, {name: "事務机/学習机"}, {name: "その他"}])
home_storage.children.create([{name: "すべて"}, {name: "リビング収納"}, {name: "キッチン収納"}, {name: "玄関/屋外収納"}, {name: "バス/トイレ収納"}, {name: "本収納"}, {name: "本/CD/DVD収納"}, {name: ""}, {name: "洋服タンス/押入れ収納"}, {name: "電話台/ファックス台"}, {name: "ドレッサー/鏡台"}, {name: "棚/ラック"}, {name: "ケース/ボックス"}, {name: "その他"}])
home_rag.children.create([{name: "すべて"}, {name: "ラグ"}, {name: "カーペット"}, {name: "ホットカーペット"}, {name: "玄関/キッチンマット"}, {name: "トイレ/バスマット"}, {name: "その他"}])
home_curtain.children.create([{name: "すべて"}, {name: "カーテン"}, {name: "ブラインド"}, {name: "ロールスクリーン"}, {name: "のれん"}, {name: "その他"}])
home_light.children.create([{name: "すべて"}, {name: "蛍光灯/電球"}, {name: "天井照明"}, {name: "フロアスタンド"}, {name: "その他"}])
home_comforter.children.create([{name: "すべて"}, {name: "布団/毛布"}, {name: "枕"}, {name: "シーツ/カバー"}, {name: "その他"}])
home_interior.children.create([{name: "すべて"}, {name: "ごみ箱"}, {name: "ウェルカムボード"}, {name: "オルゴール"}, {name: "クッション"}, {name: "クッションカバー"}, {name: "スリッパラック"}, {name: "ティッシュボックス"}, {name: "バスケット/かご"}, {name: "フォトフレーム"}, {name: "マガジンラック"}, {name: "モビール"}, {name: "花瓶"}, {name: "灰皿"}, {name: "傘立て"}, {name: "小物入れ"}, {name: "置時計"}, {name: "掛時計/柱時計"}, {name: "鏡(立て掛け式)"}, {name: "鏡(壁掛け式)"},{name: "置物"}, {name: "風鈴"}, {name: "植物/観葉植物"}, {name: "その他"}])
home_event.children.create([{name: "すべて"}, {name: "正月"}, {name: "成人式"}, {name: "バレンタインデー"}, {name: "ひな祭り"}, {name: "子どもの日"}, {name: "母の日"}, {name: "父の日"}, {name: "サマーギフト/お中元"}, {name: "夏/夏休み"}, {name: "ハロウィン"}, {name: "敬老の日"}, {name: "七五三"}, {name: "お歳暮"}, {name: "クリスマス"}, {name: "冬一般"}, {name: "その他"}])
home_other.children.create(name: "すべて")

# 本の子カテゴリ
book_all = book.children.create(name: "すべて")
book_book = book.children.create(name: "本")
book_manga = book.children.create(name: "漫画")
book_magazine = book.children.create(name: "雑誌")
book_cd = book.children.create(name: "CD")
book_dvd = book.children.create(name: "DVD/ブルーレイ")
book_record = book.children.create(name: "レコード")
book_game = book.children.create(name: "テレビゲーム")
book_other = book.children.create(name: "その他")
# 本の孫カテゴリ
book_book.children.create([{name: "すべて"}, {name: "文学/小説"}, {name: "人文/社会"}, {name: "ノンフィクション/教養"}, {name: "地図/旅行ガイド"}, {name: "ビジネス/経済"}, {name: "健康/医学"}, {name: "コンピュータ/IT"}, {name: "趣味/スポーツ/実用"}, {name: "住まい/暮らし/子育て"}, {name: "アート/エンタメ"}, {name: "洋書"}, {name: "絵本"}, {name: "参考書"}, {name: "その他"}])
book_manga.children.create([{name: "すべて"}, {name: "全巻セット"}, {name: "少年漫画"}, {name: "少女漫画"}, {name: "青年漫画"}, {name: "女性漫画"}, {name: "同人誌"}, {name: "その他"}])
book_magazine.children.create([{name: "すべて"}, {name: "アート/エンタメ/ホビー"}, {name: "ファッション"}, {name: "ニュース/総合"}, {name: "趣味/スポーツ"}, {name: "その他"}])
book_cd.children.create([{name: "すべて"}, {name: "邦楽"}, {name: "洋楽"}, {name: "アニメ"}, {name: "クラシック"}, {name: "K-POP/アジア"}, {name: "キッズ/ファミリー"}, {name: "その他"}])
book_dvd.children.create([{name: "すべて"}, {name: "外国映画"}, {name: "日本映画"}, {name: "アニメ"}, {name: "TVドラマ"}, {name: "ミュージック"}, {name: "お笑い/バラエティ"}, {name: "スポーツ/フィットネス"}, {name: "キッズ/ファミリー"}, {name: "その他"}])
book_record.children.create([{name: "すべて"}, {name: "邦楽"}, {name: "洋楽"}, {name: "その他"}])
book_game.children.create([{name: "すべて"}, {name: "家庭用ゲーム本体"}, {name: "家庭用ゲームソフト"}, {name: "携帯用ゲーム本体"}, {name: "携帯用ゲームソフト"}, {name: "PCゲーム"}, {name: "その他"}])
book_.other.create(name: "その他")

# 趣味の子カテゴリ
hobby_all = hobby.children.create(name: "すべて")
hobby_toy = hobby.children.create(name: "おもちゃ")
hobby_talent = hobby.children.create(name: "タレントグッズ")
hobby_anime = hobby.children.create(name: "コミック/アニメグッズ")
hobby_card = hobby.children.create(name: "トレーディングカード")
hobby_figure = hobby.children.create(name: "フィギュア")
hobby_instrument = hobby.children.create(name: "楽器/器材")
hobby_collection = hobby.children.create(name: "コレクション")
hobby_military = hobby.children.create(name: "ミリタリー")
hobby_art = hobby.children.create(name: "美術品")
hobby_artsupplies = hobby.children.create(name: "アート用品")
hobby_other = hobby.children.create(name: "その他")
# 趣味の孫カテゴリ
hobby_toy.children.create([{name: "すべて"}, {name: "キャラクターグッズ"}, {name: "ぬいぐるみ"}, {name: "小物/アクセサリー"}, {name: "模型/プラモデル"}, {name: "ミニカー"}, {name: "トイラジコン"}, {name: "プラモデル"}, {name: "ホビーラジコン"}, {name: "鉄道模型"}, {name: "その他"}])
hobby_talent.children.create([{name: "すべて"}, {name: "アイドル"}, {name: "ミュージシャン"}, {name: "タレント/お笑い芸人"}, {name: "スポーツ選手"}, {name: "その他"}])
hobby_anime.children.create([{name: "すべて"}, {name: "ストラップ"}, {name: "キーホルダー"}, {name: "バッジ"}, {name: "カード"}, {name: "クリアファイル"}, {name: "ポスター"}, {name: "タオル"}, {name: "その他"}])
hobby_card.children.create([{name: "すべて"}, {name: "遊戯王"}, {name: "マジック：ザ・ギャザリング"}, {name: "ポケモンカードゲーム"}, {name: "デュエルマスターズ"}, {name: "バトルスピリッツ"}, {name: "プリパラ"}, {name: "アイカツ"}, {name: "カードファイト!!ヴァンガード"}, {name: "ヴァイスシュヴァルツ"}, {name: "プロ野球オーナーズリーグ"}, {name: "ベースボールヒーローズ"}, {name: "ドラゴンボール"}, {name: "スリーブ"}, {name: "その他"}])
hobby_figure.children.create([{name: "すべて"}, {name: "コミック/アニメ"}, {name: "特撮"}, {name: "ゲームキャラクター"}, {name: "SF/ファンタジー/ホラー"}, {name: "アメコミ"}, {name: "スポーツ"}, {name: "ミリタリー"}, {name: "その他"}])
hobby_instrument.children.create([{name: "すべて"}, {name: "エレキギター"}, {name: "アコースティックギター"}, {name: "ベース"}, {name: "エフェクター"}, {name: "アンプ"}, {name: "弦楽器"}, {name: "管楽器"}, {name: "鍵盤楽器"}, {name: "打楽器"}, {name: "和楽器"}, {name: "楽譜/スコア"}, {name: "レコーディング/PA機器"}, {name: "DJ機器"}, {name: "DTM/DAW"}, {name: "その他"}])
hobby_collection.children.create([{name: "すべて"}, {name: "武具"}, {name: "使用済切手/官製はがき"}, {name: "旧貨幣/金貨/銀貨/記念硬貨"}, {name: "印刷物"}, {name: "ノベルティグッズ"}, {name: "その他"}])
hobby_military.children.create([{name: "すべて"}, {name: "トイガン"}, {name: "個人装備"}, {name: "その他"}])
hobby_art.children.create([{name: "すべて"}, {name: "陶芸"}, {name: "ガラス"}, {name: "漆芸"}, {name: "金属工芸"}, {name: "絵画/タペストリ"}, {name: "版画"}, {name: "彫刻/オブジェクト"}, {name: "書"}, {name: "写真"}, {name: "その他"}])
hobby_artsupplies.children.create([{name: "すべて"}, {name: "画材"}, {name: "額縁"}, {name: "その他"}])
hobby_other.children.create([{name: "すべて"}, {name: "トランプ/UNO"}, {name: "カルタ/百人一首"}, {name: "ダーツ"}, {name: "ビリヤード"}, {name: "麻雀"}, {name: "パズル/ジグソーパズル"}, {name: "囲碁/将棋"}, {name: "オセロ/チェス"}, {name: "人生ゲーム"}, {name: "野球/サッカーゲーム"}, {name: "スポーツ"}, {name: "三輪車/乗り物"}, {name: "ヨーヨー"}, {name: "模型製作用品"}, {name: "鉄道"}, {name: "航空機"}, {name: "アマチュア無線"}, {name: "パチンコ/パチスロ"}, {name: "その他"}])

# 美容の子カテゴリ
beauty_all = beauty.children.create(name: "すべて")
beauty_base = beauty.children.create(name: "ベースメイク")
beauty_makeup = beauty.children.create(name: "メイクアップ")
beauty_nail = beauty.children.create(name: "ネイルケア")
beauty_perfume = beauty.children.create(name: "香水")
beauty_skin = beauty.children.create(name: "スキンケア/基礎化粧品")
beauty_hair = beauty.children.create(name: "ヘアケア")
beauty_body = beauty.children.create(name: "ボディケア")
beauty_oral = beauty.children.create(name: "オーラルケア")
beauty_relax = beauty.children.create(name: "リラクゼーション")
beauty_diet = beauty.children.create(name: "ダイエット")
beauty_other = beauty.children.create(name: "その他")
# 美容の孫カテゴリ
beauty_base.children.create([{name: "すべて"}, {name: "ファンデーション"}, {name: "化粧下地"}, {name: "コントロールカラー"}, {name: "BBクリーム"}, {name: "CCクリーム"}, {name: "コンシーラー"}, {name: "フェイスパウダー"}, {name: "トライアルセット/サンプル"}, {name: "その他"}])
beauty_makeup.children.create({name: "すべて"}, [{name: "アイシャドウ"}, {name: "口紅"}, {name: "リップグロス"}, {name: "リップライナー"}, {name: "チーク"}, {name: "フェイスカラー"}, {name: "マスカラ"}, {name: "アイライナー"}, {name: "つけまつげ"}, {name: "アイブロウペンシル"}, {name: "パウダーアイブロウ"}, {name: "眉マスカラ"}, {name: "トライアルセット/サンプル"}, {name: "メイク道具/化粧小物"}, {name: "美顔用品/美顔ローラー"}, {name: "その他"}])
beauty_nail.children.create({name: "すべて"}, [{name: "ネイルカラー"}, {name: "カラージェル"}, {name: "ネイルベースコート/トップコート"}, {name: "ネイルアート用品"}, {name: "ネイルパーツ"}, {name: "ネイルチップ/付け爪"}, {name: "手入れ用具"}, {name: "除光液"}, {name: "その他"}])
beauty_perfume.children.create({name: "すべて"}, [{name: "香水(女性用)"}, {name: "香水(男性用)"}, {name: "ユニセックス"}, {name: "ボディミスト"}, {name: "その他"}])
beauty_skin.children.create({name: "すべて"}, [{name: "化粧水/ローション"}, {name: "乳液/ミルク"}, {name: "美容液"}, {name: "フェイスクリーム"}, {name: "洗顔料"}, {name: "クレンジング/メイク落とし"}, {name: "パック/フェイスマスク"}, {name: "ジェル/ゲル"}, {name: "ブースター/導入液"}, {name: "アイケア"}, {name: "リップケア"}, {name: "トライアルセット/サンプル"}, {name: "洗顔グッズ"}, {name: "その他"}])
beauty_hair.children.create({name: "すべて"}, [{name: "シャンプー"}, {name: "トリートメント"}, {name: "コンディショナー"}, {name: "リンス"}, {name: "スタイリング剤"}, {name: "カラーリング剤"}, {name: "ブラシ"}, {name: "その他"}])
beauty_body.children.create({name: "すべて"}, [{name: "オイル/クリーム"}, {name: "ハンドクリーム"}, {name: "ローション"}, {name: "日焼け止め/サンオイル"}, {name: "ボディソープ"}, {name: "入浴剤"}, {name: "制汗/デオドラント"}, {name: "フットケア"}, {name: "その他"}])
beauty_oral.children.create({name: "すべて"}, [{name: "口臭防止/エチケット用品"}, {name: "歯ブラシ"}, {name: "その他"}])
beauty_relax.children.create({name: "すべて"}, [{name: "エッセンシャルオイル"}, {name: "芳香器"}, {name: "お香/香炉"}, {name: "キャンドル"}, {name: "リラクゼーショングッズ"}, {name: "その他"}])
beauty_diet.children.create({name: "すべて"}, [{name: "ダイエット食品"}, {name: "エクササイズ用品"}, {name: "体重計"}, {name: "体脂肪計"}, {name: "その他"}])
beauty_other.children.create([{name: "すべて"}, {name: "健康用品"}, {name: "看護/介護用品"}, {name: "救急/衛生用品"}, {name: "その他"}])

# 家電の子カテゴリ
appliance_all = appliance.children.create(name: "すべて")
appliance_phone = appliance.children.create(name: "スマートフォン/携帯電話")
appliance_phaccessary = appliance.children.create(name: "スマホアクセサリー")
appliance_pc = appliance.children.create(name: "PC/タブレット")
appliance_camera = appliance.children.create(name: "カメラ")
appliance_tv = appliance.children.create(name: "テレビ/映像機器")
appliance_audio = appliance.children.create(name: "オーディオ機器")
appliance_beauty = appliance.children.create(name: "美容/健康")
appliance_ac = appliance.children.create(name: "冷暖房/空調")
appliance_life = appliance.children.create(name: "生活家電")
appliance_other = appliance.children.create(name: "その他")
# 家電の孫カテゴリ
appliance_phone.children.create([{name: "すべて"}, {name: "スマートフォン本体"}, {name: "バッテリー/充電器"}, {name: "携帯電話本体"}, {name: "PHS本体"}, {name: "その他"}])
appliance_phaccessary.children.create([{name: "すべて"}, {name: "Android用ケース"}, {name: "iPhone用ケース"}, {name: "カバー"}, {name: "イヤホンジャック"}, {name: "ストラップ"}, {name: "フィルム"}, {name: "自撮り棒"}, {name: "その他"}])
appliance_pc.children.create([{name: "すべて"}, {name: "タブレット"}, {name: "ノートPC"}, {name: "デスクトップ型PC"}, {name: "ディスプレイ"}, {name: "電子ブックリーダー"}, {name: "PC周辺機器"}, {name: "PCパーツ"}, {name: "その他"}])
appliance_camera.children.create([{name: "すべて"}, {name: "デジタルカメラ"}, {name: "ビデオカメラ"}, {name: "レンズ(単焦点)"}, {name: "レンズ(ズーム)"}, {name: "フィルムカメラ"}, {name: "防犯カメラ"}, {name: "その他"}])
appliance_tv.children.create([{name: "すべて"}, {name: "プロジェクター"}, {name: "ブルーレイレコーダー"}, {name: "DVDレコーダー"}, {name: "ブルーレイプレーヤー"}, {name: "DVDプレーヤー"}, {name: "映像用ケーブル"}, {name: "その他"}])
appliance_audio.children.create([{name: "すべて"}, {name: "ポータブルプレーヤー"}, {name: "イヤフォン"}, {name: "ヘッドフォン"}, {name: "アンプ"}, {name: "スピーカー"}, {name: "ケーブル/シールド"}, {name: "ラジオ"}, {name: "その他"}])
appliance_beauty.children.create([{name: "すべて"}, {name: "ヘアドライヤー"}, {name: "ヘアアイロン"}, {name: "美容機器"}, {name: "電気シェーバー"}, {name: "電動歯ブラシ"}, {name: "その他"}])
appliance_ac.children.create([{name: "すべて"}, {name: "エアコン"}, {name: "空気清浄器"}, {name: "加湿器"}, {name: "扇風機"}, {name: "除湿機"}, {name: "ファンヒーター"}, {name: "電気ヒーター"}, {name: "オイルヒーター"}, {name: "ストーブ"}, {name: "ホットカーペット"}, {name: "こたつ"}, {name: "電気毛布"}, {name: "その他"}])
appliance_life.children.create([{name: "すべて"}, {name: "冷蔵庫"}, {name: "洗濯機"}, {name: "炊飯器"}, {name: "電子レンジ/オーブン"}, {name: "調理機器"}, {name: "アイロン"}, {name: "掃除機"}, {name: "エスプレッソマシン"}, {name: "コーヒーメーカー"}, {name: "衣類乾燥機"}, {name: "その他"}])
appliance_other.children.create([{name: "すべて"},{name: "その他"}])

# スポーツの子カテゴリ
sports_all = sports.children.create(name: "すべて")
sport_golf = sport.children.create(name: "ゴルフ")
sport_fishing = sport.children.create(name: "フィッシング")
sport_bicycle = sport.children.create(name: "自転車")
sport_training = sport.children.create(name: "トレーニング/エクササイズ")
sport_baseball = sport.children.create(name: "野球")
sport_soccer = sport.children.create(name: "サッカー/フットサル")
sport_tennis = sport.children.create(name: "テニス")
sport_snowboard = sport.children.create(name: "スノーボード")
sport_ski = sport.children.create(name: "スキー")
sport_othersport = sport.children.create(name: "その他スポーツ")
sport_outdoor = sport.children.create(name: "アウトドア")
sport_other = sport.children.create(name: "その他")
# スポーツの孫カテゴリ
sport_golf.children.create([{name: "すべて"}, {name: "クラブ"}, {name: "ウエア(男性用)"}, {name: "ウエア(女性用)"}, {name: "バッグ"}, {name: "シューズ(男性用)"}, {name: "シューズ(女性用)"}, {name: "アクセサリー"}, {name: "その他"}])
sport_fishing.children.create([{name: "すべて"}, {name: "ロッド"}, {name: "リール"}, {name: "ルアー用品"}, {name: "ウエア"}, {name: "釣り糸/ライン"}, {name: "その他"}])
sport_bicycle.children.create([{name: "すべて"}, {name: "自転車本体"}, {name: "ウエア"}, {name: "パーツ"}, {name: "アクセサリー"}, {name: "バッグ"}, {name: "工具/メンテナンス"}, {name: "その他"}])
sport_training.children.create([{name: "すべて"}, {name: "ランニング"}, {name: "ウォーキング"}, {name: "ヨガ"}, {name: "トレーニング用品"}, {name: "その他"}])
sport_baseball.children.create([{name: "すべて"}, {name: "ウェア"}, {name: "シューズ"}, {name: "グローブ"}, {name: "バット"}, {name: "アクセサリー"}, {name: "防具"}, {name: "練習機器"}, {name: "記念グッズ"}, {name: "応援グッズ"}, {name: "その他"}])
sport_soccer.children.create([{name: "すべて"}, {name: "ウェア"}, {name: "シューズ"}, {name: "ボール"}, {name: "アクセサリー"}, {name: "記念グッズ"}, {name: "応援グッズ"}, {name: "その他"}])
sport_tennis.children.create([{name: "すべて"}, {name: "ラケット(硬式用)"}, {name: "ラケット(軟式用)"}, {name: "ウェア"}, {name: "シューズ"}, {name: "ボール"}, {name: "アクセサリー"}, {name: "記念グッズ"}, {name: "応援グッズ"}, {name: "その他"}])
sport_snowboard.children.create([{name: "すべて"}, {name: "ボード"}, {name: "バインディング"}, {name: "ブーツ(男性用)"}, {name: "ブーツ(女性用)"}, {name: "ブーツ(子ども用)"}, {name: "ウエア/装備(男性用)"}, {name: "ウエア/装備(女性用)"}, {name: "ウエア/装備(子ども用)"}, {name: "アクセサリー"}, {name: "バッグ"}, {name: ""}, {name: "その他"}])
sport_ski.children.create([{name: "すべて"}, {name: "板"}, {name: "ブーツ(男性用)"}, {name: "ブーツ(女性用)"}, {name: "ブーツ(子ども用)"}, {name: "ビンディング"}, {name: "ウエア(男性用)"}, {name: "ウエア(女性用)"}, {name: "ウエア(子ども用)"}, {name: "ストック"}, {name: "その他"}])
sport_othersport.children.create([{name: "すべて"}, {name: "ダンス/バレエ"}, {name: "サーフィン"}, {name: "バスケットボール"}, {name: "バドミントン"}, {name: "バレーボール"}, {name: "スケートボード"}, {name: "陸上競技"}, {name: "ラグビー"}, {name: "アメリカンフットボール"}, {name: "ボクシング"}, {name: "ボウリング"}, {name: "その他"}])
sport_outdoor.children.create([{name: "すべて"}, {name: "テント/タープ"}, {name: "ライト/ランタン"}, {name: "寝袋/寝具"}, {name: "テーブル/チェア"}, {name: "ストーブ/コンロ"}, {name: "調理器具"}, {name: "食器"}, {name: "登山用品"}, {name: "その他"}])
sport_other.children.create([{name: "すべて"}, {name: "旅行用品"}, {name: "その他"}])

# ハンドメイドの子カテゴリ
handmade_all = handmade.children.create(name: "すべて")
handmade_accessorylady = handmade.children.create(name: "アクセサリー(女性用)")
handmade_item = handmade.children.create(name: "ファッション/小物")
handmade_accessory = handmade.children.create(name: "アクセサリー/時計")
handmade_interior = handmade.children.create(name: "日用品/インテリア")
handmade_hobby = handmade.children.create(name: "趣味/おもちゃ")
handmade_baby = handmade.children.create(name: "キッズ/ベビー")
handmade_material = handmade.children.create(name: "素材/材料")
handmade_character = handmade.children.create(name: "二次創作物")
handmade_other = handmade.children.create(name: "その他")
# ハンドメイドの孫カテゴリ
handmade_accessorylady.children.create([{name: "すべて"}, {name: "ピアス"}, {name: "イヤリング"}, {name: "ネックレス"}, {name: "ブレスレット"}, {name: "リング"}, {name: "チャーム"}, {name: "ヘアゴム"}, {name: "アンクレット"}, {name: "その他"}])
handmade_item.children.create([{name: "すべて"}, {name: "バッグ(女性用)"}, {name: "バッグ(男性用)"}, {name: "財布(女性用)"}, {name: "財布(男性用)"}, {name: "ファッション雑貨"}, {name: "その他"}])
handmade_accessory.children.create([{name: "すべて"}, {name: "アクセサリー(男性用)"}, {name: "時計(女性用)"}, {name: "時計(男性用)"}, {name: "その他"}])
handmade_interior.children.create([{name: "すべて"}, {name: "キッチン用品"}, {name: "家具"}, {name: "文房具"}, {name: "アート/写真"}, {name: "アロマ/キャンドル"}, {name: "フラワー/ガーデン"}, {name: "その他"}])
handmade_hobby.children.create([{name: "すべて"}, {name: "クラフト/布製品"}, {name: "おもちゃ/人形"}, {name: "その他"}])
handmade_baby.children.create([{name: "すべて"}, {name: "ファッション雑貨"}, {name: "スタイ/よだれかけ"}, {name: "外出用品"}, {name: "ネームタグ"}, {name: "その他"}])
handmade_material.children.create([{name: "すべて"}, {name: "各種パーツ"}, {name: "生地/糸"}, {name: "型紙/パターン"}, {name: "その他"}])
handmade_character.children.create([{name: "すべて"}, {name: "Ingress"}, {name: "クリエイターズ宇宙兄弟"}, {name: "シンデレラガールズCPグッズ"}, {name: "その他"}])
handmade_other.children.create([name: "すべて"])

# チケットの子カテゴリ
ticket_all = ticket.children.create(name: "すべて")
ticket_music = ticket.children.create(name: "音楽")
ticket_sport = ticket.children.create(name: "スポーツ")
ticket_show = ticket.children.create(name: "演劇/芸能")
ticket_event = ticket.children.create(name: "イベント")
ticket_movie = ticket.children.create(name: "映画")
ticket_facility = ticket.children.create(name: "施設利用券")
ticket_discount = ticket.children.create(name: "優待券/割引券")
ticket_other = ticket.children.create(name: "その他")
# チケットの孫カテゴリ
ticket_music.children.create([{name: "すべて"}, {name: "男性アイドル"}, {name: "女性アイドル"}, {name: "韓流"}, {name: "国内アーティスト"}, {name: "海外アーティスト"}, {name: "音楽フェス"}, {name: "声優/アニメ"}, {name: "その他"}])
ticket_sport.children.create([{name: "すべて"}, {name: "サッカー"}, {name: "野球"}, {name: "テニス"}, {name: "格闘技/プロレス"}, {name: "相撲/武道"}, {name: "ゴルフ"}, {name: "バレーボール"}, {name: "バスケットボール"}, {name: "モータースポーツ"}, {name: "ウィンタースポーツ"}, {name: "その他"}])
ticket_show.children.create([{name: "すべて"}, {name: "ミュージカル"}, {name: "演劇"}, {name: "伝統芸能"}, {name: "落語"}, {name: "お笑い"}, {name: "オペラ"}, {name: "サーカス"}, {name: "バレエ"}, {name: "その他"}])
ticket_event.children.create([{name: "すべて"}, {name: "声優/アニメ"}, {name: "キッズ/ファミリー"}, {name: "トークショー/講演会"}, {name: "その他"}])
ticket_movie.children.create([{name: "すべて"}, {name: "邦画"}, {name: "洋画"}, {name: "その他"}])
ticket_facility.children.create([{name: "すべて"}, {name: "遊園地/テーマパーク"}, {name: "美術館/博物館"}, {name: "スキー場"}, {name: "ゴルフ場"}, {name: "フィットネスクラブ"}, {name: "プール"}, {name: "ボウリング場"}, {name: "水族館"}, {name: "動物園"}, {name: "その他"}])
ticket_discount.children.create([{name: "すべて"}, {name: "ショッピング"}, {name: "レストラン/食事券"}, {name: "フード/ドリンク券"}, {name: "宿泊券"}, {name: "その他"}])
ticket_other.children.create([name: "すべて"])

# 自動車の子カテゴリ
mobile_all = mobile.children.create(name: "すべて")
mobile_car = mobile.children.create(name: "自動車本体")
mobile_tire = mobile.children.create(name: "自動車タイヤ/ホイール")
mobile_parts = mobile.children.create(name: "自動車パーツ")
mobile_caraccessory = mobile.children.create(name: "自動車アクセサリー")
mobile_bike = mobile.children.create(name: "オートバイ車体")
mobile_bikeparts = mobile.children.create(name: "オートバイパーツ")
mobile_bikeaccessory = mobile.children.create(name: "オートバイアクセサリー")
mobile_other = mobile.children.create(name: "その他")
# 自動車の孫カテゴリ
mobile_car.children.create([{name: "すべて"}, {name: "国内自動車本体"}, {name: "外国自動車本体"}, {name: "タイヤ/ホイールセット"}, {name: "タイヤ"}, {name: "ホイール"}, {name: "その他"}])
mobile_tire.children.create([{name: "すべて"}, {name: "タイヤ/ホイールセット"}, {name: "タイヤ"}, {name: "ホイール"}, {name: "その他"}])
mobile_parts.children.create([{name: "すべて"}, {name: "サスペンション"}, {name: "ブレーキ"}, {name: "外装、エアロパーツ"}, {name: "ライト"}, {name: "内装品、シート"}, {name: "ステアリング"}, {name: "マフラー・排気系"}, {name: "エンジン、過給器、冷却装置"}, {name: "クラッチ、ミッション、駆動系"}, {name: "電装品"}, {name: "補強パーツ"}, {name: "汎用パーツ"}, {name: "外国自動車用パーツ"}, {name: "その他"}])
mobile_caraccessory.children.create([{name: "すべて"}, {name: "車内アクセサリー"}, {name: "カーナビ"}, {name: "カーオーディオ"}, {name: "車外アクセサリー"}, {name: "メンテナンス用品"}, {name: "チャイルドシート"}, {name: "ドライブレコーダー"}, {name: "レーダー探知機"}, {name: "カタログ/マニュアル"}, {name: "セキュリティ"}, {name: "ETC"}, {name: "その他"}])
mobile_bike.children.create(name: "すべて")
mobile_bikeparts.children.create([{name: "すべて"}, {name: "タイヤ"}, {name: "マフラー"}, {name: "エンジン、冷却装置"}, {name: "カウル、フェンダー、外装"}, {name: "サスペンション"}, {name: "ホイール"}, {name: "シート"}, {name: "ブレーキ"}, {name: "タンク"}, {name: "ライト、ウィンカー"}, {name: "チェーン、スプロケット、駆動系"}, {name: "メーター"}, {name: "電装系"}, {name: "ミラー"}, {name: "外国オートバイ用パーツ"}, {name: "その他"}])
mobile_bikeaccessory.children.create([{name: "すべて"}, {name: "ヘルメット/シールド"}, {name: "バイクウエア/装備"}, {name: "アクセサリー"}, {name: "メンテナンス"}, {name: "カタログ/マニュアル"}, {name: "その他"}])

# その他の子カテゴリ
other_all = other.children.create(name: "すべて")
other_matome = other.children.create(name: "まとめ売り")
other_pet = other.children.create(name: "ペット用品")
other_food = other.children.create(name: "食品")
other_drink = other.children.create(name: "飲料/酒")
other_life = other.children.create(name: "日用品/生活雑貨/旅行")
other_collection = other.children.create(name: "アンティーク/コレクション")
other_stationery = other.children.create(name: "文房具/事務用品")
other_office = other.children.create(name: "事務/店舗用品")
other_other = other.children.create(name: "その他")
# その他の孫カテゴリ
other_matome.children.create(name: "すべて")
other_pet.children.create([{name: "すべて"}, {name: "ペットフード"}, {name: "犬用品"}, {name: "猫用品"}, {name: "魚用品/水草"}, {name: "小動物用品"}, {name: "爬虫類/両生類用品"}, {name: "かご/おり"}, {name: "鳥用品"}, {name: "虫類用品"}, {name: "その他"}])
other_food.children.create([{name: "すべて"}, {name: "菓子"}, {name: "米"}, {name: "野菜"}, {name: "果物"}, {name: "調味料"}, {name: "魚介類(加工食品)"}, {name: "肉類(加工食品)"}, {name: "その他 加工食品"}, {name: "その他"}])
other_drink.children.create([{name: "すべて"}, {name: "コーヒー"}, {name: "ソフトドリンク"}, {name: "ミネラルウォーター"}, {name: "茶"}, {name: "ウイスキー"}, {name: "ワイン"}, {name: "ブランデー"}, {name: "焼酎"}, {name: "日本酒"}, {name: "ビール、発泡酒"}, {name: "その他"}])
other_life.children.create([{name: "すべて"}, {name: "タオル/バス用品"}, {name: "日用品/生活雑貨"}, {name: "洗剤/柔軟剤"}, {name: "旅行用品"}, {name: "防災関連グッズ"}, {name: "その他"}])
other_collection.children.create([{name: "すべて"}, {name: "雑貨"}, {name: "工芸品"}, {name: "家具"}, {name: "印刷物"}, {name: "その他"}])
other_stationery.children.create([{name: "すべて"}, {name: "筆記具"}, {name: "ノート/メモ帳"}, {name: "テープ/マスキングテープ"}, {name: "カレンダー/スケジュール"}, {name: "アルバム/スクラップ"}, {name: "ファイル/バインダー"}, {name: "はさみ/カッター"}, {name: "カードホルダー/名刺管理"}, {name: "のり/ホッチキス"}, {name: "その他"}])
other_office.children.create([{name: "すべて"}, {name: "オフィス用品一般"}, {name: "オフィス家具"}, {name: "店舗用品"}, {name: "OA機器"}, {name: "ラッピング/包装"}, {name: "その他"}])
other_other.children.create(name: "すべて")