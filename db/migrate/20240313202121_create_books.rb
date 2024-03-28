class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.text :description
      t.string :cover_image_url
      t.decimal :rental_price
      t.boolean :available_for_rent
      t.string :condition
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
