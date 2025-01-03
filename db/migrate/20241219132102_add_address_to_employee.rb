class AddAddressToEmployee < ActiveRecord::Migration[8.0]
  def change
    add_column :employees, :address, :string
  end
end
