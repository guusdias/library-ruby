class CreateAdmins < ActiveRecord::Migration[7.2]
  def change
    create_table :admins do |t|
      t.string :email
      t.string :name
      t.string :password_hash

      t.timestamps
    end
  end
end
