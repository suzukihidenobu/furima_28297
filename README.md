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
|first_name|string|null:false|
|last_name|string|null:false|
|first_name_kana|string|null:false|
|last_name_kana|string|null:false|
|birthday|date|null:false|
|email|string|null:false,unique:true|
|password|string|null:false|

### Association
- has_many : items
- has_many : purchases

## items
|Column|Type|Options|
|------|----|-------|
|image|string|null:false|
|name|string|null:false|
|explanation|text|null:false|
|price|integer|null:false|
|category_name|integer|null:false|
|condition|integer|null:false|
|delivery_burden|integer|null:false|
|shipping_area|integer|null:false|
|shipping_days|integer|null:false|
|user_id|integer|null:false , foreign_key:true|

### Association
- has_one : purchase
- belongs_to : user

## purchases
|Colum|Type|Option|
|-----|----|------|
|user_id|inreger|null:false , foreign_key: true|
|item_id|integer|null:false , foreign_key: true|

### Association
- has_one : address
- belongs_to : user
- belongs_to : item

## addresses
|Colum|Type|Option|
|-----|----|------|
|postal_code|string|null:false|
|prefectures|integer|null:false|
|city|string|null:false|
|address|string|null:false|
|building_name|string|
|phone|string|null:false|
|purchase_id|integer|null:false , foreign_key: true|

### Association
- belomgs_to : purchase



* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
