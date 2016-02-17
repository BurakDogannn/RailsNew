class AddCategorysIdToArtiles < ActiveRecord::Migration
  def change
  	add_column :articles,:category_id,:integer
  	add_index :articles,:category_id
  	add_foreign_key :categories,:articles
  end
end
