## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |


### Association

- has_many :teams
- has_many :comments

##  teamsテーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| name           | string     | null: false                    |
| city           | integer    | null: false                    |
| message        | text       | null: false                    |
| representative | integer    | null: false                    |
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