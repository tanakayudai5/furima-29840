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

# users table

| Column           | Type   | Options     |
| ---------------- | ------ | ----------- |
| name             | string | null: false |
| email            | string | null: false |
| password         | string | null: false |
| first_name       | string | null: false |
| firstkana_name   | string | null: fales |
| last_name        | string | null: fales |
| lastkana_name    | string | null: fales |
| birth_date       | string | null: fales |

### Association

- has_many :item
- has_one :adderes
- has_one :purchase

## items table

| Column                  | Type   | Options     |
| ----------------------- | ------ | ----------- |
| img_upload              | string | null: fales |
| title                   | string | null: fales |
| item_description_column | string | null: fales |
| category                | string | null: fales |
| condition               | string | null: fales |
| price                   | string | null: fales |

### Association

- belongs_to :user
- belongs_to :adderes
- has_one :purchase

## adderess table

| Column                  | Type   | Options     |
| ----------------------- | ------ | ----------- |
| post                    | string | null: fales |
| prefecture              | string | null: fales |
| city                    | string | null: fales |
| town                    | string | null: fales |
| building                | string | null: fales |
| telephone_number        | string | null: fales |

### Association

- belongs_to :user
- has_one :purchase
- has_many :item

## purchases table

| Column                  | Type   | Options     |
| ----------------------- | ------ | ----------- |
| card_number             | string | null: fales |

### Association

- belongs_to :user
- belongs_to :adderes
- belongs_to :item