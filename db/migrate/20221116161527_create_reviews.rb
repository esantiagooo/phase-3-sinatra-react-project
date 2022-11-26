class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :friendly
      t.integer :clean
      t.integer :vibes
      t.boolean :foodthief
      t.string :comment
      t.integer :roommate_id
    end
  end
end
