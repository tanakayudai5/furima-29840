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
| firstkana_name   | string | null: false |
| last_name        | string | null: false |
| lastkana_name    | string | null: false |
| birthday         | date   | null: false |

### Association

- has_many :items
- has_many :purchases

## items table

| Column                  | Type       | Options     |
| ----------------------- | ---------- | ----------- |
| title                   | string     | null: false |
| description             | text       | null: false |
| category_id             | integer    | null: false |
| condition_id            | integer    | null: false |
| price                   | integer    | null: false |
| delivery_id             | integer    | null: false |
| region_id               | integer    | null: false |
| days_to_ship_id         | integer    | null: false |
| user                    | references | null: false, foreign_key: true|

### Association

- belongs_to :user
- has_one :purchase

## adderess table

| Column                  | Type    | Options     |
| ----------------------- | ------  | ----------- |
| post                    | string  | null: false |
| prefecture_id           | integer | null: false |
| city                    | string  | null: false |
| town                    | string  | null: false |
| building                | string  |             |
| telephone_number        | string  | null: false |
| purchase                | references | null: false, foreign_key: true|

### Association

- belongs_to :purchase

## purchases table

| Column                  | Type   | Options     |
| ----------------------- | ------ | ----------- |
| user                    | references | null: false, foreign_key: true|
| item                    | references | null: false, foreign_key: true|

### Association

- belongs_to :user
- has_one :adderess
- belongs_to :item