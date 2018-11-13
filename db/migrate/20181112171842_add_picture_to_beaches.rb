class AddPictureToBeaches < ActiveRecord::Migration[5.2]
  def change
    add_column :beaches, :picture, :string
  end
end
