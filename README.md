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
- has_many : items

## items
|Column|Type|Options|
|------|----|-------|
|image|text|null:false|
|name|string|null:false|
|price|integer|null:false|
|stock|string|null:false|
|category_name|integer|null:false|
|condition|integer|null:false|
|delivery_burden|integer|null:false|
|shipping_area|integer|null:false|
|shipping_days|integer|null:false|

### Association
- belongs_to : user
- has_many : product_informations
- has_many : addres


## Purchase
|Colum|Type|Option|
|-----|----|------|
|coment|text|null : false|
|user_id|string|null : false|
|item_id|string|null : false|

### Association
- belomgs_to : usr
- has_many : address


## address
|Colum|Type|Option|
|-----|----|------|
|postal_code|string|null:false|
|prefectures|integr|null:false|
|city|string|null:false|
|address|string|null:false|
|building_name|text|
|phone|string|null:false|

### Association
- belomgs_to : Purchase
- belomgs_to : product_informations


* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
