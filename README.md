# アプリケーション概要
- 「メルカリ」のクローンアプリ

# 機能概要

# DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|
|password_confirmation|string|null: false|
|last_name|string|null: false|
|first_name|string|null: false|
|last_name_kana|string|null: false|
|first_name_kana|string|null: false|
|birthday|date|null: false|

### Association
- has_many :items
- has_one :user_address
- has_one :card
- has_one :sns_credential

## user_addressesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|last_name|string|null: false|
|first_name|string|null: false|
|last_name_kana|string|null: false|
|first_name_kana|string|null: false|
|postal_code|integer|null: false|
|prefecture|integer|null: false|
|city|string|null: false|
|address|string|null: false|
|building|string||
|telephone|integer||

### Association
- belongs_to :user

## sns_credentialsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|provider|string|null: false|

### Association
- belongs_to :user

## cardsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|costomer_id|string|null: false|
|card_id|string|null: false|

### Association
- belongs_to :user

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|seller_id|references|null: false, foreign_key: true|
|name|string|null: false|
|description|text|null: false|
|category_id|references|null: false, foreign_key: true|
|size|integer||
|brand_id|references|foreign_key: true|
|condition|integer|null: false|
|postage_burden|integer|null: false|
|sending_method|integer|null: false|
|prefecture_from|integer|null: false|
|shipping_date|integer|null: false|
|price|integer|null: false|
|status|integer|null: false|
|buyer_id|references|foreign_key: true|

### Association
- belongs_to :user
- has_many :images, dependent: :destroy
- belongs_to :brand
- belongs_to :category

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|references|null: false, foreign_key: true|
|image|string|null: false|

### Association
- belongs_to :item

## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :items

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|ancestry|string|index: true|

### Association
- has_many :items
- has_ancestry
