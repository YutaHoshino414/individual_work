## コーディネート投稿サービス「フクオタ (仮)」  

## 概要
好きなファッションコーディネートを投稿しよう。 自分のファッションアイテムを投稿し合い、また投稿アイテムを購入することができます。 「フクオタ」はファッション好きである開発者が、 自分の好きなものを通して他者と繋がれるサービスをと考え、開発したアプリケーションです。

## コンセプト
ファッションコーディネート投稿に、投稿したアイテムを購入できる決済機能を設ける

<img width="1317" alt="スクリーンショット 2021-02-22 5 28 44" src="https://user-images.githubusercontent.com/72447845/109145614-0bbacc80-77a6-11eb-9ca5-dd7db3453938.png">


[Heroku(現在、アプリにてエラー発生中の為、修復中)](https://serene-bayou-03832.herokuapp.com/)  



## バージョン
Ruby 2.6.5  
Rails 5.2.4  
Postgresql 13.1  

## 機能一覧  
1. ログイン機能  
2. ユーザー登録機能  
3. 商品CRUD機能
- 商品一覧／新規／詳細／編集／削除  

4. お気に入り機能  
5. 商品検索機能  
6. ユーザープロフィール表示機能  
7. ユーザープロフィール編集機能  
8. follow/follower機能 
9. コメント機能  
10. 決済機能  

## カタログ設計・テーブル定義・ER図
https://docs.google.com/spreadsheets/d/1L5IFdtJMzKekG42WCRQJ5YKxfZDxXSBOcUfzevUKWmU/edit?usp=sharing

## 画面遷移図
https://docs.google.com/spreadsheets/d/1L5IFdtJMzKekG42WCRQJ5YKxfZDxXSBOcUfzevUKWmU/edit#gid=1848311508

## 画面ワイヤーフレーム
https://docs.google.com/spreadsheets/d/1PgXZ6hOSO1C821nfnIec9rnZby0APlSHUbaVPbKgChc/edit#gid=0

## 使用予定Gem

- device  
- Pay.jp  
- ancestry  
- ransack  
- active_hash
- kaminari  
- bootstrap4  
- jquery-rails
- dotenv-rails
- unicorn/capistrano  

（猶予があれば）  
- omniauth 
- omniauth-google-oauth2  
- gretel  

## 使用予定技術  
- [PAY.JP (BASE, Inc.)_オンライン決済サービスAPI](https://pay.jp/)

（猶予があれば）  
- Active_strage + S3 （または、herokuの場合:cloudinary）
- zipcloud

## 課題要件
* 就業Termから２つ以上の技術  
  * フォロー/フォロワー機能
  * device
    
- カリキュラム外から１つ以上の技術  
  - Ancestry（多階層カテゴリを設ける）
