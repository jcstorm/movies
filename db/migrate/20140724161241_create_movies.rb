class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :movie_url
      t.string :image_url

      t.timestamps
    end
  end
end
