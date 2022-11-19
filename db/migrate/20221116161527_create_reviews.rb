class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :vibes
      t.integer :neatness
      t.integer :responsible
      t.integer :friendly
      t.integer :foodthief
      t.string :comment
      t.integer :roommate_id
    end
  end
end
