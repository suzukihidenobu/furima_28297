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

### Association
- belongs_to : user
- has_many : product_informations

## product_informations
|Colum|Type|Option|
|-----|----|------|
|image|text|null:false|
|name|string|null:false|
|category_name|string|null:false|
|condition|integer|null:false|
|delivery_burden|integer|null:false|
|shipping_area|integer|null:false|
|shipping_days|integer|null:false|
|price|integer|null:false|

### Association
- belongs_to : item


## comments
|Colum|Type|Option|
|-----|----|------|
|coment|text｜null : false|

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
|building_name|text|null:false|
|phone|integer|null:false|

### Association
- belomgs_to : comment


* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
