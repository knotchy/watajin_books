class CreateSeries < ActiveRecord::Migration[5.2]
  def change
    create_table :series do |t|
      t.text       :series_name, null: false
      t.references :author, foreign_key: true, null: false
      t.references :publisher, foreign_key: true

      t.timestamps
    end
  end
end
