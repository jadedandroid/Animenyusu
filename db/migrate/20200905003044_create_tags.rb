class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.string :context
      t.belongs_to :User, null: false, foreign_key: true
      t.belongs_to :Anime, null: false, foreign_key: true

      t.timestamps
    end
  end
end
