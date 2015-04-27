class AddUrlToPublishers < ActiveRecord::Migration
  def change
    add_column :publishers, :url, :text
  end
end
