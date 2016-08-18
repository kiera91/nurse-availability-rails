class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :nurse_id, :nurse
      t.integer :event_id, primary_key: true
      t.datetime :date
      t.boolean :confirmed
      t.string :shift
    end
  end
end
