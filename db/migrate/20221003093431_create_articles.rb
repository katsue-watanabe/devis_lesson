class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :articles, :title, null: false
      t.text :articles, :content, null: false
      t.string :articles, :image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
