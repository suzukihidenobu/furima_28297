# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

## users Table

|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|mail|string|null:false,unique:true|
|password|text|null:false|

### Association
- has_many :groups,though::members
- has_many :messages
- has_many :members

## groups_Table

|Coulmn|Type|Options|
|------|----|-------|
|name|string|null:false|

### Association
- has_many :users,through::members
- has_many :messages
- has_many :members

## members_Table

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group

### messages_Table

|Colmn|Type|Options|
|-----|----|-------|
|text|text|
|image|text|
|group_id|integer|null:false,foreign_key:true|
|user_id|integer|null:false,foreign_key:true|

### Association
- belongs_to:user
- belomgs_to:group 

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
