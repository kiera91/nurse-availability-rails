class CreateNurses < ActiveRecord::Migration
  def change
    create_table :nurses do |t|
      t.string :full_name
      t.string :email_address
      t.string :phone_number
      t.boolean :authorized
	  t.string :password_digest, null: true
      t.timestamps null: false
    end
  end
end
