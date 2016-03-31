class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :user_id, null: false, index: true
      t.integer :link_id, null: false, index: true
      t.integer :positive, null: false
      t.integer :negative, null: false

      t.timestamps null: false
    end
    add_foreign_key :votes, :users
    add_foreign_key :votes, :links
  end
end
