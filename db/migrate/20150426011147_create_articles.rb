class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :shares
      t.text :image
      t.string :short_url
      t.text :excerpt

      t.timestamps null: false
    end
  end
end
