class CreatePostsTable < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string :title
      t.integer :user_id
      t.text :body

      t.timestamps
    end
  end

  def down
    drop_table :posts
  end
end