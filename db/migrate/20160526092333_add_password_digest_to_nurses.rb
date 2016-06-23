class AddPasswordDigestToNurses < ActiveRecord::Migration
  def change
    add_column :nurses, :password_digest, :string
  end
end
