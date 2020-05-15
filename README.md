# comic-quotes DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many :quotes
- has_many :comments

## quotesテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|title|string||
|name|string||
|user|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :comments

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|string|null: false|
|user|references|null: false, foreign_key: true|
|quote|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :quote
