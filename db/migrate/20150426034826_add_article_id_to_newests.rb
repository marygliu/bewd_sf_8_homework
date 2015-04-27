class AddArticleIdToNewests < ActiveRecord::Migration
  def change
    add_column :newests, :article_id, :integer
  end
end
