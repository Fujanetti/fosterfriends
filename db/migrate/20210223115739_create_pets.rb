class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.references :shelter, null: false, foreign_key: true
      t.string :animal_type
      t.float :price_per_day
      t.string :gender
      t.string :breed
      t.string :description

      t.timestamps
    end
  end
end
