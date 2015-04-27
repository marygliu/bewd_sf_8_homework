class AddArticleIdToTrendings < ActiveRecord::Migration
  def change
    add_column :trendings, :article_id, :integer
  end
end
