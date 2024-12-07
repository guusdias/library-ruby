class CreateBooks < ActiveRecord::Migration[7.2]
  def change
    create_table :books do |t|
      t.string :name
      t.string :description
      t.string :image
      t.integer :stock
      t.decimal :price
      t.string :author

      t.timestamps
    end
  end
end
