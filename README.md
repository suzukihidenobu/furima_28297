# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

## users_Table
|Column|Type|Options|
|------|----|-------|
|nickname|string|null:false|
|last_name|string|null:false|
|first_name|string|null:false|
|last_name_kana|string|null:false|
|first_name_kana|string|null:false|
|birthday|integer|null:fales|
|email|string|null:false,unique:true|
|password|string|null:false|

### Association
- has_many :product_informations
- has_many :product_comments

## product_informations
|Colum|Type|Option|
|-----|----|------|
|image|text|null:false, foreign_key: true|
|name|string|null:false, foreign_key: true|
|categry_name|string|null:false, foreign_key: true|
|item_name|text|null:false, foreign_key: true|
|delivery_burden|integer|null:false, foreign_key: true|
|shipping_area|string|null:false, foreign_key: true|
|shipping_days|integer|null:false,foreign_key: true|
|price|integer|null:false,foreign_key: true|

### Association
- belongs_to :user

## comments
|Colum|Type|Option|
|-----|----|------|
|coment|text｜null:false,foreign_key: true|

### Association
- belomgs_to :usr
- has_many :product_informations


## purchase_confimation
|Colum|Type|Option|
|-----|----|------|
|creadit|null:false,foreign_key: true, unique:true|
|expriation_date|null:false,foreign_key: true|
|security|null:false,foreign_key: true|
|postal code|null:false,foreign_key: true|
|prefectures|null:false,foreign_key: true|
|city|null:false,foreign_key: true|
|address|null:false,foreign_key: true|
|building_name|null:false,foreign_key: true|
|phon|null:false,foreign_key: true|

### Association
- belongs_to :comments


* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
