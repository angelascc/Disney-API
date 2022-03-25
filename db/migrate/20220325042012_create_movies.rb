class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :image
      t.string :title
      t.string :date
      t.string :rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
