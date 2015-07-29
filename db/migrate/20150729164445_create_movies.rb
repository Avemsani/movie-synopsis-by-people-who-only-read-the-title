class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :url
      t.string :title
      t.string :caption

      t.timestamps
    end
  end
end
