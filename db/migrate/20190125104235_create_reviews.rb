class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text       :pen_name
      t.text       :review_text, null: false
      t.references :book, foreign_key: true, null: false

      t.timestamps
    end
  end
end
