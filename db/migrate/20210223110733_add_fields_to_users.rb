class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
     add_column :users, :first_name, :string, null: false
     add_column :users, :last_name, :string, null: false
     add_column :users, :birth_date, :date, null: false
     add_column :users, :user_type, :string, null: false
     add_column :users, :address, :string, null: false
     add_column :users, :city, :string, null: false
     add_column :users, :zip_code, :string, null: false
  end
end