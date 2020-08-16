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
|nick_name|string|null:false|
|last_name|string|null:false|
|first_name|string|null:false|
|last_name_kana|string|null:false|
|first_name_kana|string|null:false|
|birthday|integer|null:fales|
|email|string|null:false,unique:true|
|password|string|null:false|

### Association
- has_many : product_informations
- has_many : comments

## product_informations
|Colum|Type|Option|
|-----|----|------|
|image|text|null:false, foreign_key: true|
|name|string|null:false, foreign_key: true|
|category_name|string|null:false, foreign_key: true|
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
|coment|text｜null : false,foreign_key : true|

### Association
- belomgs_to : usr
- has_many : purchase_confirmations


## purchase_confirmations
|Colum|Type|Option|
|-----|----|------|
|creadit|integer|null:false,foreign_key: true, unique:true|
|expiration_date|integer|null:false,foreign_key: true|
|security|integer|null:false,foreign_key: true|
|postal code|integer|null:false,foreign_key: true|
|prefectures|string|null:false,foreign_key: true|
|city|string|null:false,foreign_key: true|
|address|integer|null:false,foreign_key: true|
|building_name|text|null:false,foreign_key: true|
|phon|integer|null:false,foreign_key: true|

### Association
- belongs_to :comment


* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
