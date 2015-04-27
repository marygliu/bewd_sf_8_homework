class AddDetailsToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :author_id, :integer
    add_column :articles, :publisher_id, :integer
  end
end
