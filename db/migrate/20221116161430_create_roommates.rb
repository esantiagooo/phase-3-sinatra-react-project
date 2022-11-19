class CreateRoommates < ActiveRecord::Migration[6.1]
  def change
    create_table :roommates do |t|
      t.string :firstname
      t.string :lastname
      t.string :gender
      t.integer :age 
    end 
  end
end
