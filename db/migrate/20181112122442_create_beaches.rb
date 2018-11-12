class CreateBeaches < ActiveRecord::Migration[5.2]
  def change
    create_table :beaches do |t|
      t.string :name
      t.string :location
      t.string :description
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
