class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.text       :title, null: false
      t.text       :phonetic
      t.integer    :value
      t.date       :release
      t.text       :image
      t.references :author, foreign_key: true
      t.references :series, foreign_key: true
      t.references :publisher, foreign_key: true
      t.timestamps
    end
  end
end
