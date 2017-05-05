class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :body

      t.timestamps
      t.belongs_to :article
      t.belongs_to :user
    end
  end
end
