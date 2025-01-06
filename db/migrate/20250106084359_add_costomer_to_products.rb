class AddCostomerToProducts < ActiveRecord::Migration[8.0]
  def change
    add_reference :products, :costomer, foreign_key: true
  end
end
