# アプリ名
草野球チームのメンバー募集サイト Play Ball !

# 概要
草野球チームのメンバー募集を案内することができる
メンバー募集をしているチームを探すことができる

# 本番環境
https://playball-31947.herokuapp.com/

ログイン情報（テスト用）  
・Eメール：  
・パスワード：

# 制作背景
草野球チームを運営している友人から、頻繁に「◯月◯日の試合のメンバーが足りないから、助っ人で参加してくれないか」と連絡が来ている時期があった。聞くところによると、その友人のチームは最近メンバーが減ってしまい困っていることがわかった。そこで、気軽にメンバー募集が案内できるサイトがあれば、その課題を解決できるのではないかと思い作成して見ることにした。

# DEMO
## トップページ
[![Image from Gyazo](https://i.gyazo.com/05750c699b4a36ff48e6b619cb6bde18.jpg)](https://gyazo.com/05750c699b4a36ff48e6b619cb6bde18)

## 新規投稿画面
[![Image from Gyazo](https://i.gyazo.com/65e5db50b329d2ff1a7247418dcbb2f5.png)](https://gyazo.com/65e5db50b329d2ff1a7247418dcbb2f5)

## チーム詳細画面
[![Image from Gyazo](https://i.gyazo.com/266ad1652f1cde4b67500a7932bb46d7.png)](https://gyazo.com/266ad1652f1cde4b67500a7932bb46d7)

# 工夫したポイント
・所属の市町村がわかるようにした  
・所属している市町村ごとのチームを一括表示させる検索機能を実装した  
・チームの雰囲気がわかるように画像投稿機能を実装した  
・気軽に質問等できるようにコメント機能を実装した  

# 使用環境
## バックエンド
Ruby, Ruby on Rails

## フロントエンド
HTML, CSS

## データベース
MySQL, SequelPro

## インフラ
heroku

## ソース管理
GitHub, GitHubDesktop

## テスト
RSpec

## エディタ
VSCode

# 今後実装したい機能
・ユーザー情報表示機能で選手としてのプロフィールを表示させる  
・所属の市町村の数を増やす

# DB
## users テーブル
| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association
has_many :teams
has_many :comments

## teamsテーブル
| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| name           | string     | null: false                    |
| city_id        | integer    | null: false                    |
| message        | text       | null: false                    |
| representative | string     | null: false                    |
| email          | string     | null: false                    |
| user           | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :comments

## comments テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| messages | text       | null: false,                   |
| user     | references | null: false, foreign_key: true |
| team     | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :team

[![Image from Gyazo](https://i.gyazo.com/2d2ba87b0c7ecafe810060a2f47ca55c.png)](https://gyazo.com/2d2ba87b0c7ecafe810060a2f47ca55c)