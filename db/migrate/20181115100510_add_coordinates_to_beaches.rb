class AddCoordinatesToBeaches < ActiveRecord::Migration[5.2]
  def change
    add_column :beaches, :latitude, :float
    add_column :beaches, :longitude, :float
  end
end
