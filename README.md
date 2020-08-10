# 本・著者・レビュー・シリーズ・出版社

## books table

|Column|Type|Options|
|------|----|-------|
|title        |text      |null: false, index: true|
|phonetic     |text      | |
|value        |integer   |null: false|
|release      |date      | |
|image        |text      | |
|author_id    |references|null: false, foreign_key: true|
|series_id    |references|foreign_key: true|
|publisher_id |references|null: false, foreign_key: true|

### Association
- belongs_to :author
- belongs_to :series
- belongs_to :publisher
- has_many :reviews


## author table
|Column|Type|Options|
|------|----|-------|
|name    |string|null: false|
|phonetic|string| |

### Association
- has_many :books
- has_many :series


## review table
|Column|Type|Options|
|------|----|-------|
|pen_name   |text      |null: false, default: '匿名'|
|review_text|text      |null: false|
|book_id    |references|null: false, foreign_key: true|

### Association
- belongs_to :book


## series table
|Column|Type|Options|
|------|----|-------|
|series_name |text      |null: false|
|author_id   |references|null: false, foreign_key: true|
|publisher_id|references|foreign_key: true|

### Association
- has_many :books
- belongs_to :author
- belongs_to :publisher


## publisher table
|Column|Type|Options|
|------|----|-------|
|publisher_name|text|null: false|

### Association
- has_many :books
- has_many :series
