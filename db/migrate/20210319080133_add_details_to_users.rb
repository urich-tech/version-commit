class AddDetailsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :full_name, :string
    add_column :users, :subscription_seats, :integer
    add_column :users, :address1, :text
    add_column :users, :address2, :text
    add_column :users, :postal_code, :integer
    add_column :users, :city, :string
    add_column :users, :country, :string
  end
end
