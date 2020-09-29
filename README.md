# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## users table

| Column           | Type   | Options     |
| ---------------- | ------ | ----------- |
| name             | string | null: false |
| email            | string | null: false |
| password         | string | null: false |
| first_name       | string | null: false |
| firstkana_name   | string | null: fales |
| last_name        | string | null: fales |
| lastkana_name    | string | null: fales |
| "yyyy/MM/dd"     | string | null: fales |

### Association

- has_many :items
- has_many :purchases

## items table

| Column                  | Type       | Options     |
| ----------------------- | ---------- | ----------- |
| title                   | string     | null: fales |
| item_description_column | text       | null: fales |
| category_id             | integer    | null: false, foreign_key: true|
| condition_id            | integer    | null: false, foreign_key: true|
| price                   | string     | null: fales |
| delivery_id             | integer    | null: false, foreign_key: true|
| region_id               | integer    | null: false, foreign_key: true|
| days_to_ship_id         | integer    | null: false, foreign_key: true|
| user_id                 | references | null: false, foreign_key: true|

### Association

- belongs_to :user
- has_one :purchase

## adderess table

| Column                  | Type    | Options     |
| ----------------------- | ------  | ----------- |
| post                    | string  | null: fales |
| prefecture_id           | integer | null: false, foreign_key: true|
| city                    | string  | null: fales |
| town                    | string  | null: fales |
| building                | string  |             |
| telephone_number        | string  | null: fales |
| purchase_id             | integer | null: false, foreign_key: true|

### Association

- belongs_to :purchase

## purchases table

| Column                  | Type   | Options     |
| ----------------------- | ------ | ----------- |
| user_id                 | references | null: false, foreign_key: true|
| item_id                 | references | null: false, foreign_key: true|

### Association

- belongs_to :user
- has_one :adderes
- belongs_to :item