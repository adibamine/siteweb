class AddImgsToAnnonces < ActiveRecord::Migration
  def change
    add_column :annonces, :imgs, :string
  end
end
