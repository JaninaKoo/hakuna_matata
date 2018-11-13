class RenamePictureToPhoto < ActiveRecord::Migration[5.2]
  def change
    rename_column :beaches, :picture, :photo
  end
end
