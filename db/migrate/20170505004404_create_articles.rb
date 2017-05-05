class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :headline
      t.string :img
      t.text :text
      t.string :tags
      t.string :category
      t.boolean :published

      t.timestamps
    end
  end
end
