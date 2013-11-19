class CreatePosts < ActiveRecord::Migration
  def change
	drop_table :posts
  
    create_table :posts do |t|
      t.string :tittle
      t.text :text
      t.integer :category_id

      t.timestamps
    end
  end
end
