class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.integer :description, null: false, default: 0
      t.integer :upvotes, null: false, default: 0
      t.integer :downvotes, null: false, default: 0
      t.boolean :is_bloggable, null: false, default: false
      t.timestamps
    end
  end
end