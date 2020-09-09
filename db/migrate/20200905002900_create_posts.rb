class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.belongs_to :User, null: false, foreign_key: true
      t.belongs_to :Tag, null: false, foreign_key: true
      t.belongs_to :Anime, null: false, foreign_key: true
      t.timestamps
    end
  end
end
