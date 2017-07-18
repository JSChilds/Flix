class CreateUserMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :user_movies do |t|
      t.belongs_to :user, index: true
      t.belongs_to :movie, index: true
    end
  end
end
