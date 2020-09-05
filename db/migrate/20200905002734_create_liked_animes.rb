class CreateLikedAnimes < ActiveRecord::Migration[6.0]
  def change
    create_table :liked_animes do |t|
      t.belongs_to :anime, null: false, foreign_key: true
      t.belongs_to :User, null: false, foreign_key: true

      t.timestamps
    end
  end
end
