class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :description
      t.string :director
      t.integer :rating
    end
  end
end
