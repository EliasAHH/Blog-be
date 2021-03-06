class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content 
      t.integer :likes, default: 0
      t.integer :author_id

      t.timestamps
    end
  end
end
