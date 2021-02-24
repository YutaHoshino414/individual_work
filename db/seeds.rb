@count = 1
10.times do |n|
  @username = "test#{@count}"
  email = "#{@username}@hoge.com"
  password = "password"
  @user = User.create!(
    email: email,
    password: password,
    password_confirmation: password,
  )

  10.times do |n|
  username = "#{@username}"
   user_id = @user.id
     Profile.create!(
       username: username,
       user_id: user_id
     )
  end
  @count += 1
end

@count = 1
@id = 5
10.times do |n|
  name = "テストアイテム#{@count}"
  # brand = 
  category_id ="#{@id}"
  user_id ="#{@id}"
    Item.create!(
      name: name,
      brand:"ノーブランド",
      status:1,
      delivery_from:1,
      price:2000,
      content:"テスト投稿",
      category_id: category_id,
      user_id: user_id
    )
  @count += 1
  @id += 1
end

#カテゴリーデータ
# # 親階層
# lady                         = Category.create(name: "レディース")
# men                          = Category.create(name: "メンズ")
# baby_kids                    = Category.create(name: "キッズ")

# # 子階層_レディース
# lady_1  = lady.children.create(name: "トップス")
# lady_2  = lady.children.create(name: "ジャケット/アウター")
# lady_3  = lady.children.create(name: "パンツ")
# lady_4  = lady.children.create(name: "スカート")
# lady_5  = lady.children.create(name: "ワンピース")
# lady_6  = lady.children.create(name: "靴")
# lady_7  = lady.children.create(name: "ルームウェア/パジャマ")
# lady_8  = lady.children.create(name: "レッグウェア")
# lady_9  = lady.children.create(name: "帽子")
# lady_10 = lady.children.create(name: "バッグ")
# lady_11 = lady.children.create(name: "アクセサリー")
# lady_12 = lady.children.create(name: "ヘアアクセサリー")
# lady_13 = lady.children.create(name: "小物")
# lady_14 = lady.children.create(name: "時計")
# lady_15 = lady.children.create(name: "ウィッグ/エクステ")
# lady_16 = lady.children.create(name: "浴衣/水着")
# lady_17 = lady.children.create(name: "スーツ/フォーマル/ドレス")
# lady_18 = lady.children.create(name: "マタニティ")
# lady_19 = lady.children.create(name: "その他")

# # 孫階層_レディース
# lady_1.children.create([{name: "Tシャツ/カットソー(半袖/袖なし)"},{name: "Tシャツ/カットソー(七分/長袖)"},{name: "シャツ/ブラウス(半袖/袖なし)"},{name: "シャツ/ブラウス(七分/長袖)"},{name: "ポロシャツ"},{name: "キャミソール"},{name: "タンクトップ"},{name: "ホルターネック"},{name: "ニット/セーター"},{name: "チュニック"},{name: "カーディガン/ボレロ"},{name: "アンサンブル"},{name: "ベスト/ジレ"},{name: "パーカー"},{name: "トレーナー/スウェット"},{name: "ベアトップ/チューブトップ"},{name: "ジャージ"},{name: "その他"}])
# lady_2.children.create([{name: "テーラードジャケット"},{name: "ノーカラージャケット"},{name: "Gジャン/デニムジャケット"},{name: "レザージャケット"},{name: "ダウンジャケット"},{name: "ライダースジャケット"},{name: "ミリタリージャケット"},{name: "ダウンベスト"},{name: "ジャンパー/ブルゾン"},{name: "ポンチョ"},{name: "ロングコート"},{name: "トレンチコート"},{name: "ダッフルコート"},{name: "ピーコート"},{name: "チェスターコート"},{name: "モッズコート"},{name: "スタジャン"},{name: "毛皮/ファーコート"},{name: "スプリングコート"},{name: "スカジャン"},{name: "その他"}])
# lady_3.children.create([{name: "デニム/ジーンズ"},{name: "ショートパンツ"},{name: "カジュアルパンツ"},{name: "ハーフパンツ"},{name: "チノパン"},{name: "ワークパンツ/カーゴパンツ"},{name: "クロップドパンツ"},{name: "サロペット/オーバーオール"},{name: "オールインワン"},{name: "サルエルパンツ"},{name: "ガウチョパンツ"},{name: "その他"}])
# lady_4.children.create([{name: "ミニスカート"},{name: "ひざ丈スカート"},{name: "ロングスカート"},{name: "キュロット"},{name: "その他"}])
# lady_5.children.create([{name: "ミニワンピース"},{name: "ひざ丈ワンピース"},{name: "ロングワンピース"},{name: "その他"}])
# lady_6.children.create([{name: "ハイヒール/パンプス"},{name: "ブーツ"},{name: "サンダル"},{name: "スニーカー"},{name: "ミュール"},{name: "モカシン"},{name: "ローファー/革靴"},{name: "フラットシューズ/バレエシューズ"},{name: "長靴/レインシューズ"},{name: "その他"}])
# lady_7.children.create([{name: "パジャマ"},{name: "ルームウェア"}])
# lady_8.children.create([{name: "ソックス"},{name: "スパッツ/レギンス"},{name: "ストッキング/タイツ"},{name: "レッグウォーマー"},{name: "その他"}])
# lady_9.children.create([{name: "ニットキャップ/ビーニー"},{name: "ハット"},{name: "ハンチング/ベレー帽"},{name: "キャップ"},{name: "キャスケット"},{name: "麦わら帽子"},{name: "その他"}])
# lady_10.children.create([{name: "ハンドバッグ"},{name: "トートバッグ"},{name: "エコバッグ"},{name: "リュック/バックパック"},{name: "ボストンバッグ"},{name: "スポーツバッグ"},{name: "ショルダーバッグ"},{name: "クラッチバッグ"},{name: "ポーチ/バニティ"},{name: "ボディバッグ/ウェストバッグ"},{name: "マザーズバッグ"},{name: "メッセンジャーバッグ"},{name: "ビジネスバッグ"},{name: "旅行用バッグ/キャリーバッグ"},{name: "ショップ袋"},{name: "和装用バッグ"},{name: "かごバッグ"},{name: "その他"}])
# lady_11.children.create([{name: "ネックレス"},{name: "ブレスレット"},{name: "バングル/リストバンド"},{name: "リング"},{name: "ピアス(片耳用)"},{name: "ピアス(両耳用)"},{name: "イヤリング"},{name: "アンクレット"},{name: "ブローチ/コサージュ"},{name: "チャーム"},{name: "その他"}])
# lady_12.children.create([{name: "ヘアゴム/シュシュ"},{name: "ヘアバンド/カチューシャ"},{name: "ヘアピン"},{name: "その他"}])
# lady_13.children.create([{name: "長財布"},{name: "折り財布"},{name: "コインケース/小銭入れ"},{name: "名刺入れ/定期入れ"},{name: "キーケース"},{name: "キーホルダー"},{name: "手袋/アームカバー"},{name: "ハンカチ"},{name: "ベルト"},{name: "マフラー/ショール"},{name: "ストール/スヌード"},{name: "バンダナ/スカーフ"},{name: "ネックウォーマー"},{name: "サスペンダー"},{name: "サングラス/メガネ"},{name: "モバイルケース/カバー"},{name: "手帳"},{name: "イヤマフラー"},{name: "傘"},{name: "レインコート/ポンチョ"},{name: "ミラー"},{name: "タバコグッズ"},{name: "その他"}])
# lady_14.children.create([{name: "腕時計(アナログ)"},{name: "腕時計(デジタル)"},{name: "ラバーベルト"},{name: "レザーベルト"},{name: "金属ベルト"},{name: "その他"}])
# lady_15.children.create([{name: "前髪ウィッグ"},{name: "ロングストレート"},{name: "ロングカール"},{name: "ショートストレート"},{name: "ショートカール"},{name: "その他"}])
# lady_16.children.create([{name: "浴衣"},{name: "着物"},{name: "振袖"},{name: "長襦袢/半襦袢"},{name: "水着セパレート"},{name: "水着ワンピース"},{name: "水着スポーツ用"},{name: "その他"}])
# lady_17.children.create([{name: "スカートスーツ上下"},{name: "パンツスーツ上下"},{name: "ドレス"},{name: "パーティーバッグ"},{name: "シューズ"},{name: "ウェディング"},{name: "その他"}])
# lady_18.children.create([{name: "トップス"},{name: "アウター"},{name: "インナー"},{name: "ワンピース"},{name: "パンツ/スパッツ"},{name: "スカート"},{name: "パジャマ"},{name: "授乳服"},{name: "その他"}])
# lady_19.children.create([{name: "コスプレ"},{name: "下着"},{name: "その他"}])

# # 子階層_メンズ
# men_1  = men.children.create(name: "トップス")
# men_2  = men.children.create(name: "ジャケット/アウター")
# men_3  = men.children.create(name: "パンツ")
# men_4  = men.children.create(name: "靴")
# men_5  = men.children.create(name: "バッグ")
# men_6  = men.children.create(name: "スーツ")
# men_7  = men.children.create(name: "帽子")
# men_8  = men.children.create(name: "アクセサリー")
# men_9  = men.children.create(name: "小物")
# men_10 = men.children.create(name: "時計")
# men_11 = men.children.create(name: "水着")
# men_12 = men.children.create(name: "レッグウェア")
# men_13 = men.children.create(name: "アンダーウェア")
# men_14 = men.children.create(name: "その他")

# # 孫階層_メンズ
# men_1.children.create([{name: "Tシャツ/カットソー(半袖/袖なし)"},{name: "Tシャツ/カットソー(七分/長袖)"},{name: "シャツ"},{name: "ポロシャツ"},{name: "タンクトップ"},{name: "ニット/セーター"},{name: "パーカー"},{name: "カーディガン"},{name: "スウェット"},{name: "ジャージ"},{name: "ベスト"},{name: "その他"}])
# men_2.children.create([{name: "テーラードジャケット"},{name: "ノーカラージャケット"},{name: "Gジャン/デニムジャケット"},{name: "レザージャケット"},{name: "ダウンジャケット"},{name: "ライダースジャケット"},{name: "ミリタリージャケット"},{name: "ナイロンジャケット"},{name: "フライトジャケット"},{name: "ダッフルコート"},{name: "ピーコート"},{name: "ステンカラーコート"},{name: "トレンチコート"},{name: "モッズコート"},{name: "チェスターコート"},{name: "スタジャン"},{name: "スカジャン"},{name: "ブルゾン"},{name: "マウンテンパーカー"},{name: "ダウンベスト"},{name: "ポンチョ"},{name: "カバーオール"},{name: "その他"}])
# men_3.children.create([{name: "デニム/ジーンズ"},{name: "ワークパンツ/カーゴパンツ"},{name: "スラックス"},{name: "チノパン"},{name: "ショートパンツ"},{name: "ペインターパンツ"},{name: "サルエルパンツ"},{name: "オーバーオール"},{name: "その他"}])
# men_4.children.create([{name: "スニーカー"},{name: "サンダル"},{name: "ブーツ"},{name: "モカシン"},{name: "ドレス/ビジネス"},{name: "長靴/レインシューズ"},{name: "デッキシューズ"},{name: "その他"}])
# men_5.children.create([{name: "ショルダーバッグ"},{name: "トートバッグ"},{name: "ボストンバッグ"},{name: "リュック/バックパック"},{name: "ウエストポーチ"},{name: "ボディーバッグ"},{name: "ドラムバッグ"},{name: "ビジネスバッグ"},{name: "トラベルバッグ"},{name: "メッセンジャーバッグ"},{name: "エコバッグ"},{name: "その他"}])
# men_6.children.create([{name: "スーツジャケット"},{name: "スーツベスト"},{name: "スラックス"},{name: "セットアップ"},{name: "その他"}])
# men_7.children.create([{name: "キャップ"},{name: "ハット"},{name: "ニットキャップ/ビーニー"},{name: "ハンチング/ベレー帽"},{name: "キャスケット"},{name: "サンバイザー"},{name: "その他"}])
# men_8.children.create([{name: "ネックレス"},{name: "ブレスレット"},{name: "バングル/リストバンド"},{name: "リング"},{name: "ピアス(片耳用)"},{name: "ピアス(両耳用)"},{name: "アンクレット"},{name: "その他"}])
# men_9.children.create([{name: "長財布"},{name: "折り財布"},{name: "マネークリップ"},{name: "コインケース/小銭入れ"},{name: "名刺入れ/定期入れ"},{name: "キーケース"},{name: "キーホルダー"},{name: "ネクタイ"},{name: "手袋"},{name: "ハンカチ"},{name: "ベルト"},{name: "マフラー"},{name: "ストール"},{name: "バンダナ"},{name: "ネックウォーマー"},{name: "サスペンダー"},{name: "ウォレットチェーン"},{name: "サングラス/メガネ"},{name: "モバイルケース/カバー"},{name: "手帳"},{name: "ストラップ"},{name: "ネクタイピン"},{name: "カフリンクス"},{name: "イヤマフラー"},{name: "傘"},{name: "レインコート"},{name: "ミラー"},{name: "タバコグッズ"},{name: "その他"}])
# men_10.children.create([{name: "腕時計(アナログ)"},{name: "腕時計(デジタル)"},{name: "ラバーベルト"},{name: "レザーベルト"},{name: "金属ベルト"},{name: "その他"}])
# men_11.children.create([{name: "一般水着"},{name: "スポーツ用"},{name: "アクセサリー"},{name: "その他"}])
# men_12.children.create([{name: "ソックス"},{name: "レギンス/スパッツ"},{name: "レッグウォーマー"},{name: "その他"}])
# men_13.children.create([{name: "トランクス"},{name: "ボクサーパンツ"},{name: "その他"}])
# men_14.children.create([{name: "すべて"}])

# # 子階層_ベビー・キッズ
# baby_kids_1  = baby_kids.children.create(name: "ベビー服(女の子用) ~95cm")
# baby_kids_2  = baby_kids.children.create(name: "ベビー服(男の子用) ~95cm")
# baby_kids_3  = baby_kids.children.create(name: "ベビー服(男女兼用) ~95cm")
# baby_kids_4  = baby_kids.children.create(name: "キッズ服(女の子用) 100cm~")
# baby_kids_5  = baby_kids.children.create(name: "キッズ服(男の子用) 100cm~")
# baby_kids_6  = baby_kids.children.create(name: "キッズ服(男女兼用) 100cm~")
# baby_kids_7  = baby_kids.children.create(name: "キッズ靴")
# baby_kids_8  = baby_kids.children.create(name: "子ども用ファッション小物")
# baby_kids_9 = baby_kids.children.create(name: "その他")

# # 孫階層_ベビー・キッズ
# baby_kids_1.children.create([{name: "トップス"},{name: "アウター"},{name: "パンツ"},{name: "スカート"},{name: "ワンピース"},{name: "ベビードレス"},{name: "おくるみ"},{name: "下着/肌着"},{name: "パジャマ"},{name: "ロンパース"},{name: "その他"}])
# baby_kids_2.children.create([{name: "トップス"},{name: "アウター"},{name: "パンツ"},{name: "おくるみ"},{name: "下着/肌着"},{name: "パジャマ"},{name: "ロンパース"},{name: "その他"}])
# baby_kids_3.children.create([{name: "トップス"},{name: "アウター"},{name: "パンツ"},{name: "おくるみ"},{name: "下着/肌着"},{name: "パジャマ"},{name: "ロンパース"},{name: "その他"}])
# baby_kids_4.children.create([{name: "コート"},{name: "ジャケット/上着"},{name: "トップス(Tシャツ/カットソー)"},{name: "トップス(トレーナー)"},{name: "トップス(チュニック)"},{name: "トップス(タンクトップ)"},{name: "トップス(その他)"},{name: "スカート"},{name: "パンツ"},{name: "ワンピース"},{name: "セットアップ"},{name: "パジャマ"},{name: "フォーマル/ドレス"},{name: "和服"},{name: "浴衣"},{name: "甚平"},{name: "水着"},{name: "その他"}])
# baby_kids_5.children.create([{name: "コート"},{name: "ジャケット/上着"},{name: "トップス(Tシャツ/カットソー)"},{name: "トップス(トレーナー)"},{name: "トップス(その他)"},{name: "パンツ"},{name: "セットアップ"},{name: "パジャマ"},{name: "フォーマル/ドレス"},{name: "和服"},{name: "浴衣"},{name: "甚平"},{name: "水着"},{name: "その他"}])
# baby_kids_6.children.create([{name: "コート"},{name: "ジャケット/上着"},{name: "トップス(Tシャツ/カットソー)"},{name: "トップス(トレーナー)"},{name: "トップス(その他)"},{name: "ボトムス"},{name: "パジャマ"},{name: "その他"}])
# baby_kids_7.children.create([{name: "スニーカー"},{name: "サンダル"},{name: "ブーツ"},{name: "長靴"},{name: "その他"}])
# baby_kids_8.children.create([{name: "靴下/スパッツ"},{name: "帽子"},{name: "エプロン"},{name: "サスペンダー"},{name: "タイツ"},{name: "ハンカチ"},{name: "バンダナ"},{name: "ベルト"},{name: "マフラー"},{name: "傘"},{name: "手袋"},{name: "スタイ"},{name: "バッグ"},{name: "その他"}])
# baby_kids_9.children.create([{name: "その他"}])