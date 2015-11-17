class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :given_url, null: false
      t.string :shorten_link
      t.integer :clicks, default: 0
      t.string :title

      t.timestamps null: false
    end
  end
end
