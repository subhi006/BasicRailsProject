class CreateAddresses < ActiveRecord::Migration[8.0]
  def change
    create_table :addresses do |t|
      t.references :person, null: false, foreign_key: true
      t.string :kind
      t.string :street

      t.timestamps
    end
  end
end
