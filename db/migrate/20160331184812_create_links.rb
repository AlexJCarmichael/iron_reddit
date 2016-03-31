class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title, null: false
      t.string :body, null: false
      t.integer :user_id, null: false, index: true

      t.timestamps null: false
    end
    add_foreign_key :links, :users
  end
end
