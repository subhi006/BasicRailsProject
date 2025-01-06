class CreateCostomers < ActiveRecord::Migration[8.0]
  def change
    create_table :costomers do |t|
        t.string :address
        t.integer :number
        t.timestamps
    end
  end
end
