class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.integer :rating
      t.string :poster_url

      t.timestamps
    end
  end
end
