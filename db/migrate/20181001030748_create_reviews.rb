class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :book_id
      t.integer :user_id
      t.integer :rating
      t.text :content

      t.timestamps
    end
  end
end
