class CreateRitlies < ActiveRecord::Migration
  def change
    create_table :ritlies do |t|
      t.string :link
      t.integer :hash_code

      t.timestamps null: false
    end
  end
end
