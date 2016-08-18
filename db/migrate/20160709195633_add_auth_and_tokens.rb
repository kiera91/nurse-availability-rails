class AddAuthAndTokens < ActiveRecord::Migration
def change
  change_table :nurses do |t|
    t.string :api_authtoken
      t.datetime :authtoken_expiry
  end
end
end
