class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id, null: false, index: true
      t.integer :link_id, null: false, index: true
      t.string :body, null: false

      t.timestamps null: false
    end
    add_foreign_key :comments, :users
    add_foreign_key :comments, :links
  end
end
