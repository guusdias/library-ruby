class CreateOrderMains < ActiveRecord::Migration[7.2]
  def change
    create_table :order_mains do |t|
      t.references :user, null: false, foreign_key: true
      t.decimal :total
      t.string :status

      t.timestamps
    end
  end
end
