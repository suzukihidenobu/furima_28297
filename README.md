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
|birthday|date|null:false|
|email|string|null:false,unique:true|
|password|string|null:false|

### Association
- has_many : product_informations
- has_many : comments

## product_informations
|Colum|Type|Option|
|-----|----|------|
|image|text|null:false|
|name|string|null:false|
|category_name|string|null:false|
|item_condition|text|null:false|
|delivery_burden|integer|null:false|
|shipping_area|string|null:false|
|shipping_days|integer|null:false|
|price|integer|null:false|

### Association
- belongs_to :user

## comments
|Colum|Type|Option|
|-----|----|------|
|coment|text｜null : false|

### Association
- belomgs_to : usr
- has_many : purchase_confirmations


## purchase_confirmations
|Colum|Type|Option|
|-----|----|------|
|postal code|integer|null:false|
|prefectures|string|null:false|
|city|string|null:false|
|address|string|null:false|
|building_name|text|null:false|
|phone|string|null:false|

### Association



* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
