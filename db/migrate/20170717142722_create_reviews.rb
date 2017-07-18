class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.belongs_to :user, index: true
      t.belongs_to :movie, index: true
      t.string :comment
      t.integer :score
      t.boolean :judgement
    end
  end
end
