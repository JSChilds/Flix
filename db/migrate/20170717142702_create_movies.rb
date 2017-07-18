class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.belongs_to :user, index: true
      t.string :title
      t.integer :year
      t.string :description
      t.string :director
      t.integer :rating
    end
  end
end
