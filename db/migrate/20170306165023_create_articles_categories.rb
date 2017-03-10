class CreateArticlesCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :articles_categories , :id=> false  do |t|
    	t.references :article
    	t.references :category
    end
  end

  def self.dow
  	drop_table :articles_categories
  end
end
