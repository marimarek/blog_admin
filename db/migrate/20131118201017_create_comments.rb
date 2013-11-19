class CreateComments < ActiveRecord::Migration
  def change
	drop_table :comments
	
    create_table :comments do |t|
      t.integer :post_id
      t.text :text
      t.string :user_name

      t.timestamps
    end
  end
end
