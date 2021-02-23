class CreatePetReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :pet_reviews do |t|
      t.integer :rating
      t.text :content
      t.references :pet, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
